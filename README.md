# Prova de Conceito: Testes Automatizados para Aplicativo Flutter

Este repositório demonstra a automação de testes para um aplicativo Flutter utilizando **RobotFramework** e **Appium**. O objetivo dessa PoC é validar a integração dessas ferramentas para testes automatizados em um aplicativo mobile Flutter.

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **RobotFramework**: Framework de testes de automação, extensível e de código aberto.
- **Appium**: Ferramenta para automação de testes em aplicativos móveis nativos.
- **Appium Flutter Driver**: Driver para automação de aplicativos Flutter com o Appium.
- **Vysor**: Ferramenta para espelhamento de dispositivos móveis no computador.
- **Visual Studio Code**: IDE recomendada para o desenvolvimento e execução de testes.

## Pré-Requisitos

1. **Git** - Sistema de controle de versão
2. **Flutter** - SDK para desenvolvimento de aplicativos Flutter.
3. **Java 11** - Requerido para o Appium.
4. **Python 3.12** - Linguagem utilizada para scripts do RobotFramework.
5. **Android Studio** - Para emuladores e ferramentas do Android.
6. **Node.js** - Requerido para instalação do Appium.
7. **Visual Studio Code** - IDE recomendada.

### Instalação

1. **Instalar o Flutter**:
   - Siga a documentação oficial para instalar o Flutter: [Instalação do Flutter](https://flutter.dev/docs/get-started/install)
   
2. **Instalar o Java 11**:
   - Baixe e instale o Java 11. Não se esqueça de configurar as variáveis de ambiente: `JAVA_HOME` e `Path`.

3. **Instalar o Python 3.12**:
   - Baixe e instale o Python em: [Python Downloads](https://www.python.org/downloads/)

4. **Instalar o Appium**:
   - Instale o Appium via npm:
     ```bash
     npm install -g appium
     ```
   - Também é necessário instalar o **Appium Flutter Driver**:
     ```bash
     npm install -g appium-flutter-driver
     ```

5. **Instalar o RobotFramework e AppiumLibrary**:
   - Instale o RobotFramework:
     ```bash
     pip install robotframework
     ```
   - Instale a biblioteca AppiumLibrary para o RobotFramework:
     ```bash
     pip install robotframework-appiumlibrary
     ```

6. **Instalar o Vysor** (para espelhamento de dispositivos):
   - Baixe e instale o Vysor para visualizar seu emulador ou dispositivo físico.

### Configuração do Projeto

1. **Clonar o Repositório**:
   - Clone o repositório em seu diretório local:
     ```bash
     git clone https://github.com/usuario/nome-do-repositorio.git
     ```

2. **Instalar Dependências do Flutter**:
   - No diretório do seu projeto Flutter, execute:
     ```bash
     flutter pub get
     ```

3. **Adicionar o Flutter Driver ao Projeto**:
   - No arquivo `pubspec.yaml`, adicione a dependência do Flutter Driver:
     ```yaml
     dev_dependencies:
       flutter_test:
         sdk: flutter
       flutter_driver:
         sdk: flutter
     ```
   - Em seguida, no arquivo `main.dart`, adicione:
     ```dart
     import 'package:flutter_driver/driver_extension.dart';

     void main() {
       enableFlutterDriverExtension();
       runApp(MyApp());
     }
     ```

4. **Configuração do Appium**:
   - No Appium, configure o driver para Flutter com a seguinte configuração JSON no Appium Inspector:
     ```json
     {
       "platformName": "Android",
       "appium:automationName": "Flutter",
       "appium:deviceName": "emulator-5554",
       "appium:app": "path/to/your/flutter_app.apk",
       "appium:appPackage": "com.example.flutter_app",
       "appium:appActivity": "com.example.flutter_app.MainActivity",
       "appium:noReset": true
     }
     ```

### Executando os Testes

1. **Rodar o Servidor Appium**:
   - Inicie o servidor Appium com o comando:
     ```bash
     appium
     ```

2. **Executar os Testes RobotFramework**:
   - No diretório do projeto, rode os testes com o comando:
     ```bash
     robot tests/
     ```

3. **Verificar os Logs**:
   - Os logs e capturas de tela serão salvos no diretório `logs/`.
