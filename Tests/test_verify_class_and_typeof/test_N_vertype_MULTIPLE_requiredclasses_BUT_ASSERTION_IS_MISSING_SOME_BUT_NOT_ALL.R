test_that(desc = "required_type is of length 2L.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              error_regex <- "^required_classes must all have a match in what is returned by class\\('camelCase'\\); required_classes: 'INVALID_data.frame, tbl'; asserted classes: tbl_df, tbl, data\\.frame\\.$"
              expect_error(object = verify_class_and_typeof(tested_value = tibble(x = 1.3,y = 2L,z = "hmm"),
                                                            required_length_min = 3L,
                                                            required_length_max = 3L,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = c("INVALID_data.frame","tbl"),
                                                            required_typeof = "list"),
                           regexp = error_regex)
            })
