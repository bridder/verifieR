test_that(desc = "Works for an NA of the correct type; logical; 1 element NA.",
          code =
            {
              expect_equal(object = verify_class_and_typeof(tested_value = as.logical(NA),
                                                            required_length_min = 1L,
                                                            required_length_max = 1L,
                                                            tested_value_name =  "camelCaseLogicalNA",
                                                            required_classes = "logical",
                                                            required_typeof = "logical"),
                           expected = as.logical(NA))
            })

test_that(desc = "Works for an NA of the correct type; integer; 5 elements NA.",
          code =
            {
              expect_equal(object = verify_class_and_typeof(tested_value = as.integer(c(NA,NA,NA,NA,NA)),
                                                            required_length_min = 5L,
                                                            required_length_max = 5L,
                                                            tested_value_name =  "weIRd.CaSE_112.integer",
                                                            required_classes = "integer",
                                                            required_typeof = "integer"),
                           expected = as.integer(c(NA,NA,NA,NA,NA)))
            })
