(** [read_file] reads the contents of [filename] into a buffer of raw bytes. *)
let read_file filename =
  let ic = open_in filename in
  let len = in_channel_length ic in
  let buf = Bytes.create len in
  really_input ic buf 0 len;
  close_in ic;
  buf
;;
