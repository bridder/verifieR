test_that(desc = "required_type error if NULL.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                required_length = 9.2,
                                                tested_value_name = "fried_eggs",
                                                required_classes = NULL,
                                                regexp = "^required_type cannot be NULL\\.$"))
                           })
