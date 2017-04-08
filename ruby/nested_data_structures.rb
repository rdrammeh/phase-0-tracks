#--- 5.4 Nested Data Structures ---#

restaurant_menu = {
  entree: {
    vegetarian: {
      salad: [
        'Kale',
        'Caesar',
        'Nicoise'
      ],
      soup: [
        'Lentil',
        'Black Bean & Salsa',
        'Butternut Squash'
      ]
    },
    meat: {
      wings: [
        'BBQ',
        'Buffalo'
      ],
      sliders: [
        'Beef',
        'Chicken',
        'Turkey'
      ],
    }
  },
  dessert: {
    cake: [
      'Red Velvet',
      'Carrot',
      'Chessecake'
    ],
    ice_cream: [
      'Cookies & Cream',
      'Rocky Road',
      'Butter Pecan'
    ]
  },
  drinks: {
    alcohol: {
      red_wine: [
        'Malbec',
        'Pinot Noir',
        'Merlot'
      ],
      white_wine: [
        'Pinot Grigio',
        'Moscato',
        'Chardonnay'
      ]
    },
    soft_drinks: [
      'Coca-Cola',
      'Fanta',
      'Ginger-ale'
    ],
    caffine: {
      tea: [
        'English Breakfast',
        'Earl Grey',
        'Lemon'
      ],
      coffee: [
        'Hazlenut',
        'Coconut Mocha'
      ]
    }
  }
}

#Call an item on the drinks list
p restaurant_menu[:drinks][:alcohol][:red_wine][0]

#Call all of the wings options
p restaurant_menu[:entree][:meat][:wings]

#Add an item to the coffee list
p restaurant_menu[:drinks][:caffine][:coffee].push('Americano')

#Change an item on the dessert Menu
restaurant_menu[:dessert][:cake][1] = 'Chocolate Mousse'
p restaurant_menu[:dessert][:cake]
