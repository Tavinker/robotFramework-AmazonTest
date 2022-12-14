*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                               https://www.amazon.com.br/
${MENU_OFERTAS_DO_DIA}              //a[contains(.,'Ofertas do Dia')]
${H1_OFERTAS_E_PROMOCOES}            //h1[@class='a-size-extra-large a-spacing-micro'][contains(.,'Ofertas e Promoções')]
${TEXTO_H1_OFERTAS_E_PROMOCOES}      Ofertas e Promoções
${CAMPO_DE_PESQUISA}                 //input[contains(@type,'text')]
${BOTAO_PESQUISAR}                   //input[contains(@type,'submit')]
${RESULTADO_PESQUISA}                nav-search-submit-button



*** Keywords ***
Abrir o navegador    
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser








Acessar a home page do site Amazon.com.br   
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_OFERTAS_DO_DIA}


Entrar no menu "Ofertas do Dia"
    Click Element    locator=${MENU_OFERTAS_DO_DIA}


Verificar se aparece a frase "Ofertas e Promoções"
    Wait Until Page Contains    text=${TEXTO_H1_OFERTAS_E_PROMOCOES}
    Wait Until Element Is Visible    locator=${H1_OFERTAS_E_PROMOCOES}


Verificar se o título da página fica "${TITULO}" 
    Title Should Be    title=${TITULO} 


Verificar se aparece a categoria "${CATEGORIA}"
    Wait Until Element Is Visible    locator=//span[@class='GridPresets-module__gridPresetsLargeItem_2xPgV2VoJCncjGPj18in1h'][contains(.,'${CATEGORIA}')]
    
    
# Verificar se aparece a categoria "${CATEGORIA}"
#     Wait Until Element Is Visible    locator=//span[@class='GridPresets-module__gridPresetsLargeItem_2xPgV2VoJCncjGPj18in1h'][contains(.,'Automotivo')]









Acessar novamente a home page do site Amazon.com.br   
    Go To    url=${URL}
    

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=Xbox Series S

Clicar no botão de pesquisa
    Click Element    locator=${BOTAO_PESQUISAR}


Verificar o resultado da pesquisa, listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]