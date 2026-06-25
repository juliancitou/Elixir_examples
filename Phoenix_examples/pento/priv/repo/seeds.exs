alias Pento.{Accounts, Catalog}
# Crea un semilla usuarios para facilitar el desarrollo
{:ok, user} =
  Accounts.register_user(%{
    email: "seed@example.com",
    password: "password123password123"
  })

# Get the scope for this user
scope = Pento.Accounts.Scope.for_user(user)
# Create sample products using the scope-aware context
products = [
  %{
    name: "Chess",
    description: "The classic strategy game",
    unit_price: 10.00,
    sku: 5_678_910
  },
  %{
    name: "Checkers",
    description: "A classic board game",
    unit_price: 8.00,
    sku: 1_234_567
  },
  %{
    name: "Backgammon",
    description: "An ancient strategy game",
    unit_price: 15.00,
    sku: 9_876_543
  }
]

Enum.each(products, fn product_attrs ->
  {:ok, product} = Catalog.create_product(scope, product_attrs)
  IO.puts("Created product: #{product.name}")
end)
