open Ocrypt

let contents = Io.read_file "test.txt"
let () = print_endline Bytes.(to_string contents)
