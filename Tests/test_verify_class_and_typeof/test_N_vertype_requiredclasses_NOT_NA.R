test_that(desc = "required_type is not a character; not NA.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = 9.2,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = NA,
                                                regexp = "^required_type cannot be NA\\.$"))
                           })
