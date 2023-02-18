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
                                                            required_typeof = "ham_sandwich"),
                                                regexp = "^required_typeof can only be one of the types described in the help for the typeof\\(\\) function\\.$")
            })
