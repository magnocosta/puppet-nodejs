puppet-nodejs
============

Um simples módulo Puppet para a instalação e configuração do NodeJs.

####O que ele faz?
  * Instala o NodeJs;
  
####Como Utilizar
  Para utilizar esse módulo basta criar o projeto Vagrant na estrutura abaixo:
  
  <pre>
    --root
      |-- manifests
      |-- modules
      |-- vagranfile
  </pre>
  
  No diretório root do projeto Vagrant, utilize o comando abaixo para baixar e adicionar o módulo a sua pasta de módulos.
    
    git clone https://github.com/magnocosta/puppet-nodejs.git modules/nodejs
    
  Adicione a linha abaixo no seu Vagrantfile, para dizer ao Puppet que a pasta modules possui módulos de extensão para seu projetos.
    
    puppet.module_path = "modules"
    
  Feito isso basta usar o módulo nos seu arquivo de provisionamento com a linha abaixo:
  
    include nodejs::install
    
  E pronto, seu NodeJs será instalado no proximo provisionamento.  \o/ \o/
