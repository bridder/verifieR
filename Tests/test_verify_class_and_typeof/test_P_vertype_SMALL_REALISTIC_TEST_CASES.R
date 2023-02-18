test_that(desc = "Small realistic positive test cases.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_equal(object = verify_class_and_typeof(tested_value = as.integer(c(NA,1L,29L,NA,-117L,NA,NA,NA)),
                                                            required_length_min = 8L,
                                                            required_length_max = 8L,
                                                            tested_value_name =  "integerOfLength8L",
                                                            required_classes = "integer",
                                                            required_typeof = "integer"),
                           expected = as.integer(c(NA,1L,29L,NA,-117L,NA,NA,NA)))
            })

test_that(desc = "Small realistic positive test cases.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              expect_equal(object = verify_class_and_typeof(tested_value = c(25.2,-110.1,0.0,1013.9),
                                                            required_length_min = 4L,
                                                            required_length_max = 4L,
                                                            tested_value_name =  "doubleNumeric",
                                                            required_classes = "numeric",
                                                            required_typeof = "double"),
                           expected = c(25.2,-110.1,0.0,1013.9))
            })
