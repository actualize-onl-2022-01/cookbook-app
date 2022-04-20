User.destroy_all
Recipe.destroy_all


User.create!([
  {name: "bob", email: "bob@bob.com", password: "password"},
  {name: "leslie", email: "leslie@pawnee.us", password: "password"},
  {name: "donna", email: "donna@pawnee.us", password: "password"},
  {name: "jeanralphio", email: "jeanralphio@pawnee.us", password: "password"},
  {name: "larry", email: "larry@pawnee.us", password: "password"},
  {name: "tom", email: "tom@pawnee.us", password: "password"},
])


Recipe.create!([
  {title: "cereal", chef: "brian", ingredients: "cereal + milk", directions: "pour cereal on top of milk", prep_time: 2, image_url: nil, user_id: User.first.id},
  {title: "Corn on the cob", chef: "Cornelius Vanderbilt", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: User.first.id},
  {title: "falafel", chef: "Rachel Ray", ingredients: "chickpeas, bread, spices", directions: "put in blender, and fry", prep_time: 100, image_url: "https://www.thespruceeats.com/thmb/I75OB9paT-KRF4Q64kXFaLMH27w=/3000x2000/filters:fill(auto,1)/what-is-falafel-2355693-Hero_01-ba33428ae8704932ba4e43b526bb81ff.jpg", user_id: User.first.id},
  {title: "Raw Eggs", chef: "Laura Parsley", ingredients: "Chicken", directions: "Squeeze the chicken", prep_time: 12, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: User.first.id},
  {title: "Empty Sandwich with bread", chef: "Jay Wengrow", ingredients: "Two slices of bread and nothing else", directions: "Place slices of bread next to each other.", prep_time: 27, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: User.first.id},
  {title: "avo toast", chef: "brian", ingredients: "avo + toast", directions: "toast the avo", prep_time: 0, image_url: "12", user_id: User.first.id},
  {title: "brian", chef: "brian", ingredients: "brian", directions: "brian", prep_time: 0, image_url: "brian", user_id: User.first.id},
  {title: "escargot", chef: "brian", ingredients: "snail _ harp", directions: "harp the snail", prep_time: 100, image_url: "https://eandt.theiet.org/media/14701/dalle-harps-with-snail-texture.jpg?anchor=center&mode=crop&width=800&rnd=132544118120000000", user_id: User.first.id},
  {title: "Pizza!!!!", chef: "The Californian Chef", ingredients: "Flour, water, pepperoni, cheese, avocado", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode. then let bake in the sun", prep_time: 5, image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/KYyfGPR-0vfyQba6icXzXQ/258s.jpg", user_id: User.first.id},
  {title: "Licorice", chef: "Jean Claude Packsone", ingredients: "Licorice", directions: "Buy licorice from store.", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: User.first.id},
  {title: "Mud Pi", chef: "Joey Harbert", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", prep_time: 84, image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", user_id: User.first.id},
  {title: "toast", chef: "brian", ingredients: "bread + butter", directions: "toast the toast", prep_time: 6, image_url: nil, user_id: User.first.id},
  {title: "falafel", chef: "Rachel Ray", ingredients: "chickpeas, bread, spices", directions: "put in blender, and fry", prep_time: 100, image_url: "https://www.thespruceeats.com/thmb/I75OB9paT-KRF4Q64kXFaLMH27w=/3000x2000/filters:fill(auto,1)/what-is-falafel-2355693-Hero_01-ba33428ae8704932ba4e43b526bb81ff.jpg", user_id: User.first.id},
  {title: "hamburger", chef: "ronald", ingredients: "ham, burger, bun", directions: "cook on high heat?", prep_time: 20, image_url: "https://assets.kansascitysteaks.com/dyn-images/pdp_hero/TBone_Prime_Raw_SU07-b3250c1962c455e6e20b6debcf6d6678.jpg", user_id: User.first.id},
  {title: "falafel", chef: "Rachel Ray", ingredients: "chickpeas, bread, spices", directions: "put in blender, and fry", prep_time: 100, image_url: "https://www.thespruceeats.com/thmb/I75OB9paT-KRF4Q64kXFaLMH27w=/3000x2000/filters:fill(auto,1)/what-is-falafel-2355693-Hero_01-ba33428ae8704932ba4e43b526bb81ff.jpg", user_id: User.first.id},
  {title: "falafel", chef: "Rachel Ray", ingredients: "chickpeas, bread, spices", directions: "put in blender, and fry", prep_time: 100, image_url: "https://www.thespruceeats.com/thmb/I75OB9paT-KRF4Q64kXFaLMH27w=/3000x2000/filters:fill(auto,1)/what-is-falafel-2355693-Hero_01-ba33428ae8704932ba4e43b526bb81ff.jpg", user_id: User.first.id},
  {title: "falafel", chef: "Rachel Ray", ingredients: "chickpeas, bread, spices", directions: "put in blender, and fry", prep_time: 100, image_url: "https://www.thespruceeats.com/thmb/I75OB9paT-KRF4Q64kXFaLMH27w=/3000x2000/filters:fill(auto,1)/what-is-falafel-2355693-Hero_01-ba33428ae8704932ba4e43b526bb81ff.jpg", user_id: User.first.id},
  {title: "seltzer", chef: nil, ingredients: "water, CO2", directions: "add the CO2 to the water", prep_time: 10, image_url: "https://www.nwcoffeesupply.com/wp-content/uploads/2018/09/Waterloo-Watermelon.jpg", user_id: User.first.id},
  {title: "salad", chef: "brian", ingredients: "bread + jam", directions: "put in toaster", prep_time: 20, image_url: "https://upload.wikimedia.org/wikipedia/commons/3/35/Toast-3.jpg", user_id: User.first.id},
  {title: "chocolate cookies", chef: "boyard", ingredients: "chocolate, flour", directions: "bake em", prep_time: 25, image_url: "https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg", user_id: User.first.id},
  {title: "oatmeal raisin cookies", chef: "brian", ingredients: "oatmeal raisin", directions: "something", prep_time: 0, image_url: "https://bakerbynature.com/wp-content/uploads/2020/07/Brown-Butter-Oatmeal-Raisin-Cookies-01234-1-of-1.jpg", user_id: User.first.id},
  {title: "candy bar!!!!", chef: "willy wonka", ingredients: "chocolate, caramel", directions: "don't know!!!!", prep_time: 12, image_url: "https://images.heb.com/is/image/HEBGrocery/000098268?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0", user_id: User.first.id},
  {title: "apple pie a la mode", chef: "brian", ingredients: "apple, sugar, flour, cinnamon", directions: "bake the pie without the ice cream", prep_time: 33, image_url: "https://kristineskitchenblog.com/wp-content/uploads/2021/04/apple-pie-1200-square-592-2.jpg", user_id: User.first.id},
  {title: "the title", chef: "the chef", ingredients: "the ingredients", directions: "the directions", prep_time: 20, image_url: "the image_url", user_id: User.first.id},
  {title: "salad", chef: "brian", ingredients: "lettuce + tomatoes", directions: "mix ingredients together", prep_time: 10, image_url: "https://images.media-allrecipes.com/userphotos/414768.jpg", user_id: User.first.id}
])
