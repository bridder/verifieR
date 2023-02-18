test_that(desc = "required_typeof is not length 2L or greater.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length_min = 1L,
                                                required_length_max = 1L,
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                required_typeof = c("logical","list","double")),
                                                regexp = "^required_typeof must be of length 1L; asserted length is 3L\\.$")
            })
