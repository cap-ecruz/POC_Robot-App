*** Settings ***
Documentation  teste de app
Library  AppiumLibrary
Resource  ../page/home.resource
    
*** Keywords ***
#Abrir aplicativo
Fechar modal
  Wait Until Element Is Visible    ${FECHAR_MODAL}  0.5
  Click Element    ${FECHAR_MODAL}

Clicar em comprar menu
  Wait Until Element Is Visible    ${BOTAO_COMPRAR_MENU}  0.5
  Click Element    ${BOTAO_COMPRAR_MENU}

Selecionar compra
  Wait Until Element Is Visible    ${BOTAO_COMPRAR} 0.5
  Click Element    ${BOTAO_COMPRAR}

Inserir CPF
  Wait Until Element Is Visible    ${INSERIR_CPF}  0.5
  Input Text    ${INSERIR_CPF}  39065772871

Clicar em continuar
  Wait Until Element Is Visible    ${BOTAO_CONTINUAR}  0.5
  Click Element    ${BOTAO_CONTINUAR}

Selecionar opção PIX
  Wait Until Element Is Visible    ${PAGAMENTO_PIX}  0.5
  Click Element    ${PAGAMENTO_PIX}

Clicar em pagar com PIX
  Wait Until Element Is Visible    ${BOTAO_PAGAR_PIX}  0.5
  Click Element    ${BOTAO_PAGAR_PIX}

Aguardar confirmação de pagamento
  Wait Until Element Is Visible    ${PAGAMENTO_SUCESSO}  0.5
  Click Element    ${PAGAMENTO_SUCESSO}