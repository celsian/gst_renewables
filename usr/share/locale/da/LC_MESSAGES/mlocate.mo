��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  -   1  O   _     �     �     �     �  3     �   F     �             !   ;  +   ]  �  �  .  a  1   �"     �"  !   �"  6   �"      6#     W#  ,   v#  (   �#     �#     �#  &   $     *$     >$  *   R$  .   }$     �$     �$     �$  +   �$  $   !%     F%     d%     |%  )   �%     �%  %   �%  0   �%  '   .&  "   V&  !   y&     �&  *   �&  $   �&      '     '     	   1   "       *       #                             0                    +                 )   (   '       2             
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
PO-Revision-Date: 2009-07-15 00:54+0200
Last-Translator: Kris Thomsen <lakristho@gmail.com>
Language-Team: Danish <dansk@dansk-gruppen.dk>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 	%'ju byte i filnavne
 	%'ju byte i filnavne
 	%'ju byte brugt til at gemme database
 	%'ju byte brugt til at gemme database
 	%'ju mappe
 	%'ju mapper
 	%'ju fil
 	%'ju filer
 
Rapportér fejl til %s.
 --%s angivet to gange --%s vil overskrive tidligere kommandolinjeargument Ophavsret (C) 2007 Red Hat, Inc. Alle rettigheder forbeholdt.
Denne software er udgivet under GPL v.2.

Dette program leveres uden nogen form for GARANTI tilladt af loven. Database %s:
 I/O-fejl ved læsning af "%s" I/O-fejl ved søgning i "%s" I/O-fejl under skrivning til "%s" I/O-fejl under skrivning til standardoutput Brug: locate [TILVALG]... [MØNSTER]...
Søger efter elementer i en mlocate-database.

  -b, --basename         matcher kun basenavn af stinavne
  -c, --count            skriver kun antal af fundne poster
  -d, --database DBPATH  brug DBPATH istedet for standard database (som er
                         %s)
  -e, --existing         skriver kun poster fra nuværende eksisterende filer
  -L, --follow           følg efterfølgende symbolske henvisninger når der kontrolleres om
                         filens eksistens (standard)
  -h, --help             skriver denne hjælp
  -i, --ignore-case      ignorér sagsudmærkelser når der matches mønstre
  -l, --limit, -n LIMIT  begrænset output (eller tæller) til LIMIT poster
  -m, --mmap             ignoreret, for bagudkompatibilitet
  -P, --nofollow, -H     følg ikke efterfølgende symbolske henvisninger som kontrollerer fil
                         eksistens
  -0, --null             adskiller poster med NUL på output
  -S, --statistics       søger ikke efter poster, skriv statistikker om hver
                         brugte database
  -q, --quiet            rapportér ingen fejlbeskeder om læsning af databaser
  -r, --regexp REGEXP    søg efter grundlæggende regexp REGEXP istedet for mønstre
      --regex            mønstre er udvidede regexps
  -s, --stdio            ignoreret, for bagudkompatibilitet
  -V, --version          skriver versionsinformation
  -w, --wholename        matcher hele stinavnet (standard)
 Brug: updatedb [TILVALG]...
Opdatér en mlocate-database.

  -f, --add-prunefs FS           udelader også FS
  -n, --add-prunenames NAMES     udelader også NAVNE
  -e, --add-prunepaths PATHS     udelader også STIER
  -U, --database-root PATH       undertræet som skal gemmes i database (standard "/")
  -h, --help                     skriver denne hjælp
  -o, --output FILE              database til opdatering (standard
                                 "%s")
      --prune-bind-mounts FLAG   undlader bind-monteringer (standard "no")
      --prunefs FS               filsystemer at udelade fra database
      --prunenames NAMES         mappenavne at udelade fra database
      --prunepaths PATHS         stier at udelade fra database
  -l, --require-visibility FLAG  kontrollerer synlighed før rapportering af filer
                                 (standard "yes")
  -v, --verbose                  skriver stier over filer som de er fundet
  -V, --version                  skriver versionsinformation

Konfigurationen falder tilbage på værdier læst fra
"%s".
 "%s" ser ikke ud til at være en mlocate-database "%s" har ukendt version %u "%s" har ukendt synlighedsflag %u "%s" er låst (sandsynligvis af en tidligere updatedb) "=" forventet efter variabelnavn kan ikke ændre mappe til "%s" kan ikke ændre gruppe på fil "%s" til "%s" kan ikke ændre rettigheder på fil "%s" kan ikke slippe rettigheder kan ikke finde gruppe "%s" kan ikke hente nuværende arbejdsmappe kan ikke låse "%s" kan ikke åbne "%s" kan ikke åbne en midlertidig fil for "%s" kan ikke læse to databaser fra standard input kan ikke stat () "%s" konfiguration er for stor kunne ikke erstatte "%s" længden på filnavn %zu i "%s" er for stor længden på filnavn %zu er for stor ugyldig tomt mappenavn i "%s" ugyldig regexp "%s": %s ugyldig værdi "%s" af --%s ugyldig værdi "%s" fra PRUNE_BIND_MOUNTS mangler lukkende '"' intet mønster til søg efter angivet ikke-tilvalgsargumenter er ikke tilladt med --%s ikke forventet EOF ved læsning af "%s" uventet data efter variabel værdi uventet operand på kommandolinje ukendt variabel "%s" værdi i citationstegn forventet efter "=" variabel "%s" var allerede defineret variabelnavn forventet advarsel: Linjenummeroverløb 