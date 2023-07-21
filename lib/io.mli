(** [Io] provides all necessary input/output operations for Ocrypt. *)

(** [read_file filename] reads the contents of [filename] into a buffer of raw bytes. *)
val read_file : string -> bytes

(** [write_file filename buffer] writes a [buffer] of raw bytes to [filename]. *)
val write_file : string -> bytes -> unit
