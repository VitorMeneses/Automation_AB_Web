#language: en

  Feature: Efetuar comprar no site automation practise
        Eu como usuário que realizar a compra de um vestido no site Automation Practice

        Background: Preparação de ambiente
              Given que esteja na tela inicial do site Automation Practice

        @comprar
        Scenario: Realizar comprar
          Given que realizo a busca
          When o título da pagina deve ser "Search - My Store"
          And verifico se tem no estoque o item Faded Short Sleeve
          And seleciono o Short de cor laranja
          And valido as seguintes informações do pedido
          | name_product                | quantity | size | color |
          | Faded Short Sleeve T-shirts |   1      | S    | orange|
          And clico no botão Add to cart
          And clico no botão Proceed to checkout
          And devo ser redirecionado para tela "Order - My Store"
          And savo o valor total da compra
          And clico no botão Proceed to checkout authentication
          And efetuo o login com as seguintes credenciais
          | email  | password     |
          | $email | abesteca123* |
          And na tela Adress clico no botão Proceed to checkout
          And devo ser redirecionado para tela "Shipping"
          And aceito o termos do serviço que será prestado
          And na tela Shipping clico no botão Proceed to checkout
          And devo ser redirecionado para tela "Payment"
          And seleciono a opção Pay by bank wire
          And clico no botão I confirm my order
          Then valido as seguintes informações da tela Order Confirmation
          | Message_confirmation                | Amount |
          | Your order on My Store is complete. | $valor |
