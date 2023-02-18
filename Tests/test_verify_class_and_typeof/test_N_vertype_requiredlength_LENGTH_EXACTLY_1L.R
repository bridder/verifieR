test_that(desc = "required length is of length 2L; one element is the correct length of 1L.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length = c(1L,5L),
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                regexp = "^required_length must be of length 1L; asserted length = 2L\\.$"))
            })

test_that(desc = "required length is of length 5L; all elements are the correct length of 1L.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length = c(1L,1L,1L,1L,1L),
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                regexp = "^required_length must be of length 1L; asserted length = 5L\\.$"))
            })

test_that(desc = "required length is of length 5L; no elements are the correct length of 1L.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length = c(12L,44L,0L,-12L,333L),
                                                tested_value_name =  "camelCase",
                                                required_classes = "logical",
                                                regexp = "^required_length must be of length 1L; asserted length = 5L\\.$"))
            })
