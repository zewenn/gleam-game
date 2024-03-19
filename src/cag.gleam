import gleam/io
import gleam/option.{None}
// Concept here:
// CAG is a cosnole adventure game written in gleam for the purpuse of learning 
// functional programing with a modern language.
// 
// Game concept:
// I want to make a full text-based console rpg in gleam in a month, starting on 18/03/24
// End date goal: 18/04/24

import matrix.{type Matrix}

// fn move(map: Matrix, new_move: String) {
//   todo
// }

pub fn main() {
  let mtx = matrix.new(9, 9, "x")
  io.println("Hello from cag!")

  update(mtx)
}

fn update(mtx: Matrix) {
  matrix.format_print(mtx, None)

  update(mtx)
}
