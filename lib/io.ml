(** [Io] provides all necessary input/output operations for the tool. *)

(** [read_file] reads the contents of [filename] into a buffer of raw bytes. *)
let read_file filename =
  let ic = open_in filename in
  let len = in_channel_length ic in
  let buf = Bytes.create len in
  really_input ic buf 0 len;
  close_in ic;
  buf
;;

(** [write_file] writes a [buffer] of raw bytes to [filename]. *)
let write_file filename buffer =
  let oc = open_out filename in
  let len = Bytes.length buffer in
  output oc buffer 0 len;
  close_out oc
;;
