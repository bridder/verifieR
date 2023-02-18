test_that(desc = "Works for an empty logical x_input.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_equal(object = verify_class_and_typeof(tested_value = logical(),
                                                            required_length_min = 0L,
                                                            required_length_max = 0L,
                                                            tested_value_name =  "empty.variable.NAME_52",
                                                required_classes = "logical",
                                                required_typeof = "logical"),
                                                expected = logical())
            })

test_that(desc = "Works for an empty list.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_equal(object = verify_class_and_typeof(tested_value = list(),
                                                            required_length_min = 0L,
                                                            required_length_max = 0L,
                                                            tested_value_name =  "snake_case_empty_list",
                                                required_classes = "list",
                                                required_typeof = "list"),
                           expected = list())
            })
