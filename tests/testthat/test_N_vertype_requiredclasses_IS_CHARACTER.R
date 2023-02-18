test_that(desc = "required_type is not a character; complex.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                            required_length = 9.2,
                                                            tested_value_name =  "fried_eggs",
                                                            required_classes = 3.2 + 9.8i,
                                                            regexp = "^required_type must be of type \\'character\\'; asserted type is \\'complex\\'\\.$"))
            })

test_that(desc = "required_type is not a character; list with a character.",
          code =
            {
              expect_error(object = verify_class_and_typeof(tested_value = 3.2,
                                                            required_length = 9.2,
                                                            tested_value_name =  "fried_eggs",
                                                            required_classes = list("logical"),
                                                            regexp = "^required_type must be of type \\'character\\'; asserted type is \\'list\\'\\.$"))
            })
