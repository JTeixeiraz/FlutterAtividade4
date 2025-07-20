import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthServices extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthServices() {
    _authCheck();
  }

  _authCheck(){
    _auth.authStateChanges().listen((User? user){
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUser(){
    usuario = _auth.currentUser;
    notifyListeners();
  }

  Future<void>registrar(String email, String senha, String nomeDeUsuario) async{
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: senha
      );
      if (userCredential.user != null) {
        await userCredential.user!.updateDisplayName(nomeDeUsuario);
        await _firestore.collection('usuarios').doc(userCredential.user!.uid).set({
          'nomeDeUsuario':nomeDeUsuario,
          'email':email
        });
        _getUser();
      }else{
        throw AuthException("Erro desconhecido");
      }
    }on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException("Senha muito fraca");
      }else if(e.code == 'email-already-in-use'){
        throw AuthException("Este email já está sendo utilizado por outro usuario.");
      } else if (e.code == 'invalid-email') {
        throw AuthException("O formato do email é inválido.");
      }
      throw AuthException(e.message ?? "Ocorreu um erro desconhecido durante o registro.");
    } catch (e) {
      throw AuthException("Não foi possível registrar o usuário. Tente novamente.");
    }
  }

  Login(String email, String senha) async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getUser();
    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException("Email não encontrado.");
      }else if(e.code == 'wrong-password'){
        throw AuthException("Senha incorreta");
      }
    }
  }

  logout() async{
    await _auth.signOut();
    _getUser();
  }

  Future<String?> getUsername() async {
    if (usuario != null) {
      try {
        DocumentSnapshot userDoc = await _firestore.collection('usuarios').doc(usuario!.uid).get();
        if (userDoc.exists) {
          return userDoc.get('nomeDeUsuario');
        }
      } catch (e) {
        print("Erro ao buscar nome de usuário no Firestore: $e");
        return null;
      }
    }
    return null;
  }
}


/*Pedi para a IA me dar um marco de como utilizar o nome de usuario em outras telas. Deixo aqui para ver depois */

/*
Como usar getUsername() na sua UI (por exemplo, na tela principal):
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Se você usa Provider
import 'package:seu_app/services/auth_services.dart'; // Caminho para o seu AuthServices

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _username;

  @override
  void initState() {
    super.initState();
    _fetchUsername();
  }

  Future<void> _fetchUsername() async {
    final authService = Provider.of<AuthServices>(context, listen: false); // Ou como você acessa seu AuthServices
    String? fetchedUsername = await authService.getUsername();
    setState(() {
      _username = fetchedUsername;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Você também pode obter o email diretamente do usuário logado
    final authService = Provider.of<AuthServices>(context);
    final userEmail = authService.usuario?.email;

    return Scaffold(
      appBar: AppBar(
        title: Text("Bem-vindo!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Email: ${userEmail ?? 'Não Logado'}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            _username == null
                ? CircularProgressIndicator()
                : Text(
                    "Nome de Usuário: ${_username}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authService.logout();
                // Navegar para a tela de login
              },
              child: Text("Sair"),
            ),
          ],
        ),
      ),
    );
  }
}
Observações Importantes:
Regras de Segurança do Firestore: No seu Firestore, você tem allow read, write: if false; . Isso significa que NINGUÉM pode ler ou escrever no seu Firestore. Você precisará ajustar as regras para permitir que os usuários leiam e escrevam nos próprios documentos. Um exemplo de regra para que usuários possam ler e escrever apenas nos próprios dados seria:
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /usuarios/{userId} {
      allow read, update, delete: if request.auth.uid == userId;
      allow create: if request.auth.uid != null; // Permite criar o próprio documento
    }
  }
}
 */