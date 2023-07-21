open Ocrypt

let contents = Io.read_file "test-input.txt"
let () = Io.write_file "test-output.txt" contents
