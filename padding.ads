package Padding with SPARK_Mode is

   --  add [Pad_Char] characters to the left of the string [S] so that its
   --  length becomes [Len]
   function Left_Pad (S : String; Pad_Char : Character; Len : Natural)
                      return String
   --  This precondition seems to be needed to express the contract; The
   --  result length should be just one less than maximal string size.
     with Pre => Len < Natural'Last,
   --  express the specification by cases
     Contract_Cases =>
   --  if the string is shorter than the desired length ...
       (Len > S'Length =>
   --     the "tail" of the result is equal to [S]
            Left_Pad'Result (Len - S'Length + 1  .. Left_Pad'Result'Last) = S
          and then
   --     the "head" of the result is just padding chars
            (for all I in 1 .. Len - S'Length =>
                     Left_Pad'Result (I) = Pad_Char),
   --  if not, the result is equal to the input string [S]
        others => Left_Pad'Result = S);

end Padding;
