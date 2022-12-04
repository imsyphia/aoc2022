module DayOne.PartTwo

import Data.String
import Data.List
import Data.List1

export
withString : String -> String
withString = (\x => case x of Nothing => "Error" ; Just x => show x)
           . (map $ foldr (+) 0)
           . (map $ foldr (\e => \a => sort ((max e $ head a {ok = ?ok2}) :: tail a {ok = ?ok1})) [0, 0, 0])
           . (map $ map $ foldr (+) (0))
           . (sequence)
           . (map $ traverse parsePositive)
           . (List.split (== ""))
           . (forget)
           . (split (== '\n'))
