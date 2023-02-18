test_that(desc = "x_input error if missing.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(#_input = NULL,
                                                required_length_min = 1L,
                                                required_length_max = 1L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer"),
                                                regexp = "^tested_value is missing\\.$")
                           })
