test_that(desc = "required_length is not missing.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                            required_length_min = 1L,
                                                            #required_length_max = NULL,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = "logical",
                                                            regexp = "^required_length_max is missing\\.$"))
            })
