admin = User.create! email: "admin@gmail.com", password: "admin123", role: "admin", name: "admin",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'


user1 = User.create! email: "user1@gmail.com", password: "duykhanh94", role: "member", name: "user1",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user2 = User.create! email: "user2@gmail.com", password: "duykhanh94", role: "member", name: "user2",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user3 = User.create! email: "user3@gmail.com", password: "duykhanh94", role: "member", name: "user3",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user4 = User.create! email: "user4@gmail.com", password: "duykhanh94", role: "member", name: "user4",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user5 = User.create! email: "user5@gmail.com", password: "duykhanh94", role: "member", name: "user5",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user6 = User.create! email: "user6@gmail.com", password: "duykhanh94", role: "member", name: "user6",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user7 = User.create! email: "user7@gmail.com", password: "duykhanh94", role: "member", name: "user7",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user8 = User.create! email: "user8@gmail.com", password: "duykhanh94", role: "member", name: "user8",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user9 = User.create! email: "user9@gmail.com", password: "duykhanh94", role: "member", name: "user9",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user10 = User.create! email: "user10@gmail.com", password: "duykhanh94", role: "member", name: "user10",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

user11 = User.create! email: "user11@gmail.com", password: "duykhanh94", role: "member", name: "user11",
remote_avatar_url: 'https://image.shutterstock.com/image-vector/user-icon-person-profile-avatar-260nw-601705169.jpg'

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
