admin = User.create! email: "admin@gmail.com", password: "admin123", role: "admin", remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

category1 = Category.create! name: "Fashion"

category2 = Category.create! name: "Color"

word1 = Word.create! content: "Wear", category_id: category1.id

word2 = Word.create! content: "Coat", category_id: category1.id

word3 = Word.create! content: "Polo", category_id: category1.id

word4 = Word.create! content: "Shirt", category_id: category1.id

word5 = Word.create! content: "T-Shirt", category_id: category1.id

word6 = Word.create! content: "Jeans", category_id: category1.id

word7 = Word.create! content: "Black", category_id: category2.id

word8 = Word.create! content: "Pink", category_id: category2.id

word9 = Word.create! content: "White", category_id: category2.id

word10 = Word.create! content: "Yellow", category_id: category2.id

word11 = Word.create! content: "Red", category_id: category2.id
