#language: en

Feature: Realizar cadastro na loja virtual
      Eu como usuário quero cadastrar - me na loja virtual automation practice

      Background: Preparação de ambiente
            Given que esteja na tela de cadastro

      @logout @solo
      Scenario: Cadastro de usuário
            When preencho o campo Email address "abastecaai@harakirimail.com"
            And clico no botão Create an account
            And o título da pagina deve ser "Login - My Store"
            And preencho os campos de informação pessoal com os seguintes valores
            |Title |First_name |Last_name  |Email                    |Password    |Date_of_Birth   |
            |Mr.   |Vitor      |Meneses    |abastecaai@harakirimail  |abesteca123*|12/December/1996|
            And preencho os campos de endereço com as seguintes valores
            |First_name|Last_name |Adress          |City         |State|Zip     |Mobile        |References|
            |Vitor     |Meneses   |Street Ipiranga |United States|Utah |84003   |1(516)222-9876|Posto     |
            And clico no botão Register
            Then a página deve conter o seguinte mensagem

