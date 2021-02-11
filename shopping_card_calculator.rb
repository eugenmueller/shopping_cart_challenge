shopping_carts = [
  {
    grapes: 1,
    apples: 0,
    peaches: 1
  },
  {
    grapes: 1,
    apples: 1,
    peaches: 1
  },
  {
    grapes: 1,
    apples: 2,
    peaches: 1
  },
  {
    grapes: 3,
    apples: 1,
    peaches: 1
  }
]

def calculate_cart_prices(cart)
  cart[:peaches] * 7 + calculate_apples_price(cart[:apples]) + calculate_grapes_price(cart[:grapes])
end

def calculate_apples_price(count)
  count > 1 ? (count * 3) - (count * 3).to_f / 100.00 * 20 : count * 3
end

def calculate_grapes_price(count)
  count > 1 && count.odd? ? (count - 1) * 5 : count * 5
end

shopping_carts.each { |cart| puts calculate_cart_prices(cart) }
