��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  4   U  `   �  '   �          /     G  9   ^  �   �     �     �     �  +   �  7   �  �  -    +  ,   @#     m#  3   �#  @   �#  %   $  '   '$  /   O$  0   $  !   �$     �$  1   �$     "%     =%  -   U%  :   �%  $   �%     �%     �%  )   &  "   E&  *   h&  (   �&     �&  +   �&     '     #'  (   ='     f'  )   �'  *   �'     �'  ,   �'  !   (     A(  !   Z(     	   1   "       *       #                             0                    +                 )   (   '       2             
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
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: mlocate
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2010-09-14 15:56+0200
PO-Revision-Date: 2010-04-20 20:16+0200
Last-Translator: Christian Faulhammer <fauli@gentoo.org>
Language-Team: German <fedora-trans-de@redhat.com>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-Language: German
 	%'ju-Byte in Dateinamen
 	%'ju-Bytes in Dateinamen
 	%'ju-Byte benutzt zum Speichern der Datenbank
 	%'ju-Bytes benutzt zum Speichern der Datenbank
 	%'ju-Verzeichnis
 	%'ju-Verzeichnisse
 	%'ju-Datei
 	%'ju-Dateien
 
Fehlerberichte an %s.
 --%s zweimal angegeben --%s wird frühere Befehlszeilen-Argumente überschreiben Copyright (C) 2007 Red Hat, Inc. Alle Rechte vorbehalten.
Diese Software ist unter GPL v.2. veröffentlicht

Dieses Programm wird unter Ausschluss vom Gewährleistung und Garantie bereitgestellt, soweit dies durch Gesetze ermöglicht wird. Datenbank %s:
 E/A-Lese-Fehler `%s' E/A-Fehler bei Suche in `%s' E/A-Fehler während des Schreibens auf `%s' E/A-Fehler während des Schreibens auf Standard-Ausgabe Benutzung: locate [OPTION]... [PATTERN]...
Sucht nach Einträgen in einer mlocate-Datenbank.

  -b, --basename         sucht nur im Dateinamen nach dem Muster
  -c, --count            zeigt nur die Anzahl der gefundenen Einträge an
  -d, --database DBPFAD  benutzt DBPFAD anstatt der Standard-Datenbank (die da wäre
                         %s)
  -e, --existing         zeigt nur Einträge von jetzt existierenden Dateien
  -L, --follow           folgt symbolischen Links, wenn Dateiexistenz überprüft wird
                         (Standard)
  -h, --help             zeige diese Hilfe
  -i, --ignore-case      ignoriert Gross-, Kleinschreibung bei der Suche nach Einträgen
  -l, --limit, -n LIMIT  zeigt nur LIMIT Einträge an
  -m, --mmap             ignoriert, nur für Abwärtskompatibilität
  -P, --nofollow, -H     folgt nicht den symbolischen Links, wenn Dateiexistenz überprüft wird
  -0, --null             trennt Einträge mit ASCII NUL in der Ausgabe
  -S, --statistics       sucht nicht nach Einträgen, zeigt Statistiken über jede
                         benutzte Datenbank an
  -q, --quiet            zeigt keine Fehlermeldungen beim Lesen der Datenbank an
  -r, --regexp REGEXP    sucht nach dem regulären Ausdruck anstatt der Zeichenfolge
      --regex            die Zeichenfolge ist ein erweiterter regulärer Ausdruck
  -s, --stdio            ignoriert, nur für Abwärtskompatibilität
  -V, --version          zeigt Versionsinformationen
  -w, --wholename        sucht im ganzen Pfad-Namen (Standard)
 Benutzung: updatedb [OPTION]...
Aktualisiert eine mlocate-Datenbank.

  -f, --add-prunefs FS           lässt Dateisystem FS aus
  -n, --add-prunenames NAMEN     lässt NAMEN aus
  -e, --add-prunepaths PFADE     lässt PfADE aus
  -U, --database-root PATH       das Unterverzeichnis, um die Datenbank zu speichern (Standard "/")
  -h, --help                     zeigt diese Hilfe
  -o, --output FILE              Datenbank FILE wird aktualisiert (Standard
                                 `%s')
      --prune-bind-mounts FLAG   lässt 'bind mounts' aus (Standard "no")
      --prunefs FS               lässt Dateisystem FS beim Aktualisieren aus
      --prunepaths PFADE         lässt PFADE beim Aktualisieren aus
  -l, --require-visibility FLAG  überprüft Sichtbarkeit vor Aufnahme in die Datenbank
                                 (Standard "yes")
  -v, --verbose                  zeigt Pfade von gefundenen Dateien
  -V, --version                  zeigt Versionsinformationen an

Die Konfigurationseinstellungen werden gelesen aus
`%s'.
 `%s' scheint keine mlocate-Datenbank zu sein `%s' hat unbekannte Version %u `%s' hat eine unbekannte Sichtbarkeitsmarkierung %u `%s' ist blockiert (wahrscheinlich durch ein früheres updatedb) `=' erwartet nach dem Variablen-Namen kann Verzeichnis nicht auf `%s' ändern kann Dateigruppe von `%s' zu `%s' nicht ändern kann Berechtigungen von Datei `%s' nicht ändern kann Zugriffsrechte nicht abgeben kann Gruppe `%s' nicht finden kann aktuelles Arbeitsverzeichnis nicht bestimmen kann `%s' nicht blockieren kann `%s' nicht öffnen kann temporäre Datei für `%s' nicht öffnen kann nicht zwei Datenbanken von der Standard-Eingabe lesen kann stat () `%s' nicht durchführen Konfiguration ist zu lang Fehler beim Ersetzen von `%s' Dateinamen-Länge %zu in `%s' ist zu lang Dateinamen-Länge %zu ist zu lange ungültiger leerer Verzeichnisname in `%s' ungültiger regulärer Ausdruck `%s': %s ungültiger Wert `%s' von --%s ungültiger Wert `%s' von PRUNE_BIND_MOUNTS fehlendes schliessendes `"' Kein Suchmuster angegeben Argumente müssen bei --%s Optionen sein unerwartetes EOF gelesen `%s' Unerwartete Daten nach dem Variablen-Wert unerwarteter Operator auf der Befehlszeile unbekannte Variable `%s' Wert in Anführungszeichen nach `=' erwartet Variable `%s' ist schon definiert Variablen-Namen erwartet Warnung: Zeilen-Nummern-Überlauf 