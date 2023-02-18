test_that(desc = "required length is a double.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                            required_length_min = 1.23,
                                                            required_length_max = 1L,
                                                            tested_value_name =  "fried_eggs",
                                                            required_classes = "numeric",
                                                            required_typeof = "double",
                                                            regexp = "^required_length_min must be of type \\'integer\\', asserted type is 'double'\\.$"))
            })

test_that(desc = "required length is a list of an integer.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                            required_length_min = list(5L),
                                                            required_length_max = 3L,
                                                            tested_value_name = "fried_eggs",
                                                            required_classes = "numeric",
                                                            required_typeof = "double",
                                                            regexp = "^required_length_min must be of type \\'integer\\', asserted type is 'list'\\.$"))
            })

test_that(desc = "required length is a character representation of an integer.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                            required_length_min = "1L",
                                                            required_length_max = 12L,
                                                            tested_value_name =  "fried_eggs",
                                                            required_classes = "numeric",
                                                            required_typeof = "double",
                                                            regexp = "^required_length_min must be of type \\'integer\\', asserted type is 'character'\\.$"))
            })
