test_that(desc = "required_type is of length 2L.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                required_length = 1L,
                                                tested_value_name =  "camelCase",
                                                required_classes = c("logical","logical"),
                                                regexp = "^required_type must be of length 1L; asserted length = 2L\\.$"))
            })

            test_that(desc = "required_type is of length 5L.",
                      code =
                        {
                          require(tidyverse)
                          require(magrittr)

                          expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                            required_length = 1L,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = c("logical","logical","numeric","list","integer"),
                                                            regexp = "^required_type must be of length 1L; asserted length = 5L\\.$"))
                        })
