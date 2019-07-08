(anyNode(
  tag("*",
    attrEquals("id", "attr-number",
      anyNode(
        tag("*",
          attrGreaterEquals("data-price", "5")))))))
