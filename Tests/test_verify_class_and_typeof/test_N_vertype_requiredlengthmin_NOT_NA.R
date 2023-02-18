test_that(desc = "required_length is not NA.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length_min = NA,
                                                required_length_max = 1L,
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                required_typeof = "logical",
                                                regexp = "^required_length_min cannot be NA\\.$"))
            })
