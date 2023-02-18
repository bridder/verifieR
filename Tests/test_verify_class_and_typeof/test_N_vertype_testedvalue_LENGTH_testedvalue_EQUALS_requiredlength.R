test_that(desc = "x_input error if unequal length.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_error(object = verify_class_and_typeof(tested_value = c(1L,10L,-15L),
                                                required_length = 25L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 25L; asserted length = 3L\\.$"))
            })

test_that(desc = "x_input error if unequal length; empty vector but length 3L expected.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_error(object = verify_class_and_typeof(tested_value = integer(),
                                                required_length = 3L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 3L; asserted length = 0L\\.$"))
            })

test_that(desc = "x_input error if unequal length; length 3L but 0L expected.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_error(object = verify_class_and_typeof(tested_value = c(5L,-117L,9L),
                                                required_length = 0L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 0L; asserted length = 3L\\.$"))
            })


test_that(desc = "x_input error if unequal length; list of lists of length 3L.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_error(object = verify_class_and_typeof(tested_value = list(list_1 = list("a","b"),list_2 = list(1.1,2.9),list_3 = list(15.2,-119.0)),
                                                required_length = 1017L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "integer",
                                                regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 1017L; asserted length = 3L\\.$"))
            })

test_that(desc = "x_input error if unequal length; vector of NA of correct type but wrong type.",
          code =
            {
              require(tidyverse)
              require(magrittr)
              
              expect_error(object = verify_class_and_typeof(tested_value = as.logical(c(NA,NA,NA,NA,NA)),
                                                required_length = 3L,
                                                tested_value_name =  "fried_eggs",
                                                required_classes = "logical",
                                                regexp = "Argument \\'fried_eggs\\' must have length equal to the required_length; required_length = 3L; asserted length = 5L\\.$"))
            })
