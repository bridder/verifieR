test_that(desc = "tested_value_name error if missing",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 50L,
                                                            required_length_min = 1L,
                                                            required_length_max = 1L,
                                                            #tested_value_name = NULL,
                                                            required_classes = "integer",
                                                            required_typeof = "integer"),
                           regexp = "^tested_value_name is missing\\.$")
            })
