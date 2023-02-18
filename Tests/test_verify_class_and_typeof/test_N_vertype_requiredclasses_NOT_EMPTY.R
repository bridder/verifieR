test_that(desc = "required_type is not empty.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length = integer(),
                                                tested_value_name =  "camelCase",
                                                required_classes = character(),
                                                regexp = "^required_type cannot be empty\\.$"))
            })
