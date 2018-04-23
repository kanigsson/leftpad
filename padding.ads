package Padding with SPARK_Mode is

   function Left_Pad (S : String; Pad_Char : Character; Len : Natural)
                      return String
     with Pre => Len < Natural'Last,
     Contract_Cases =>
       (Len > S'Length =>
          Left_Pad'Result (Len - S'Length + 1  .. Left_Pad'Result'Last) = S
        and then
          (for all I in 1 .. Len - S'Length => Left_Pad'Result (I) = Pad_Char),
        others => Left_Pad'Result = S);

end Padding;
