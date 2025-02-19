*** Settings ***
Resource  ../config/android_capabilities.resource
Resource  ../step-definition/checkout.resource

*** Test Cases ***
Checkout do usuario
  Abrir aplicativo
  Fechar modal
  Clicar em comprar menu
  Selecionar compra
  Inserir CPF
  Clicar em continuar
  Selecionar opção PIX
  Clicar em pagar com PIX
  Aguardar confirmação de pagamento
  Fechar aplicativo