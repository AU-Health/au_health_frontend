String register = """
  mutation Register(\$input: NewUser!) {
    register(newUser: \$input) {
      id
      email
      createdAt
      updatedAt
      role
  }
}
""";