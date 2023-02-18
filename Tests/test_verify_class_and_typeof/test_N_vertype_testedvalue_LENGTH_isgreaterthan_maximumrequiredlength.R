test_that(desc = "tested_value length is above the maximum.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = c(1L,10L,-15L),
                                                            required_length_min = 2L,
                                                            required_length_max = 2L,
                                                            tested_value_name =  "three_integers_but_2L_lengthmax",
                                                            required_classes = "integer",
                                                            required_typeof = "integer"),
                           regexp = "^Argument \\'three_integers_but_2L_lengthmax\\' must have length <= required_length_max; required_length_max = 2L; asserted length = 3L\\.$")
                           })

              test_that(desc = "tested_value length is above the maximum; 13L asserted 3L required.",
                        code =
                          {
                            expect_error(object = verify_class_and_typeof(tested_value = rep(1L,13L),
                                                                          required_length_min = 1L,
                                                                          required_length_max = 3L,
                                                                          tested_value_name =  "thirteen_ones",
                                                                          required_classes = "integer",
                                                                          required_typeof = "integer"),
                                         regexp = "^Argument \\'thirteen_ones\\' must have length <= required_length_max; required_length_max = 3L; asserted length = 13L\\.$")
                          })

              test_that(desc = "tested_value length is above the maximum; 3L asserted 0L required.",
                        code =
                          {
                            expect_error(object = verify_class_and_typeof(tested_value = c(5L,-117L,9L),
                                                                          required_length_min = 0L,
                                                                          required_length_max = 0L,
                                                                          tested_value_name =  "three_integers_needs_0L_elements",
                                                                          required_classes = "integer",
                                                                          required_typeof = "integer"),
                                         regexp = "^Argument \\'three_integers_needs_0L_elements\\' must have length <= required_length_max; required_length_max = 0L; asserted length = 3L\\.$")
                          })


              test_that(desc = "tested_value length is above the maximum; list of lists of length 3L.",
                        code =
                          {
                            expect_error(object = verify_class_and_typeof(tested_value = list(list_1 = list("a","b"),list_2 = list(1.1,2.9),list_3 = list(15.2,-119.0)),
                                                                          required_length_min = 1L,
                                                                          required_length_max = 2L,
                                                                          tested_value_name =  "list_of_length_3",
                                                                          required_classes = "list",
                                                                          required_typeof = "list"),
                                         regexp = "^Argument \\'list_of_length_3\\' must have length <= required_length_max; required_length_max = 2L; asserted length = 3L\\.$")
                          })

              test_that(desc = "tested_value length is above the maximum; 5L asserted NA values but 3L required.",
                        code =
                          {
                            expect_error(object = verify_class_and_typeof(tested_value = as.logical(c(NA,NA,NA,NA,NA)),
                                                                          required_length_min = 2L,
                                                                          required_length_max = 3L,
                                                                          tested_value_name =  "NA_5_elements",
                                                                          required_classes = "logical",
                                                                          required_typeof = "logical"),
                                         regexp = "^Argument \\'NA_5_elements\\' must have length <= required_length_max; required_length_max = 3L; asserted length = 5L\\.$")
                          })
