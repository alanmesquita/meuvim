MeuVim
======

Meus arquivos de configuração para o Vim.

Como usar
---------
 *  Coloque o conteúdo do projeto no diretório ~/.vim
 *  Copie o arquivo vimrc para ~/.vimrc (Ou faça um link, que fica melhor: `ln -s ~/.vim/vimrc ~/.vimrc`)
 *  Crie o diretório ~/.vimundo para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
 *  Use seu novo vim =)
 *  Gosta do gVim? Aqui também tem um `gvimrc`, basta copiar ou fazer um link para `~/.gvimrc`
    * Este gvimrc basicamente remove todas as opções de menus e barras de rolagem.
 *  (Deve ser possível usar com o GVim no Windows ou no MacVim, mas aí é com você...)

Dependências
------------

Só algumas dependências para tudo funcionar certinho:

 *  **exuberant-ctags** para o TagList.
    * No Debian instale o pacote `exuberant-ctags`
 *  Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
    *  No Debian instale o pacote `vim-gnome` que resolve.
 *  `python-git`, no Debian
 *  Para as a barra de status `powerline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/

Opções
------

Buffer Explorer : Use `\be` no modo comando

NERDTree : Use o comando `,t`

TagList : Use o comando `,l`

 * `x` Expandir/retrair a janela do TagList
 * `<espaço>` Mostrar a assinatura do método sobre o cursor
 * `u` Atualizar a TagList

CtrlP : Pesquisa de arquivos e diretórios a partir da raiz do projeto, use o comando `,f`

 * `<ctrl+d>` Habilita/desabilita a pesquisa pelo nome do arquivo apenas

Grep : Pesquisa em arquivos a partir da raiz do projeto, use o comando `,g`

Sparkup: A função do Sparkup foi mapeada para `ctrl+d`. (Atualmente está sem o Sparkup...)

Comandos úteis
--------------

 * `%` no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o **matchit** que faz o `%` também funcionar com tags html e outras linguagens.
     Detalhe que ele reconhece até a sintaxe alternativa para `if`, `foreach` e outros do `php`.
