test_that(desc = "required_typeof is not missing.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                            required_length_min = 1L,
                                                            required_length_max = 1L,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = "logical"),
                           #required_typeof = "logical",
                                                regexp = "^required_typeof is missing\\.$")
            })
