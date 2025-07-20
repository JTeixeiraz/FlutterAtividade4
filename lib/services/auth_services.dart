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