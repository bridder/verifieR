test_that(desc = "required_length is not empty.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                required_length_min = 1L,
                required_length_max = integer(),
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                regexp = "^required_length_max cannot be empty\\.$"))
            })
