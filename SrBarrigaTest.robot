*** Settings ***

Resource  ResourceSrBarrigaTest.robot

*** Test Cases ***

Caso de Teste 01: Preencher credenciais inválidas
    Acessar o app sr barriga
    Preencher email credenciais inválidas
    Clicar botão entrar
    Verificar mensagem de erro "Problemas com o login do usuário"
    Fechar navegador
