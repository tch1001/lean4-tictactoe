    

structure Cell where
  isEmpty : Bool
  value : Int
deriving Repr

def cell1 : Cell :=
  { isEmpty := true, value := 0 }

def sudoku_board : Array Cell :=
  #[cell1]

#print sudoku_board