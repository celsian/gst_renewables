��    �      T  �   �      `  D   a  ?   �  I   �      0     Q  &   c     �     �  -   �     �       =         ^     {  �   �     (  a   H  K   �     �  A     !   S  3   u  ?   �  ?   �  H   )  D   r  C   �  E   �  ?   A  >   �  9   �  B   �  <   =  �   z  0   �  F   0  >   w  8   �  I   �  %   9  2   _  O   �  7   �          !     *  M   <  -   �  !   �  >   �  E     C   _  y   �  9     D   W  C   �  D   �  >   %  A   d  !   �  2   �  +   �  *   '  /   R  %   �  &   �  /   �  #   �     #  3   A  2   u  1   �  0   �  ,     .   8  3   g  -   �  0   �  5   �  :   0  1   k  *   �  "   �  $   �  J        [     w  3   �  0   �     �       !   %  $   G      l  -   �  4   �  %   �  $     "   ;  !   ^  F   �  u   �  F   =      �   7   �   )   �   k   �   `   f!  %   �!  &   �!     "  d   "     �"  &   �"  0   �"  .   �"  )   '#  )   Q#  "   {#      �#  (   �#     �#  !   $     %$     9$     V$     h$     ~$     �$     �$     �$     �$  "   �$     �$  q  %  �   �'  v   (  �   �(  C   )      P)  G   q)  >   �)  B   �)  W   ;*  "   �*     �*  [   �*     -+  3   L+  �   �+  3   e,  �   �,  �   ,-  .   �-  g   �-  )   J.  N   t.  E   �.  `   	/  g   j/  y   �/  Y   L0  v   �0  O   1  \   m1  Q   �1  {   2  ^   �2  �   �2  C   �3  |   4  p   �4  J   �4  �   A5  G   �5  L   6  �   \6  h    7     �7     �7  )   �7  �   �7  K   i8  0   �8  {   �8  �   b9  �   �9    �:  k   �;     <  �   �<  �   =  �   �=  {    >  K   �>  c   �>  R   L?  L   �?  L   �?  =   9@  J   w@  Q   �@  C   A  9   XA  c   �A  g   �A  ]   ^B  `   �B  J   C  Z   hC  n   �C  U   2D  U   �D  S   �D  u   2E  e   �E  R   F  9   aF  G   �F  �   �F  '   kG  '   �G  ^   �G  c   H  "   ~H  5   �H  -   �H  >   I  <   DI  T   �I  h   �I  >   ?J  >   ~J  <   �J  <   �J  �   7K  �   �K  t   }L  "   �L  X   M  I   nM  �   �M  �   _N  M   O  [   [O     �O  �   �O  2   �P  V   �P  l   Q  J   }Q  G   �Q  G   R  9   XR  C   �R  J   �R  K   !S  S   mS  5   �S  2   �S  "   *T  ,   MT  /   zT     �T  $   �T  "   �T  B   U  D   RU  1   �U     l   f       K   )   H   j   r              �   B   7   ]      z         I      �   _   s       u          �   /   (   P   Q   1   m   J           +      3   o              q   w   D   ;   E   6   &      T   !   }   <   4   C       '                         h         
       ~       �                      y   e   @   b   ?       �      a               �             U       	          `   ,   t   Y      5              g       *      >       L               d   "       A   �   V   %   8              v   .   $   R       F   k   S   #   M   ^   i             -   [   Z   \      W       :   O   2       x   9   �         X   |      N   p       n                  0   =   c       G       {    
%s: -w option cannot use a relative socket directory specification
 
%s: -w option is not supported when starting a pre-9.1 server
 
%s: this data directory appears to be running a pre-existing postmaster
 
Allowed signal names for kill:
 
Common options:
 
Options for register and unregister:
 
Options for start or restart:
 
Options for stop or restart:
 
Report bugs to <pgsql-bugs@postgresql.org>.
 
Shutdown modes are:
 
Start types are:
   %s init[db]               [-D DATADIR] [-s] [-o "OPTIONS"]
   %s kill    SIGNALNAME PID
   %s promote [-D DATADIR] [-s]
   %s register   [-N SERVICENAME] [-U USERNAME] [-P PASSWORD] [-D DATADIR]
                    [-S START-TYPE] [-w] [-t SECS] [-o "OPTIONS"]
   %s reload  [-D DATADIR] [-s]
   %s restart [-w] [-t SECS] [-D DATADIR] [-s] [-m SHUTDOWN-MODE]
                 [-o "OPTIONS"]
   %s start   [-w] [-t SECS] [-D DATADIR] [-s] [-l FILENAME] [-o "OPTIONS"]
   %s status  [-D DATADIR]
   %s stop    [-W] [-t SECS] [-D DATADIR] [-s] [-m SHUTDOWN-MODE]
   %s unregister [-N SERVICENAME]
   --help                 show this help, then exit
   --version              output version information, then exit
   -D, --pgdata DATADIR   location of the database storage area
   -N SERVICENAME  service name with which to register PostgreSQL server
   -P PASSWORD     password of account to register PostgreSQL server
   -S START-TYPE   service start type to register PostgreSQL server
   -U USERNAME     user name of account to register PostgreSQL server
   -W                     do not wait until operation completes
   -c, --core-files       allow postgres to produce core files
   -c, --core-files       not applicable on this platform
   -l, --log FILENAME     write (or append) server log to FILENAME
   -m SHUTDOWN-MODE   can be "smart", "fast", or "immediate"
   -o OPTIONS             command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
   -p PATH-TO-POSTGRES    normally not necessary
   -s, --silent           only print errors, no informational messages
   -t SECS                seconds to wait when using -w option
   -w                     wait until operation completes
   auto       start service automatically during system startup (default)
   demand     start service on demand
   fast        quit directly, with proper shutdown
   immediate   quit without complete shutdown; will lead to recovery on restart
   smart       quit after all clients have disconnected
  done
  failed
  stopped waiting
 %s is a utility to initialize, start, stop, or control a PostgreSQL server.

 %s: -S option not supported on this platform
 %s: PID file "%s" does not exist
 %s: WARNING: cannot create restricted tokens on this platform
 %s: WARNING: could not locate all job object functions in system API
 %s: another server might be running; trying to start server anyway
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: cannot promote server; server is not in standby mode
 %s: cannot promote server; single-user server is running (PID: %ld)
 %s: cannot reload server; single-user server is running (PID: %ld)
 %s: cannot restart server; single-user server is running (PID: %ld)
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: could not allocate SIDs: %lu
 %s: could not create promote signal file "%s": %s
 %s: could not create restricted token: %lu
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not open PID file "%s": %s
 %s: could not open process token: %lu
 %s: could not open service "%s": error code %d
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %d
 %s: could not remove promote signal file "%s": %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server: exit code was %d
 %s: could not start service "%s": error code %d
 %s: could not unregister service "%s": error code %d
 %s: could not wait for server because of misconfiguration
 %s: could not write promote signal file "%s": %s
 %s: database system initialization failed
 %s: invalid data in PID file "%s"
 %s: missing arguments for kill mode
 %s: no database directory specified and environment variable PGDATA unset
 %s: no operation specified
 %s: no server running
 %s: old server process (PID: %ld) seems to be gone
 %s: option file "%s" must have exactly one line
 %s: out of memory
 %s: server does not shut down
 %s: server is running (PID: %ld)
 %s: service "%s" already registered
 %s: service "%s" not registered
 %s: single-user server is running (PID: %ld)
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized operation mode "%s"
 %s: unrecognized shutdown mode "%s"
 %s: unrecognized signal name "%s"
 %s: unrecognized start type "%s"
 (The default is to wait for shutdown, but not for start or restart.)

 HINT: The "-m fast" option immediately disconnects sessions rather than
waiting for session-initiated disconnection.
 If the -D option is omitted, the environment variable PGDATA is used.
 Is server running?
 Please terminate the single-user server and try again.
 Server started and accepting connections
 The program "%s" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "%s" was found by "%s"
but was not the same version as %s.
Check your installation.
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 WARNING: online backup mode is active
Shutdown will not complete until pg_stop_backup() is called.

 Waiting for server startup...
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d child process was terminated by signal %s could not change directory to "%s" could not find a "%s" to execute could not identify current directory: %s could not read binary "%s" could not read symbolic link "%s" invalid binary "%s" server is still starting up
 server promoting
 server shutting down
 server signaled
 server started
 server starting
 server stopped
 starting server anyway
 waiting for server to shut down... waiting for server to start... Project-Id-Version: PostgreSQL 9.1
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2012-07-10 22:27+0000
PO-Revision-Date: 2012-04-02 19:16+0400
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
Language-Team: Russian <pgtranslation-translators@pgfoundry.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Russian
X-Poedit-Country: RUSSIAN FEDERATION
X-Poedit-SourceCharset: utf-8
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 1.4
 
%s: в параметре -w нельзя указывать относительный путь к каталогу сокетов
 
%s: параметр -w не поддерживается при запуске сервера до версии 9.1
 
%s: похоже, что с этим каталогом уже работает управляющий процесс postmaster
 
Разрешённые сигналы для команды kill:
 
Общие параметры:
 
Параметры для регистрации и удаления:
 
Параметры запуска и перезапуска:
 
Параметры остановки и перезапуска:
 
Об ошибках сообщайте по адресу <pgsql-bugs@postgresql.org>.
 
Режимы остановки:
 
Типы запуска:
   %s init[db]              [-D КАТАЛОГ-ДАННЫХ] [-s] [-o "ПАРАМЕТРЫ"]
   %s kill    СИГНАЛ PID
   %s promote [-D КАТАЛОГ-ДАННЫХ] [-s]
   %s register   [-N ИМЯ-СЛУЖБЫ] [-U ПОЛЬЗОВАТЕЛЬ] [-P ПАРОЛЬ]
                  [-D КАТАЛОГ-ДАННЫХ] [-S ТИП-ЗАПУСКА] [-w] [-t СЕК]
                  [-o "ПАРАМЕТРЫ"]
   %s reload  [-D КАТАЛОГ-ДАННЫХ] [-s]
   %s restart [-w] [-t СЕК] [-D КАТАЛОГ-ДАННЫХ] [-s] [-m РЕЖИМ-ОСТАНОВКИ]
                 [-o "ПАРАМЕТРЫ"]
   %s start   [-w] [-t СЕК] [-D КАТАЛОГ-ДАННЫХ] [-s] [-l ИМЯ-ФАЙЛА]
                 [-o "ПАРАМЕТРЫ"]
   %s status  [-D КАТАЛОГ-ДАННЫХ]
   %s stop    [-W] [-t СЕК] [-D КАТАЛОГ-ДАННЫХ] [-s] [-m РЕЖИМ-ОСТАНОВКИ]
   %s unregister [-N ИМЯ-СЛУЖБЫ]
   --help                 показать эту справку и выйти
   --version              показать версию и выйти
   -D, --pgdata КАТАЛОГ   расположение хранилища баз данных
   -N ИМЯ-СЛУЖБЫ   имя службы для регистрации сервера PostgreSQL
   -P ПАРОЛЬ       пароль учётной записи для регистрации сервера PostgreSQL
   -S ТИП-ЗАПУСКА  тип запуска службы сервера PostgreSQL
   -U ПОЛЬЗОВАТЕЛЬ имя пользователя для регистрации сервера PostgreSQL
   -W                     не ждать завершения операции
   -c, --core-files       указать postgres создавать дампы памяти
   -c, --core-files       неприменимо на этой платформе
   -l, --log ФАЙЛ         записывать (или добавлять) протокол сервера в ФАЙЛ.
   -m РЕЖИМ-ОСТАНОВКИ     может быть "smart", "fast" или "immediate"
   -o ПАРАМЕТРЫ           параметры командной строки для postgres
                         (исполняемого файла сервера PostgreSQL) или initdb
   -p ПУТЬ-К-POSTGRES     обычно не требуется
   -s, --silent           выводить только ошибки, без информационных сообщений
   -t СЕК                 время ожидания при использовании параметра -w
   -w                     ждать завершения операции
   auto       запускать службу автоматически при старте системы (по умолчанию)
   demand     запускать службу по требованию
   fast        закончить сразу, в штатном режиме
   immediate   закончить немедленно, в экстренном режиме; влечёт за собой
              восстановление при перезапуске
   smart       закончить работу после отключения всех клиентов
  готово
  ошибка
  прекращение ожидания
 %s - это утилита для инициализации, запуска, остановки и управления сервером PostgreSQL.

 %s: параметр -S не поддерживается в этой ОС
 %s: файл PID "%s" не существует
 %s: ПРЕДУПРЕЖДЕНИЕ: в этой ОС нельзя создавать ограниченные маркеры
 %s: ПРЕДУПРЕЖДЕНИЕ: не удалось найти все функции для работы с задачами в системном API
 %s: возможно, уже работает другой сервер, всё же пробуем запустить этот сервер
 Запускать %s от имени root нельзя.
Пожалуйста, переключитесь на обычного пользователя (например,
используя "su"), который будет запускать серверный процесс.
 %s: повысить сервер нельзя - он работает не в режиме резерва
 %s: повысить сервер с PID %ld нельзя - он выполняется в монопольном режиме
 %s: перезагрузить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: перезапустить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: не удалось ограничить размер дампа памяти; запрещено жёстким ограничением
 %s: остановить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: не удалось подготовить структуры SID: %lu
 %s: не удалось создать файл "%s" с сигналом к повышению: %s
 %s: не удалось создать ограниченный маркер: %lu
 %s: не удалось найти свой исполняемый файл
 %s: не удалось найти исполняемый файл postgres
 %s: не удалось открыть файл PID "%s": %s
 %s: не удалось открыть маркер процесса: %lu
 %s: не удалось открыть службу "%s": код ошибки %d
 %s: не удалось открыть менеджер служб
 %s: не удалось прочитать файл "%s"
 %s: не удалось зарегистрировать службу "%s": код ошибки %d
 %s: ошибка при удалении файла "%s" с сигналом к повышению: %s
 %s: не удалось отправить сигнал к повышению (PID: %ld): %s
 %s: не удалось отправить сигнал перезагрузки (PID: %ld): %s
 %s: не удалось отправить сигнал %d (PID: %ld): %s
 %s: не удалось отправить сигнал остановки (PID: %ld): %s
 %s: не удалось запустить сервер
Изучите протокол выполнения.
 %s: не удалось запустить сервер, код возврата: %d
 %s: не удалось запустить службу "%s": код ошибки %d
 %s: ошибка при удалении службы "%s": код ошибки %d
 %s: не удалось дождаться сервера вследствие ошибки конфигурации
 %s: не удалось записать файл "%s" с сигналом к повышению: %s
 %s: сбой при инициализации системы баз данных
 %s: неверные данные в файле PID "%s"
 %s: отсутствуют аргументы для режима kill
 %s: каталог баз данных не указан и переменная окружения PGDATA не установлена
 %s: команда не указана
 %s: сервер не работает
 %s: похоже, что старый серверный процесс (PID: %ld) исчез
 %s: в файле параметров "%s" должна быть ровно одна строка
 %s: нехватка памяти
 %s: сервер не останавливается
 %s: сервер работает (PID: %ld)
 %s: служба "%s" уже зарегистрирована
 %s: служба "%s" не зарегистрирована
 %s: сервер работает в монопольном режиме (PID: %ld)
 %s: слишком много аргументов командной строки (первый: "%s")
 %s: нераспознанный режим работы "%s"
 %s: неизвестный режим остановки "%s"
 %s: нераспознанное имя сигнала "%s"
 %s: нераспознанный тип запуска "%s"
 (По умолчанию ожидание имеет место при остановке, но не при (пере)запуске.)

 ПОДСКАЗКА: Параметр "-m fast" может сбросить сеансы принудительно,
не дожидаясь, пока они завершатся сами.
 Если параметр -D опущен, используется переменная окружения PGDATA.
 Запущен ли сервер?
 Пожалуйста, остановите его и повторите попытку.
 Сервер запущен и принимает подключения
 Программа "%s" необходима для %s, но не найдена
в каталоге "%s".
Проверьте вашу установку PostgreSQL.
 Программа "%s" найдена в "%s",
но её версия отличается от версии %s.
Проверьте вашу установку PostgreSQL.
 Превышено время ожидания запуска сервера
 Для дополнительной информации попробуйте "%s --help".
 Использование:
 ВНИМАНИЕ: активен режим копирования "на ходу"
Выключение произойдёт только при вызове pg_stop_backup().

 Ожидание запуска сервера...
 дочерний процесс завершился с кодом возврата %d дочерний процесс завершился с нераспознанным состоянием %d дочерний процесс прерван исключением 0x%X дочерний процесс завершён по сигналу %d дочерний процесс завершён по сигналу %s не удалось перейти в каталог "%s" не удалось найти запускаемый файл "%s" не удалось определить текущий каталог: %s не удалось прочитать исполняемый файл "%s" не удалось прочитать символическую ссылку "%s" неверный исполняемый файл "%s" сервер всё ещё запускается
 сервер повышается
 сервер останавливается
 сигнал отправлен серверу
 сервер запущен
 сервер запускается
 сервер остановлен
 сервер запускается, несмотря на это
 ожидание завершения работы сервера... ожидание запуска сервера... 