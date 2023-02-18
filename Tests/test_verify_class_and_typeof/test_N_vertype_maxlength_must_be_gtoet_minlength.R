test_that(desc = "Error if required_length_min > required_length_max",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = tibble(x = 1.3,y = 2L,z = "hmm"),
                                                            required_length_min = 13L,
                                                            required_length_max = 11L,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = c("tbl_df","tbl","data.frame"),
                                                            required_typeof = "list"),
                           regexp = "^required_length_max must be >= required_length_min; asserted difference: 11L - 13L = -2L\\.$")
            })
