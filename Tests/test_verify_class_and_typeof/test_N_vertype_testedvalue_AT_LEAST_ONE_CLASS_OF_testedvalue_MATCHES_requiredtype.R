test_that(desc = "x_input tibble, but no classes match the three tibble classes.",
          code =
            {
              require(tidyverse)
              require(magrittr)

              MOCK_tibble_length_3_rows_2 <- tibble(x=c(1,2),y=c("omg","bbq"),z=c(99,100))
              error_regex1 <- "^required_classes must all have a match in what is returned by class\\('mt_L3_R2'\\); required_classes: 'integer'; asserted classes: tbl_df, tbl, data\\.frame\\.$"
              error_regex2 <- "^required_classes must all have a match in what is returned by class\\('mt_L3_R2'\\); required_classes: 'ham_sandwich'; asserted classes: tbl_df, tbl, data\\.frame\\.$"
              error_regex3 <- "^required_classes must all have a match in what is returned by class\\('mt_L3_R2'\\); required_classes: 'character'; asserted classes: tbl_df, tbl, data\\.frame\\.$"
              expect_error(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                            required_length_min = 3L,
                                                            required_length_max = 3L,
                                                            tested_value_name =  "mt_L3_R2",
                                                required_classes = "integer",
                                                required_typeof = "list"),
                           regexp = error_regex1)

              expect_error(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                            required_length_min = 3L,
                                                            required_length_max = 3L,
                                                            tested_value_name =  "mt_L3_R2",
                                                required_classes = "ham_sandwich",
                                                required_typeof = "list"),
                           regexp = error_regex2)

              expect_error(object = verify_class_and_typeof(tested_value = MOCK_tibble_length_3_rows_2,
                                                            required_length_min = 3L,
                                                            required_length_max = 3L,
                                                            tested_value_name =  "mt_L3_R2",
                                                required_classes = "character",
                                                required_typeof = "list"),
                           regexp = error_regex3)
            })
