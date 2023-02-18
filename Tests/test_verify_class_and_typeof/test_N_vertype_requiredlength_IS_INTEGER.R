test_that(desc = "required length is a double.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = 9.2,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "numeric",
                                                required_typeof = "double",
                                                regexp = "^required_length must be of type \\'integer\\', asserted type is 'double'\\.$"))
                           })

test_that(desc = "required length is a list of an integer.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = list(5L),
                                                tested_value_name = "fried_eggs",
                                                required_classes = "numeric",
                                                required_typeof = "double",
                                                regexp = "^required_length must be of type \\'integer\\', asserted type is 'list'\\.$"))
            })

test_that(desc = "required length is a character representation of an integer.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = "1L",
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "numeric",
                                                required_typeof = "double",
                                                regexp = "^required_length must be of type \\'integer\\', asserted type is 'character'\\.$"))
            })
