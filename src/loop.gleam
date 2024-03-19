import gleam/option.{type Option, None, Some}

pub fn for_times(times: Int, func: fn(Int) -> Nil, index: Option(Int)) {
  let indx = case index {
    Some(val) -> val
    None -> 0
  }
  case times > indx {
    True -> {
      func(indx)
      for_times(times, func, Some(indx + 1))
    }
    False -> Nil
  }
}
