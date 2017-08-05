#!perl -w
# use POSIX;
$0 = 'TM';
# system('c:\nginx\nginx.exe');
system('taskkill /F /im perl.exe /fi "MEMUSAGE ge 10000"');
exec('plackup -D -R d:/htdocs/avs/ --port 8080 --host 127.0.0.1 d:/htdocs/avs/app.psgi');
exit (1);