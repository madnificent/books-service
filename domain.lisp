(in-package :mu-cl-resources)

(define-resource book ()
  :class (s-prefix "schema:Book")
  :properties `((:title :string ,(s-prefix "schema:headline"))
                (:isbn :string ,(s-prefix "schema:isbn")))
  :has-many `((author :via ,(s-prefix "schema:author")
                      :as "authors"))
  :resource-base (s-url "http://mu.semte.ch/services/github/madnificent/book-service/books/")
  :on-path "books")

(define-resource author ()
  :class (s-prefix "schema:Author")
  :properties `((:name :string ,(s-prefix "schema:name")))
  :has-many `((book :via ,(s-prefix "schema:author")
                    :inverse t
                    :as "books"))
  :resource-base (s-url "http://mu.semte.ch/services/github/madnificent/book-service/authors/")
  :on-path "authors")
