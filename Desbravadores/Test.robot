***Settings***
Resource            Config.robot
Test Setup          Nova sessão
Test Teardown       Encerrar sessão


***Test Cases***
CT001 - Validar busca Mapa Clubes por Cidade Osasco
    Select From List By Value       id:cod_pais         1
    Sleep                           5
    Select From List By Value       id:cod_estado       26
    Sleep                           5 
    Select From List By Value       id:cod_cidade       5095
    Sleep                           5
    Click Element                   id = ListaCidade
    Sleep                           5
    Click Link                      xpath=//a[@href="https://clubes.adventistas.org/br/city/5095/clubs/map/pathfinder/"]
    Sleep                           5

CT002 - Quem são os Desbravadores?
    Click Link                      xpath=//a[@href="https://clubes.adventistas.org/br/about-pathfinder/"]
    Page Should Contain             Vibram com atividades 
    
CT003 - Acessar o Site e Cadastrar o Site com Login e Senha Invalido
    Click Link                      xpath=//a[@href="https://eventosja.adventistas.org/br/"]
    Maximize Browser Window
    Click Link                      xpath=//a[@href="https://eventosja.adventistas.org/br/event/s-ja/16199/mmo/"]
    Input text                      id:doc              12345678956
    Input text                      id:ano_usuario      1990
    Sleep                                               5
    #Click Element                   //a[contains(text(),'Entrar')]
    Click Element                    //*[contains(text(),'Entrar')]
    #Click Element                   //a[contains(@class,'btn btn-success')]
    Handle Alert                    ACCEPT
    Sleep                                               5