; HEEx delimiters
[
  "%>"
  "--%>"
  "-->"
  "/>"
  "<!"
  "<!--"
  "<"
  "<%!--"
  "<%"
  "<%#"
  "<%%="
  "<%="
  "</"
  "</:"
  "<:"
  ">"
  "{"
  "}"
] @punctuation.bracket

; HEEx operators are highlighted as such
"=" @operator

; HEEx inherits the DOCTYPE tag from HTML
(doctype) @constant

; HEEx comments are highlighted as such
(comment) @comment

; Tree-sitter parser errors
(ERROR) @error

; HEEx tags and slots are highlighted as HTML
[
 (tag_name) 
 (slot_name) 
] @tag

; HEEx attributes are highlighted as HTML attributes
(attribute_name) @tag.attribute

; HEEx special attributes are highlighted as keywords
(special_attribute_name) @keyword

[
  (attribute_value)
  (quoted_attribute_value)
] @string

; HEEx components are highlighted as Elixir modules and functions
(component_name
  [
    (module) @identifier.type
    (function) @identifier.function
    "." @punctuation.delimiter
  ])
