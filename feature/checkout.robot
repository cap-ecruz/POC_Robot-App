*** Settings ***
Resource  ../config/android_capabilities.resource
Resource  ../step-definition/checkout.resource

*** Test Cases ***
Checkout do usuario
  Abrir aplicativo
  Fechar modal
  Clicar em comprar