***Settings***
Library             SeleniumLibrary

***Variables***
${url}                  https://clubes.adventistas.org/br/ 

***Keywords***
Nova sessão
    Open Browser                    ${url}      chrome

Encerrar sessão
    Capture Page Screenshot
    Close Browser