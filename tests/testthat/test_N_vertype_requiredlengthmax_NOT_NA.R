test_that(desc = "required_length is not NA.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = TRUE,
                                                            required_length_min = 1L,
                                                            required_length_max = NA,
                                                            tested_value_name =  "camelCase",
                                                            required_classes = "logical",
                                                            required_typeof = "logical",
                                                            regexp = "^required_length_max cannot be NA\\.$"))
            })
