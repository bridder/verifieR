test_that(desc = "required_length is not NULL.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                            required_length_min = NULL,
                                                            required_length_max = 1L,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = "logical",
                                                            required_typeof = "logical"),
                           regexp = "^required_length_min cannot be NULL\\.$")
            })
