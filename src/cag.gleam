import gleam/io
// Concept here:
// CAG is a cosnole adventure game written in gleam for the purpuse of learning 
// functional programing with a modern language.
// 
// Game concept:
// I want to make a full text-based console rpg in gleam in a month, starting on 18/03/24
// End date goal: 18/04/24

import matrix

// fn move(map: Matrix, new_move: String) {
//   todo
// }

pub fn main() {
  io.println("Hello from cag!")

  let mtx = matrix.new(5, 5, "x")

  matrix.format_print(mtx)
}
