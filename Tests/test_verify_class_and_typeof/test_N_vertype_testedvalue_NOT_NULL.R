test_that(desc = "x_input error if NULL.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = NULL,
                                                required_length = 9.2,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "^x_input cannot be NULL\\.$"))
                           })
