test_that(desc = "x_input error if missing.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(#_input = NULL,
                                                required_length = 9.2,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "^x_input is missing\\.$"))
                           })
