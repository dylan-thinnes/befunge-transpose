import Data.List (transpose)

main = interact (map charTranspose . lineTranspose)

lineTranspose :: String -> String
lineTranspose str =
  let ls = lines str
      width = maximum $ map length ls
      height = length ls
      padLine n l = l ++ replicate (n - length l) ' '
  in
  unlines $ transpose (map (padLine width) ls)

charTranspose :: Char -> Char
charTranspose '^' = '<'
charTranspose 'v' = '>'
charTranspose '<' = '^'
charTranspose '>' = 'v'
charTranspose '_' = '|'
charTranspose '|' = '_'
charTranspose c = c
