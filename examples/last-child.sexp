(anyNode(
  tag("*",
    attrEquals("id", "last-child",
      anyNode(
        tag("*",
          has(
            isNot(
              followingSibling(
                tag("*",
                  has("1")))))))))))
