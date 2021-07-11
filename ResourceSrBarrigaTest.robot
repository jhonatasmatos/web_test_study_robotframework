*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${URL}      https://srbarriga.herokuapp.com/
${BROWSER}  chrome
${INPUT_EMAIL}  id=email
${INPUT_PASSWORD}  id=senha
${BTN_ENTER}  css=button.btn

*** Keywords ***
Acessar o app sr barriga
    Open Browser  url=${URL}  browser=${BROWSER}

Preencher email credenciais inválidas
    Input Text   ${INPUT_EMAIL}  usuario@usuario.com
    Input Text   ${INPUT_PASSWORD}  usuario

Clicar botão entrar
    Click Button  ${BTN_ENTER}

Verificar mensagem de erro "${EXPECTED_MESSAGE}"
    Page Should Contain  text=${EXPECTED_MESSAGE}

Fechar navegador
    Close Browser
