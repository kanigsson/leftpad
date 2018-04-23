package body Padding with SPARK_Mode is

   function Left_Pad (S : String; Pad_Char : Character; Len : Natural)
                      return String
   is
   begin
      return (1 .. Len - S'Length => Pad_Char) & S;
   end Left_Pad;

end Padding;
