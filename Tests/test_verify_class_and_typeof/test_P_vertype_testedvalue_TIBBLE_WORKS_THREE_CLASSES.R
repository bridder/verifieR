test_that(desc = "Works for tibble on all 3 classes, regardless of shuffling the required_classes vector.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              MOCK_tibble_length_3_rows_2 <- tibble(x=c(1,2),y=c("omg","bbq"),z=c(99,100))
              EXPECTED_output <- tibble(x=c(1,2),y=c("omg","bbq"),z=c(99,100))

              expect_equal(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                required_length = 3L,
                                                tested_value_name =  "camelCaseTibbleL3R2",
                                                required_classes = c("tbl","data.frame","tbl_df"),
                                                required_typeof = "list"),
                           expected = EXPECTED_output)
              
              expect_equal(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                            required_length = 3L,
                                                            tested_value_name =  "camelCaseTibbleL3R2",
                                                            required_classes = c("data.frame","tbl","tbl_df"),
                                                            required_typeof = "list"),
                           expected = EXPECTED_output)
              
              
              expect_equal(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                            required_length = 3L,
                                                            tested_value_name =  "camelCaseTibbleL3R2",
                                                            required_classes = c("tbl_df","data.frame","tbl"),
                                                            required_typeof = "list"),
                           expected = EXPECTED_output)
            })
