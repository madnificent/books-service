# Books service #

Service offering storage for basic information about Books.

_Version: 1.0.1_

## Available resources ##

The books service has support for Books and Authors.

Books have the following properties:

| Property    | Intended use                               |
|-------------|--------------------------------------------|
| title       | Short title of the book                    |
| isbn        | Unique ISBN identifier of the book         |
| authors     | Link to authors of the book                |

Authors have the following properties:

| Property    | Intended use                               |
|-------------|--------------------------------------------|
| name        | Full name of the author                    |
| books       | Link to books of the author                |

## Available calls ##

All calls which mu-cl-resources offers are supported for the resources `/books` and `/authors`.
Authorization is not included.  This includes most of the calls specified by JSONAPI.org.
