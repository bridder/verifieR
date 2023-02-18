test_that(desc = "tested_value length is beneath the minimum.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = c(1L,10L,-15L),
              required_length_min = 4L,
required_length_max = 8L,
                                                tested_value_name =  "three_integers_needs_4L_elements",
                                                required_classes = "integer",
                                                required_typeof = "logical"),
                                                regexp = "^Argument \\'three_integers_needs_4L_elements\\' must have length >= required_length_min; required_length_min = 4L; asserted length = 3L\\.$")
                                                #regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 25L; asserted length = 3L\\.$"))
            })

test_that(desc = "tested_value length is beneath the minimum; 0L asserted 3L required.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = integer(),
              required_length_min = 3L,
required_length_max = 3L,
                                                tested_value_name =  "empty_integer",
                                                required_classes = "integer",
                                                required_typeof = "integer"),
                                                regexp = "^Argument \\'empty_integer\\' must have length >= required_length_min; required_length_min = 3L; asserted length = 0L\\.$")
            })

test_that(desc = "tested_value length is beneath the minimum; 3L asserted 0L required.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = c(5L,-117L,9L),
              required_length_min = 0L,
required_length_max = 0L,
                                                tested_value_name =  "three_integers_needs_0L_elements",
                                                required_classes = "integer",
                                                required_typeof = "integer"),
                                                regexp = "Argument \\'three_integers_needs_0L_elements\\' must have length equal to the required_length; required_length = 0L; asserted length = 3L\\.$")
            })


test_that(desc = "tested_value length is beneath the minimum; list of lists of length 3L.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = list(list_1 = list("a","b"),list_2 = list(1.1,2.9),list_3 = list(15.2,-119.0)),
                                                required_length_min = 1017L,
                                                required_length_max = 1017L,
                                                tested_value_name =  "list_of_length_3",
                                                required_classes = "list",
                                                required_typeof = "list"),
                                                regexp = "Argument \\'list_of_length_3\\' must have length equal to the required_length; required_length = 1017L; asserted length = 3L\\.$")
            })

test_that(desc = "tested_value length is beneath the minimum; 5L asserted NA values but 6L required.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = as.logical(c(NA,NA,NA,NA,NA)),
              required_length_min = 6L,
              required_length_max = 8L,
                                                tested_value_name =  "NA_5_elements",
                                                required_classes = "logical",
                                                required_typeof = "logical"),
                                                regexp = "Argument \\'NA_5_elements\\' must have length equal to the required_length; required_length = 3L; asserted length = 5L\\.$")
            })
