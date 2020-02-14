with Ada.Text_IO; use Ada.Text_IO;
with GNAT.OS_Lib; use GNAT.OS_Lib;

procedure AdaLang is
  Result    : Boolean;
  Arguments : Argument_List :=
           (  1=> new String'("erl"),
              2=> new String'("-noshell"),
              3=> new String'("-run"),
              4=> new String'("erlanglang"),
              5=> new String'("-run"),
              6=> new String'("init"),
              7=> new String'("stop")
           );

begin

   Put_Line ("Hello from Ada!");
   Spawn
   (  Program_Name           => "/usr/bin/erl",
      Args                   => Arguments,
      Success                => Result
   );
   Put_Line ("Goodbye from Ada!");

end AdaLang;
