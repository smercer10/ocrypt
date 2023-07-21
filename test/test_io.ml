open Ocrypt

let%expect_test "Text file read/write" =
  let file = "test.txt" in
  let write_str = "Hello World!" in
  let buffer = Bytes.of_string write_str in
  Io.write_file file buffer;
  let read_str = Bytes.to_string (Io.read_file file) in
  print_endline read_str;
  [%expect {| Hello World! |}]
;;
