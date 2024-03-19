import gleam/list
import gleam/io
import gleam/option.{type Option, None, Some}

pub type Matrix =
  List(List(String))

fn create_row(width: Int, current: List(String), base: String) {
  let curr_len: Int = list.length(current)
  case width > curr_len {
    True -> {
      let updated_current = list.append(current, [base])
      create_row(width, updated_current, base)
    }
    False -> current
  }
}

fn create_matrix(width: Int, height: Int, base: String, current_matrix: Matrix) {
  let current_height: Int = list.length(current_matrix)
  case height > current_height {
    True -> {
      let updated_current =
        list.append(current_matrix, [create_row(width, [], base)])
      create_matrix(width, height, base, updated_current)
    }
    False -> current_matrix
  }
}

pub fn print_row(row: List(String), index: Int) {
  case list.length(row) > index {
    True -> {
      case list.at(row, index) {
        Ok(val) -> {
          io.print(val <> " ")
        }
        Error(_) -> Nil
      }
      print_row(row, index + 1)
      Nil
    }
    False -> Nil
  }
}

pub fn format_print(mtx: Matrix, indx: Option(Int)) -> Nil {
  let index = case indx {
    Some(val) -> val
    None -> 0
  }
  case list.length(mtx) > index {
    True -> {
      case list.at(mtx, index) {
        Ok(val) -> {
          print_row(val, 0)
          Nil
        }
        Error(_) -> Nil
      }
      io.print("\n")
      format_print(mtx, Some(index + 1))
      Nil
    }
    False -> Nil
  }
}

pub fn new(width: Int, height: Int, base: String) -> Matrix {
  create_matrix(width, height, base, [])
}
