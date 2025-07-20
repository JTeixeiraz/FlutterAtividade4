# Concessionária Flutter

Este é um aplicativo de concessionária de veículos desenvolvido em Flutter. O objetivo deste projeto é aplicar e demonstrar os conceitos de Programação Orientada a Objetos (POO), como herança, encapsulamento e polimorfismo, em um contexto prático de desenvolvimento de aplicativos móveis.

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

- **`lib/`**: Contém todo o código-fonte do aplicativo.
  - **`main.dart`**: Ponto de entrada do aplicativo.
  - **`screens/`**: Contém as telas da aplicação (Login, Home, Perfil, etc.).
  - **`widgets/`**: Contém os widgets reutilizáveis, incluindo a estrutura de herança de veículos.
  - **`services/`**: Contém os serviços, como autenticação.
  - **`images/`**: Contém as imagens utilizadas no projeto.

## Herança de Classes

A estrutura de herança de classes é um dos pilares deste projeto e está implementada na pasta `lib/widgets`. A ideia é ter uma classe base `VeiculoWidget` que define os atributos e comportamentos comuns a todos os veículos, e classes filhas que herdam essas características e adicionam suas próprias especificidades.

### Classe Base: `VeiculoWidget`

A classe abstrata `VeiculoWidget` é a base para todos os tipos de veículos no aplicativo. Ela define os seguintes atributos comuns:

- `nome`: O nome do veículo.
- `preco`: O preço do veículo.
- `desc`: Uma breve descrição do veículo.
- `imagemURl`: A URL da imagem do veículo.
- `onTap`: A função a ser executada quando o widget do veículo for tocado.

Como `VeiculoWidget` é uma classe abstrata, ela não pode ser instanciada diretamente. Em vez disso, ela serve como um modelo para as classes filhas.

### Classes Filhas

As classes filhas herdam de `VeiculoWidget` e adicionam atributos específicos para cada tipo de veículo.

#### `CarroWidget`

A classe `CarroWidget` herda de `VeiculoWidget` e adiciona os seguintes atributos:

- `numAssentos`: O número de assentos do carro.
- `numPortas`: O número de portas do carro.
- `cavalos`: A potência do motor em cavalos.

#### `MotoWidget`

A classe `MotoWidget` herda de `VeiculoWidget` e adiciona o seguinte atributo:

- `cilindradas`: A cilindrada do motor da moto.

#### `CaminhaoWidget`

A classe `CaminhaoWidget` herda de `VeiculoWidget` e adiciona os seguintes atributos:

- `numAssentos`: O número de assentos do caminhão.
- `numPortas`: O número de portas do caminhão.
- `capacidadeDeCarga`: A capacidade de carga do caminhão em quilogramas.

### Exemplo de Uso

Abaixo está um exemplo de como a herança é utilizada no código:

```dart
// Classe base abstrata
abstract class VeiculoWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String desc;
  final String imagemURl;
  final VoidCallback onTap;

  const VeiculoWidget({
    required this.nome,
    required this.preco,
    required this.desc,
    required this.imagemURl,
    required this.onTap,
  });
}

// Classe filha que herda de VeiculoWidget
class CarroWidget extends VeiculoWidget {
  final int numAssentos;
  final int numPortas;
  final int cavalos;

  const CarroWidget({
    required this.numAssentos,
    required this.numPortas,
    required this.cavalos,
    required super.nome,
    required super.preco,
    required super.desc,
    required super.imagemURl,
    required super.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Implementação do widget...
  }
}
```

## Como Executar o Projeto

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/JTeixeiraz/FlutterAtividade4
    ```
2.  **Entre na pasta do projeto:**
    ```bash
    cd seu-repositorio
    ```
3.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```
4.  **Execute o aplicativo:**
    ```bash
    flutter run
    ```

## Contato

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato.

**João Pedro** - [https://github.com/JTeixeiraz](https://github.com/JTeixeiraz)

**Lucas Diniz** - [https://github.com/LucasDinizS](https://github.com/LucasDinizS)
