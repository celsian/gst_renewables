��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  D   ^  c   �  &         .     O     h  @   �  �   �     x     �      �  !   �  2   �  q    �  �  .   B$  $   q$  2   �$  L   �$  (   %  (   ?%  5   h%  2   �%     �%     �%  1   &     B&     [&  /   q&  6   �&  "   �&  -   �&     )'  8   A'  0   z'  +   �'  %   �'     �'  )   (     D(  -   T(  7   �(     �(  .   �(  '   )     *)  $   F)  !   k)     �)  %   �)     	   1   "       *       #                             0                    +                 )   (   '       2             
   &                       3   .      !                         ,           -                 /   %                         $    	%'ju byte in file names
 	%'ju bytes in file names
 	%'ju byte used to store database
 	%'ju bytes used to store database
 	%'ju directory
 	%'ju directories
 	%'ju file
 	%'ju files
 
Report bugs to %s.
 --%s specified twice --%s would override earlier command-line argument Copyright (C) 2007 Red Hat, Inc. All rights reserved.
This software is distributed under the GPL v.2.

This program is provided with NO WARRANTY, to the extent permitted by law. Database %s:
 I/O error reading `%s' I/O error seeking in `%s' I/O error while writing to `%s' I/O error while writing to standard output Usage: locate [OPTION]... [PATTERN]...
Search for entries in a mlocate database.

  -b, --basename         match only the base name of path names
  -c, --count            only print number of found entries
  -d, --database DBPATH  use DBPATH instead of default database (which is
                         %s)
  -e, --existing         only print entries for currently existing files
  -L, --follow           follow trailing symbolic links when checking file
                         existence (default)
  -h, --help             print this help
  -i, --ignore-case      ignore case distinctions when matching patterns
  -l, --limit, -n LIMIT  limit output (or counting) to LIMIT entries
  -m, --mmap             ignored, for backward compatibility
  -P, --nofollow, -H     don't follow trailing symbolic links when checking file
                         existence
  -0, --null             separate entries with NUL on output
  -S, --statistics       don't search for entries, print statistics about each
                         used database
  -q, --quiet            report no error messages about reading databases
  -r, --regexp REGEXP    search for basic regexp REGEXP instead of patterns
      --regex            patterns are extended regexps
  -s, --stdio            ignored, for backward compatibility
  -V, --version          print version information
  -w, --wholename        match whole path name (default)
 Usage: updatedb [OPTION]...
Update a mlocate database.

  -f, --add-prunefs FS           omit also FS
  -n, --add-prunenames NAMES     omit also NAMES
  -e, --add-prunepaths PATHS     omit also PATHS
  -U, --database-root PATH       the subtree to store in database (default "/")
  -h, --help                     print this help
  -o, --output FILE              database to update (default
                                 `%s')
      --prune-bind-mounts FLAG   omit bind mounts (default "no")
      --prunefs FS               filesystems to omit from database
      --prunenames NAMES         directory names to omit from database
      --prunepaths PATHS         paths to omit from database
  -l, --require-visibility FLAG  check visibility before reporting files
                                 (default "yes")
  -v, --verbose                  print paths of files as they are found
  -V, --version                  print version information

The configuration defaults to values read from
`%s'.
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: mlocate.tip
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2010-09-14 15:56+0200
PO-Revision-Date: 
Last-Translator: Rui Gouveia <rui.gouveia@globaltek.pt>
Language-Team: pt <fedora-trans-pt@redhat.com>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Portuguese
X-Poedit-Country: PORTUGAL
Plural-Forms: nplurals=2; plural=(n != 1);
 	%'ju byte no nome dos ficheiros
 	%'ju bytes no nome dos ficheiros
 	%'ju byte utilizado para guardar base de dados
 	%'ju bytes utilizados para guardar base de dados
 	%'ju directório
 	%'ju directórios
 	%'ju ficheiro
 	%'ju ficheiros
 
Reporte erros para %s.
 --%s especificado duas vezes --%s vai sobrepor-se a argumentos de linha de comando anteriores Copyright (C) 2007 Red Hat, Inc. All rights reserved.
This software is distributed under the GPL v.2.

This program is provided with NO WARRANTY, to the extent permitted by law. Base de dados %s:
 erro de I/O ao ler `%s' erro de I/O ao pesquisar em `%s' erro de I/O ao escrever para `%s' erro de I/O ao escrever para a saída por omissão Utilização: locate [OPÇÂO]... [PADRÃO]...
Pesquisar por registos numa base de dados mlocate.

  -b, --basename         corresponder apenas com a base do nome dos caminhos
  -c, --count            mostrar apenas o número de entradas encontradas
  -d, --database DBPATH  utilizar DBPATH em vez da base de dados standard (que é
                         %s)
  -e, --existing         mostrar apenas registos para ficheiros existentes actualmente
  -L, --follow           seguir links simbólicos quando verifica a existência de ficheiros
                         (valor por omissão)
  -h, --help             mostrar esta ajuda
  -i, --ignore-case      ignorar capitalização durante a correspondência com padrões
  -l, --limit, -n LIMITE  limitar resultados (ou contadores) a LIMITE registos
  -m, --mmap             ignorado, para compatibilidade para trás
  -P, --nofollow, -H     não seguir links simbólicos quando verifica a existência de
                         ficheiros
  -0, --null             separar registos com NUL na saída
  -S, --statistics       não pesquisar por registos, mostrar estatísticas acerca de cada
                         base de dados utilizada
  -q, --quiet            não reportar mensagens de erro acerca a leitura de base de dados
  -r, --regexp REGEXP    pesquisar pela expressão regular básica REGEXP em vez de padrões
      --regex            padrões são expressões regulares estendidas
  -s, --stdio            ignorado, para compatibilidade para trás
  -V, --version          mostrar informação de versão
  -w, --wholename        corresponder com caminho completo (valor por omissão)
 Utilização: updatedb [OPÇÕES]...
Actualizar uma base de dados mlocate.

  -f, --add-prunefs FS           omitir também FS
  -n, --add-prunenames NOMES     omitir também NOMES
  -e, --add-prunepaths CAMINHOS     omitir também CAMINHOS
  -U, --database-root CAMINHO       a sub-árvore para armazenar a                                   base de dados (por omissão "/")
  -h, --help                     mostrar esta ajuda
  -o, --output FILE              base de dados a actualizar (por omissão
                                 `%s')
      --prune-bind-mounts MARCA   omitir pontos de montagem (por omissão "no")
      --prunefs FS               sistemas de ficheiros a omitir da base de dados
      --prunenames NOMES         nomes de directórios a omitir da base de dados
      --prunepaths CAMINHOS     caminhos a omitir da base de dados
  -l, --require-visibility MARCA  verificar visibilidade antes de reportar ficheiros
                                 (por omissão "yes")
  -v, --verbose                  mostrar caminhos de ficheiros assim que são encontrados
  -V, --version                  mostrar informação da versão

Os valores da configuração por omissão são lidos de
`%s'.
 `%s' não parece ser uma base de dados mlocate `%s' tem uma versão desconhecida %u `%s' tem uma marca de visibilidade desconhecida %u `%s' está bloqueado (provavelmente por uma instância do updatedb anterior) `=' esperado depois do nome de variável incapaz de alterar directório para `%s' incapaz de alterar o grupo do ficheiro `%s' para `%s' incapaz de alterar as permissões do ficheiro `%s' incapaz de largar privilégios incapaz de encontrar grupo `%s' incapaz de obter o directório de trabalho actual Incapaz de bloquear '%s' incapaz de abrir `%s' incapaz de abrir ficheiro temporário para `%s' incapaz de ler duas bases de dados da entrada standard incapaz de executar o stat () `%s' o ficheiro de configuração é grande demais erro ao substituir `%s' tamanho do nome do ficheiro %zu em `%s' é grande demais tamanho do nome do ficheiro %zu é grande demais nome de directório vazio inválido em `%s' expressão regular inválida `%s': %s valor inválido `%s' de --%s valor inválido `%s' de PRUNE_BIND_MOUNTS falta fecho `"' sem padrão a ser procurado para especificado argumentos extra-opções não são permitidos com --%s EOF inesperado ao ler %s dados inesperados depois do valor da variável operando inesperado na linha de comando Variável desconhecida `%s' valor entre aspas esperado após `=' variável `%s' já está definida esperado nome de variável Aviso: Número da linha excede limite 