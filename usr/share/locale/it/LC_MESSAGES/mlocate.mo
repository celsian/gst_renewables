��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  3   b  Y   �     �          (     @  D   [  �   �     ]     k     �  *   �  7   �  P    �  Y  *   $  #   G$  -   k$  :   �$  '   �$  '   �$  4   $%  -   Y%     �%  "   �%  *   �%     �%     &  .   '&  2   V&     �&  "   �&     �&  6   �&  /   '  )   @'     j'     �'  +   �'     �'  2   �'  2   (  %   K(  ,   q(  (   �(     �(  %   �(  "   )     +)  (   D)     	   1   "       *       #                             0                    +                 )   (   '       2             
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
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: mlocate.tip.it
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2010-09-14 15:56+0200
PO-Revision-Date: 2008-09-24 03:30+0200
Last-Translator: Francesco Tombolini <tombo@adamantio.net>
Language-Team: Italiano <fedora-trans-it@redhat.com>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms:  nplurals=2; plural=(n != 1);
X-Generator: KBabel 1.11.4
 	%'ju byte nei nomi file
 	%'ju byte nei nomi file
 	%'ju byte usati per conservare il database
 	%'ju byte usati per conservare il database
 	%'ju cartella
 	%'ju cartella
 	%'ju file
 	%'ju file
 
Riportare i bug a %s.
 --%s specificato due volte --%s sovrascriverebbe un precedente argomento della linea di comando Copyright (C) 2007 Red Hat, Inc. Tutti i diritti riservati.
Questo software è distribuito sotto la GPL v.2.

Questo programma viene fornito SENZA NESSUNA GARANZIA, nei limiti della legge. Database %s:
 errore di I/O leggendo `%s' ricerca di errore I/O in `%s' errore di I/O durante la scrittura su `%s' erore di I/O durante la scrittura sullo standard output Utilizzo: locate [OPZIONE]... [PATTERN]...
Ricerca di voci in un database mlocate.

  -b, --basename         cerca solo il basename nei nomi di path
  -c, --count            scrivi solo il numero di voci trovate
  -d, --database DBPATH  utilizza DBPATH invece del database predefinito (che è
                         %s)
  -e, --existing         scrivi solo le voci per i file attualmente esistenti
  -L, --follow           seguire il link simbolico quando si controlla
                         l'esistenza del file
  -h, --help             scrivi questo messaggio di aiuto
  -i, --ignore-case      ignora le differenze maiuscolo/minuscolo quando i
                         pattern corrispondono
  -l, --limit, -n LIMIT  limita il numero di elementi ritornati (o il conteggio) al valore LIMIT
  -m, --mmap             ignorato, per compatibilità all'indietro
  -P, --nofollow, -H     non seguire i link simbolici quando si controlla
                         l'esistenza dei file
  -0, --null             separare le voci con NULL in uscita
  -S, --statistics       non effettuare ricerche di voci, scrivi le statistiche
                         su ogni database usato
  -q, --quiet            non riportare messaggi di errore sui database letti
  -r, --regexp REGEXP    ricerca di regexp di base REGEXP invece del pattern
      --regex            i pattern vengono intesi come regexp
  -s, --stdio            ignorato, per compatibilità all'indietro
  -V, --version          scrivi informazioni di versione
  -w, --wholename        corrispondenza per l'intero nome del path
                         (predefinito)
 Utilizzo: updatedb [OPZIONE]...
Aggiorna un database mlocate.

  -f, --add-prunefs FS           omette anche FS
  -n, --add-prunenames NOMI      omette anche i NOMI
  -e, --add-prunepaths PERCORSI  omette anche i PERCORSI
  -U, --database-root PERCORSO   l'albero di directory in cui salvare il
                                 database (predefinito "/")
  -h, --help                     visualizza questo aiuto
  -o, --output FILE              database da aggiornare (predefinito
                                 `%s')
      --prune-bind-mounts FLAG   omette i bind mount (predefinito "no")
      --prunefs FS               filesystem da omettere dal database
      --prunenames NAMES         nomi di directory da omettere dal
                                 database
      --prunepaths PATHS         percorsi da omettere dal database
  -l, --require-visibility FLAG  controlla visibilità prima di riportare i
                                 file (predefinito "yes")
  -v, --verbose                  scrivi i percorsi dei file così come sono
                                 trovati
  -V, --version                  mostra informazioni di versione

La configurazione predefinita si basa sui valori letti da
`%s'.
 `%s' non sembra essere un database mlocate `%s' ha una versione %u sconosciuta `%s' ha un flag di visibilità %u sconosciuto `%s' è bloccato (probabilmente da un updatedb precedente) atteso `=' dopo il nome della variabile impossibile cambiare la cartella a `%s' impossibile cambiare il gruppo del file `%s' in `%s' impossibile cambiare i permessi del file `%s' impossibile copiare i privilegi impossibile trovare il gruppo `%s' impossibile ottenere la cartella di lavoro impossibile bloccare `%s' impossibile aprire `%s' impossibile aprire un file temporaneo per `%s' impossibile leggere due database da standard input can not stat () `%s' la configurazione è troppo grande errore sostituendo `%s' la lunghezza del nome file %zu in `%s' è troppo larga la lunghezza del nome file %zu è troppo grande nome di cartella vuota non valida in `%s' regexp `%s' non valido: %s valore `%s' non valido di --%s valore non valido `%s' di PRUNE_BIND_MOUNTS mancata chiusura `"' non è stato specificato nessun pattern da cercare argomenti non-opzioni non sono consentiti con --%s inaspettato EOF nella lettura di `%s' dato inatteso dopo il valore della variabile operando inatteso sulla linea di comando variabile sconosciuta `%s' valore fra virgolette atteso dopo `=' la variabile `%s' è già definita atteso nome di variabile attenzione: Overflow del numero di linea 