let read_file filename =
  let ic = open_in filename in
  let len = in_channel_length ic in
  let buffer = Bytes.create len in
  really_input ic buffer 0 len;
  close_in ic;
  buffer
;;

let write_file filename buffer =
  let oc = open_out filename in
  let len = Bytes.length buffer in
  output oc buffer 0 len;
  close_out oc
;;
