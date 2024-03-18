import gleam/string
import gleamy_structures/map

// I guess traditional objects are not a thing so I kinda wanna use maps?

pub fn new_person() {
  let res_map =
    map.new(string.compare)
    |> map.insert("key", "value")
    |> map.insert("key2", "value2")
  res_map
}
