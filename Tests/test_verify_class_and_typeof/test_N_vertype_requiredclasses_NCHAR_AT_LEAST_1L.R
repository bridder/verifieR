test_that(desc = "required_type is not a character; nchar 0L invalid..",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = 9.2,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "",
                                                regexp = "^required_type must have a least 1L characters; asserted nchar = 0L\\.$"))
                           })
