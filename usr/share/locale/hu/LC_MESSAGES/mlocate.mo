��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  :   4  M   o     �     �     �     
  7   %  �   ]             !   ?  "   a  ,   �    �  �  �  )   c#  !   �#  2   �#  F   �#  $   )$  )   N$  >   x$  <   �$     �$      %  +   3%     _%     x%  /   �%  3   �%     �%     &     (&  "   B&     e&  3   �&  1   �&  1   �&  4   '     O'  "   j'  E   �'  #   �'  $   �'  "   (     ?(  $   ](  '   �(     �(     �(     	   1   "       *       #                             0                    +                 )   (   '       2             
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
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: MLOCATE 1.0
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2010-09-14 15:56+0200
PO-Revision-Date: 2010-03-15 02:42+0100
Last-Translator: Peter Bojtos <ptr@ulx.hu>
Language-Team: Hungarian <fedora-trans-hu@redhat.com>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 	%'ju bájt a fájlnevekben
 	%'ju bájt a fájl nevekben
 	%'ju bájt tárolva az adatbázisban
 	%'ju bájt tárolva az adatbázisban
 	%'ju mappa
 	%'ju mappa
 	%'ju fájl
 	%'ju fájl
 
Hiba bejelentése: %s.
 --%s kétszer lett megadva --%s felülírná a korábbi parancssori argumentumokat Szerzői jog (C) 2007 Red Hat, Inc. Minden jog fenntartva.
E szoftvert a GPL v.2 alatt terjesztik.

E programot GARANCIA NÉLKÜL adják, amennyire a törvényes keretek engedik. Adatbázis %s:
 I/O hiba „%s” olvasásakor I/O hiba „%s”-ben kereséskor I/O hiba  „%s” írása közben I/O hiba a standard kimenetre írás közben Használat: locate [OPCIÓ]... [MINTA]...
Bejegyzések keresése az mlocate adatbázisban.

  -b, --basename         csak az útvonal alap nevével egyezik
  -c, --count            csak a megtalált bejegyzések kiíratása
  -d, --database DBPATH  DBPATH használata, az alapértelmezett helyett (amelyik
                         %s)
  -e, --existing         csak a megtalált bejegyzések számának kiíratása
  -L, --follow           szimbolikus linkek követése fájl vizsgálatkor
                          (alapértelmezett)
  -h, --help             kiírja ezt a segítséget
  -i, --ignore-case      mellőzi az eltérő eseteket mintaillesztésnél
  -l, --limit, -n LIMIT  korlátozza a kivitelt(vagy megszámolja) a LIMIT bejegyzésekig
  -m, --mmap             mellőzve, visszafelé kompatibilitás miatt
  -P, --nofollow, -H     nem követi a szimbolikus linkeket fájl vizsgálatkor
                         
  -0, --null             szétválasztja a bejegyzéseket  kivitelkor NULlal
  -S, --statistics       nem keres bejegyzéseket, statisztikát ír ki minden bejegyzésről
                         
  -q, --quiet            nem jelent hibát adatbázis olvasáskor
  -r, --regexp REGEXP    REGEXP alapú reguláris keresés a minták helyett
      --regex            kiterjedt reguláris kifejezések mintái
  -s, --stdio            mellőzve, visszafelé kompatibilátás miatt
  -V, --version          verzió információk kiírása
  -w, --wholename        az egész keresési útvonalra illeszkedik (alapértelmezett)
 Használat: updatedb [OPCIÓK]...
Az mlocate adatbázis frissítése.

  -f, --add-prunefs FS           mellőzi FS-t
  -n, --add-prunenames NEVEK     mellőzi a NEVEKet
  -e, --add-prunepaths ÚTVONALAK      mellőzi az ÚTVONALAKat
  -U, --database-root ÚTVONAL        az adatbázisban tárolandó részfa (alapértelmezett: "/")
  -h, --help                     kiírja ezt a segítséget
  -o, --output FILE              adatbázis frissítése (alapértelmezett
                                 „%s”)
      --prune-bind-mounts FLAG   mellőzi a csatolt köteteket (alapértelmezett: „no”)
      --prunefs FS               fájlrendszerek mellőzése az adatbázisból
      --prunenames NEVEK         mappa nevek mellőzése az adatbázisból
      --prunepaths ÚTVONALAK           útvonalak mellőzése az adatbázisból
  -l, --require-visibility FLAG  láthaság ellenőrzése jelentés előtt
                                 (alapértelmezett "yes")
  -v, --verbose                 a fájl kiíratása a megtalált útvonalon
  -V, --version                  verzió információk kiírása

A konfiguráció alapértelmezett értékeinek olvasása innen:
„%s”.
 „%s” nem tűnik mlocate adatbázisnak '%s'-nek ismeretlen változata %u '%s'-nek %u ismeretlen láthatósági jelzése van „%s” zárolás alatt (valószínűleg egy korábbi updatedb miatt) hiányzó `=' a változónév után  a(z) `%s' könyvtárba lépés sikertelen nem lehet megváltoztatni a file csoportját `%s'-ról `%s'-re nem lehet megváltoztatni a(z) „%s” file jogosultságait nem eldobható jogosultságok nem található csoport „%s” nem érhető el a jelenlegi munkakönyvtár „%s” nem zárolható „%s” nem nyitható meg nem lehet ideiglenes fájlt nyitni „%s”-nek nem olvasható két adatbázis a standard inputról nem lehet stat() '%s' a konfiguráció túl nagy hiba „%s” cseréjekor a(z) %zu neve túl hosszú itt: %s fájlnév túl hosszú:  %zu nem érvényes üres könyvtárnév ebben: „%s” nem érvényes reguláris kifejezés „%s”: %s „%s” érvénytelen értéke a --%s parancsnak  `%s' nem érvényes érték a  PRUNE_BIND_MOUNTS-ra hiányzó bezáró „"” nem található minta a keresésre nem opcionális argumentumok nem megengedettek a következővel  --%s nem várt EOF „%s” olvasásakor nem várt adat a változónév után nem várt operandus a parancssoron „%s” ismeretlen változó értékadás hiányzik `=' jel után „%s” változó már definiálva van hiányzó változónév hiba: Sorszám túlcsordulás 