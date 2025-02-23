# Cat Facts

Este projeto tem como finalidade atender a parte 3 e 4 do desafio. Este projeto Flutter consome a API de [Cat Facts](https://catfact.ninja/fact) utilizando o padrão MVVM e princípios de Clean Code. O app exibe uma mensagem com um fato sobre gatos, apresenta um indicador de carregamento enquanto a requisição é realizada e trata possíveis erros, como problemas de conexão.

## Estrutura do Projeto

A estrutura de pastas está organizada da seguinte forma:

```
lib/
├── main.dart                   # Ponto de entrada do aplicativo.
├── models/
│   └── cat_fact.dart           # Modelo que representa os dados do fato.
├── repositories/
│   └── cat_fact_repository.dart# Repositório para acesso à API.
├── viewmodels/
│   └── cat_fact_viewmodel.dart # ViewModel que gerencia a lógica e o estado.
└── views/
    └── cat_fact_page.dart      # Tela que exibe os fatos sobre gatos.
```

## Pré-requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado e configurado.
- [Visual Studio Code](https://code.visualstudio.com/) (ou outro editor de sua preferência).
- Extensões do Flutter e Dart instaladas no VS Code.

## Dependências

As dependências utilizadas estão definidas no arquivo `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.4
  provider: ^6.0.0
```

Após clonar ou criar o projeto, execute:

```bash
flutter pub get
```

para instalar todas as dependências.

## Como Executar o Projeto

1. **Abra o projeto no VS Code**  
   Utilize a opção de abrir pasta e selecione a raiz do projeto.

2. **Conecte um dispositivo ou inicie um emulador**  
   Você pode utilizar um dispositivo físico conectado ou iniciar um emulador pelo Android Studio/VS Code.

3. **Execute o aplicativo**  
   Pressione <kbd>F5</kbd> ou utilize o menu **Run > Start Debugging** no VS Code.

O aplicativo iniciará e exibirá uma tela com um fato sobre gatos. Durante a requisição, um indicador de carregamento será exibido e, em caso de erro (como falta de conexão), uma mensagem de erro será apresentada.

## Conceitos Aplicados

- **MVVM (Model-View-ViewModel):**  
  A lógica de negócio e acesso à API estão isoladas em camadas separadas, facilitando a manutenção e escalabilidade do código.

- **Clean Code:**  
  O código segue boas práticas de nomenclatura, separação de responsabilidades e tratamento de erros, melhorando a legibilidade e a testabilidade.

- **Provider:**  
  Utilizado para gerenciamento de estado e comunicação entre a View e a ViewModel.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias e correções.

## Licença

Este projeto é open source e está disponível sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais informações.
