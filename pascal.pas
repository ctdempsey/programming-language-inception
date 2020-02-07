Program Main;

uses
  crt, sysUtils;

begin
  writeln('Hello from Pascal!');
  ExecuteProcess('/usr/bin/perl', 'perl.pl');
  writeln('Goodbye from Pascal!');
end.
