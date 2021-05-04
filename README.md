
***Automation Ruby***

**Descrição**
- Automação Web utilizando Ruby, Capybara, Selenium, Site Prism, Rspec e Cucumber.

**Configuração de ambiente**
  - Instalar o Ruby 2.7.3, link: https://rubyinstaller.org/downloads/ ;
  - Instalar a gem bundler: `gem install bundler`
  - Realizar o comando `bundle install`  dentro da pasta do projeto para instalção das gems necessarias;
  - Fazer o download do webdriver Firefox compatível com a versão do browser;
  - incluir o webdriver como variável de ambiente na raiz de instalação do Ruby C:\Ruby27-x64

**Executar o projeto**
  - Arquivo cucumber.yml
      default: -p bdd -p html_report -c     

     - ambiente: prod
          prod --> `Para executar o testes no ambiente de produção, "homolog" para executar no ambiente de homologação.`

     - browser: :selenium
          :selenium --> `Executar os testes com o navegador Firefox`

     - html_report: `--format progress --format html --out=reports/html/features_report.html`
               "--out=`reports/html/features_report.html" caminho onde será salvo o relatório`

  - Arquivos homolog.yml ou prod.yml       
        Url: http://automationpractice.com/
            `Url que será utilizada para executar os teste(s) no ambiente de homologação ou Produção`

**Features do Projeto**
  - create_account.feature
       - `Realizar o cadastro do usuario no site`
    
  - purchase.feature
      - `Realizar a compra de um shorts pesquisando no modo de busca`


**Execução Docker**
  ` Criação de Conteiner e execução - Docker`

  - Na raiz do projeto digitar o comando `sudo docker image build -t <nomedaimagem> . `
    Faça: `sudo docker image build -t ab_ai .`

  - Em seguida executar o comando: `sudo docker run --name <nomedocontainer> ab_ai`
        Faça: `sudo docker run --name container_geckodriver ab_ai`

