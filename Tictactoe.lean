-- import Lean 
-- open Lean Widget -- for the future

structure Cell where
  isEmpty : Bool
  value : Int
deriving Repr

def cell1 : Cell :=
  { isEmpty := true, value := 0 }

#check cell1
#print cell1

structure SudokuState where
  board : Array (Array Cell)
deriving Repr

def printRow : Option (Array Cell) → Option Cell :=
  fun row => 
    match row with
    | none => none
    | some row => row[0]?

def printState : SudokuState → Option (Cell) := 
  fun state => printRow (state.board[0]?)

def sudokuState1 : SudokuState :=
  { board := #[ #[ cell1, cell1, cell1 ], #[ cell1, cell1, cell1 ], #[ cell1, cell1, cell1 ] ] }

#eval printState sudokuState1

