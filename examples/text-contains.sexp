(anyNode(
  tag("*",
    attrEquals("id", "text-contains",
      anyNode(
        tag("*",
          containsText("item")))))))
