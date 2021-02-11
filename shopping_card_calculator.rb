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

def calculate_cart_prices(grapes: 0, apples: 0, peaches: 0)
  peaches * 7 + calculate_apples_price(apples) + calculate_grapes_price(grapes)
end

def calculate_apples_price(apples)
  apples > 1 ? (apples * 3) - (apples * 3).to_f / 100.00 * 20 : apples * 3
end

def calculate_grapes_price(grapes)
  grapes > 1 && grapes.odd? ? (grapes - 1) * 5 : grapes * 5
end

shopping_carts.each { |cart| puts calculate_cart_prices(**cart) }
