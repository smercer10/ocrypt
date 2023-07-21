(lang dune 3.9)

(name ocrypt)

(generate_opam_files true)

(source
 (github smercer10/ocrypt))

(authors "Sam Mercer")

(maintainers "Sam Mercer")

(license LICENSE)

(documentation https://smercer10.github.io/ocrypt)

(package
 (name ocrypt)
 (synopsis "File encryption/decryption tool")
 (description
  "A simple command-line tool for password-based AES-256 file encryption/decryption.")
 (depends ocaml dune ppx_expect)
 (tags
  ("aes-256" "encryption-decryption" "command-line-tool")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
