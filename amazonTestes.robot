*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazonResources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador



*** Test Cases *** 
Caso de Teste 01 - Acesso ao menu "Ofertas do Dia" 
    [Documentation]    Esse teste verifica o menu Venda na Amazon do site da Amazon.com.br
    ...                e verifica o menu "Ofertas do Dia"
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Ofertas do Dia"
    Verificar se aparece a frase "Ofertas e Promoções"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Verificar se aparece a categoria "Dispositivos Amazon e Acessórios"   
    Verificar se aparece a categoria "Automotivo"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Acessar novamente a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Xbox Series S"
    

 
