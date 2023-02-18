test_that(desc = "x_input error if missing.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = NULL,
                                                            required_length_min = 1L,
                                                            required_length_max = 1L,
                                                            tested_value_name =  "NULL_tested_value_mock_input",
                                                            required_classes = "integer",
                                                            required_typeof = "integer"),
                           regexp = "^NULL_tested_value_mock_input cannot be NULL\\.$")
            })
