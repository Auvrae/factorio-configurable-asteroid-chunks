data:extend{
      {
        type = "int-setting",
        name = "stack-size",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        maximum_value = 200,
        order = "ab",
      },
      {
        type = "int-setting",
        name = "chunk-weight",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 1000,
        order = "bc",
      },
}
