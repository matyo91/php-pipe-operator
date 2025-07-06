<?php

$string = str_replace(' ', '-', strtolower(
        trim(" Hello World2 ")
    )
);
// Pipe operator - DSL
$string = " Hello World3 "
    |> trim(...)
    |> strtolower(...)
    |> fn($string) => str_replace(' ', '-', $string)
;

echo $string;
