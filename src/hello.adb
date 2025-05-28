-- File: src/hello.adb
with Ada.Text_IO; use Ada.Text_IO;

package body Hello is
   procedure Greet(Name : String := "World") is
   begin
      Put_Line("Hello, " & Name & "!");
   end Greet;
end Hello;

