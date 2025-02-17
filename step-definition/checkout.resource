*** Settings ***
Documentation  teste de app
Library  AppiumLibrary
Resource  ../page/home.resource
    
*** Keywords ***
Fechar modal
  Wait Until Element Is Visible    ${FECHAR_MODAL}  5000
  Click Element    ${FECHAR_MODAL}

Clicar em comprar
  Wait Until Element Is Visible    ${BOTAO_COMPRAR}  5000
  Click Element    ${BOTAO_COMPRAR}