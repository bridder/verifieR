#' Verify class and type of a test value.
#'
#' This function is a much more compact way of doing many common type-checking assertions for a
#' a function argument.
#'
#' @param tested_value the value of what is being tested, e.g. the variable loaded in as a function argument. No restraint on type.
#' @param required_length_min Required minimum length of the tested_value; integer; exact value obtained by setting required_length_min == required_length_max
#' @param required_length_max Required maximum length of the tested_value; integer
#' @param tested_value_name the name of the variable, input as a character, e.g. if the value tested was first_derivative, then it's tested_value_name would be "first_derivative".
#' @param required_classes character vector of required classes for tested_value to possess.
#' @param required_typeof character vector of required types for tested_value to possess.
#' @return The return value is the identity of tested_value if all assertions pass; otherwise, an assertion error in assert_that will trigger.
#' @export
verify_class_and_typeof <- function(tested_value,
                                    required_length_min = 1,
                                    required_length_max = 1,
                                    tested_value_name,
                                    required_classes,
                                    required_typeof)
{
  #Check for missings right at the beginning.
  assertthat::assert_that(!missing(tested_value),msg = "tested_value is missing.")
  assertthat::assert_that(!missing(required_length),msg = "required_length is missing.")
  assertthat::assert_that(!missing(tested_value_name),msg = "tested_value_name is missing.")
  assertthat::assert_that(!missing(required_classes),msg = "required_classes is missing.")
  assertthat::assert_that(!missing(required_typeof),msg = "required_typeof is missing.")

  valid_typeof_values <- c("logical",
                           "integer",
                           "double",
                           "complex",
                           "character",
                           "raw",
                           "list",
                           "NULL",
                           "closure",
                           "function",
                           "special",
                           "builtin",
                           "environment",
                           "S4",
                           "symbol",
                           "pairlist",
                           "promise",
                           "language",
                           "char",
                           "...",
                           "any",
                           "expression",
                           "externalptr",
                           "bytecode",
                           "weakref")

  #required_length assertions.
  assertthat::assert_that(!is.null(required_length),msg = "required_length cannot be NULL.")
  assertthat::assert_that(!is_empty(required_length),msg = "required_length cannot be empty.")
  assertthat::assert_that(!is.na(required_length),msg = "required_length cannot be NA.")

  assertthat::assert_that(length(required_length) == 1L,
              msg = sprintf(fmt = "required_length must be of length 1L; asserted length = %dL.",
                            length(required_length)))


  assertthat::assert_that(is.integer(required_length),
              msg = sprintf(fmt = "required_length must be of type 'integer', asserted type is '%s'.",
                            typeof(required_length)))

  #tested_value_name assertions.
  assertthat::assert_that(!is.null(tested_value_name),msg = "tested_value_name cannot be NULL.")
  assertthat::assert_that(!is_empty(tested_value_name),msg = "tested_value_name cannot be empty")
  assertthat::assert_that(!is.na(tested_value_name),msg = "tested_value_name cannot be NA.")

  assertthat::assert_that(length(tested_value_name) == 1L,
              msg = sprintf(fmt = "tested_value_name must be of length 1L; asserted length is '%d'.",
                            length(tested_value_name)))

  assertthat::assert_that(is.character(tested_value_name),
              msg = sprintf(fmt = "tested_value_name must be of type 'character', asserted type is '%s'.",
                            class(tested_value_name)))

  assertthat::assert_that(nchar(tested_value_name) >= 1L,
              msg = sprintf(fmt = "tested_value_name must have a least 1L characters; asserted nchar = %d.",
                            nchar(tested_value_name)))

  #required_classes assertions.
  assertthat::assert_that(!is.null(required_classes),msg = "required_classes cannot be NULL.")
  assertthat::assert_that(!is_empty(required_classes),msg = "required_classes cannot be empty.")
  assertthat::assert_that(all(!is.na(required_classes)),msg = "required_classes cannot have any NA values.")

  assertthat::assert_that(is.character(required_classes),
              msg = sprintf(fmt = "required_classes must be of type 'character', asserted type is '%s'.",
                            typeof(required_classes)))

  assertthat::assert_that(all(nchar(required_classes) >= 1L),
              msg = "All elements of required_classes must have a least 1L characters.")

  #required_typeof assertions
  assertthat::assert_that(!is.null(required_typeof),msg = "required_typeof cannot be NULL.")
  assertthat::assert_that(!is_empty(required_typeof),msg = "required_typeof cannot be empty.")

  assertthat::assert_that(length(required_typeof) == 1L,
              msg = sprintf(fmt = "required_typeof must be of length 1L; asserted length is %dL.",
                            length(required_typeof)))


  assertthat::assert_that(!is.na(required_typeof),msg = "required_typeof cannot be NA.")


  assertthat::assert_that(is.character(required_typeof),
              msg = sprintf(fmt = "required_typeof must be of type 'character', asserted type is '%s'.",
                            typeof(required_typeof)))

  assertthat::assert_that(nchar(required_typeof) >= 1L,
              msg = sprintf(fmt = "required_typeof must have a least 1L characters; asserted nchar = %dL.",
                            nchar(required_typeof)))

  assertthat::assert_that(any(required_typeof %in% valid_typeof_values),msg = "required_typeof can only be one of the types described in the help for the typeof() function.")

  #tested_value assertions.

  assertthat::assert_that(!is.null(tested_value),msg = sprintf("%s cannot be NULL.",tested_value_name))

  assertthat::assert_that(length(tested_value) == required_length,
              msg = sprintf(fmt = "Argument '%s' must have length equal to the required_length; required_length = %dL; asserted length = %dL.",
                            tested_value_name,
                            required_length,
                            length(tested_value)))

  assertion_error_string <- paste0(class(tested_value),collapse = ", ")
  assertthat::assert_that(all(required_classes %in% class(tested_value)),
              msg = sprintf(fmt = "required_classes must all have a match in what is returned by class('%s'); required_classes: '%s'; asserted classes: %s.",
                            tested_value_name,
                            paste0(required_classes,collapse = ", "),
                            assertion_error_string))

  assertthat::assert_that(required_typeof == typeof(tested_value),
              msg = sprintf(fmt = "required_typeof must equal that returned by typeof('%s'); required_typeof: '%s'; asserted typeof: %s.",
                            tested_value_name,
                            required_typeof,
                            typeof(tested_value)))

  return(tested_value)
}
