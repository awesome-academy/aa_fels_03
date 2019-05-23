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


# Category

category1 = Category.create! name: "Fashion"
category2 = Category.create! name: "Color"

# Words

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

# Word Answers

word_answer1 = WordAnswer.create! content: "1", status: "Correct", word_id: word1.id

word_answer2 = WordAnswer.create! content: "2", status: "Wrong", word_id: word1.id

word_answer3 = WordAnswer.create! content: "3", status: "Wrong", word_id: word1.id

word_answer4 = WordAnswer.create! content: "4", status: "Wrong", word_id: word1.id

word_answer5 = WordAnswer.create! content: "5", status: "Wrong", word_id: word2.id

word_answer6 = WordAnswer.create! content: "6", status: "Correct", word_id: word2.id

word_answer7 = WordAnswer.create! content: "7", status: "Wrong", word_id: word2.id

word_answer8 = WordAnswer.create! content: "8", status: "Wrong", word_id: word2.id

word_answer9 = WordAnswer.create! content: "9", status: "Wrong", word_id: word3.id

word_answer10 = WordAnswer.create! content: "10", status: "Wrong", word_id: word3.id

word_answer11 = WordAnswer.create! content: "11", status: "Correct", word_id: word3.id

word_answer12 = WordAnswer.create! content: "12", status: "Wrong", word_id: word3.id

word_answer13 = WordAnswer.create! content: "13", status: "Correct", word_id: word4.id

word_answer14 = WordAnswer.create! content: "14", status: "Wrong", word_id: word4.id

word_answer15 = WordAnswer.create! content: "15", status: "Wrong", word_id: word4.id

word_answer16 = WordAnswer.create! content: "16", status: "Wrong", word_id: word4.id

word_answer17 = WordAnswer.create! content: "17", status: "Wrong", word_id: word5.id

word_answer18 = WordAnswer.create! content: "18", status: "Correct", word_id: word5.id

word_answer19 = WordAnswer.create! content: "19", status: "Wrong", word_id: word5.id

word_answer20 = WordAnswer.create! content: "20", status: "Wrong", word_id: word5.id

# Lesson
lesson1 = Lesson.create! user_id: user1.id, category_id: category1.id

# Lesson Words

lesson_words1 = LessonWord.create! lesson_id: lesson1.id, word_id: word1.id, word_answer_id: word_answer1.id

lesson_words2 = LessonWord.create! lesson_id: lesson1.id, word_id: word2.id, word_answer_id: word_answer7.id

lesson_words3 = LessonWord.create! lesson_id: lesson1.id, word_id: word3.id, word_answer_id: word_answer12.id

lesson_words4 = LessonWord.create! lesson_id: lesson1.id, word_id: word4.id, word_answer_id: word_answer14.id

lesson_words5 = LessonWord.create! lesson_id: lesson1.id, word_id: word5.id, word_answer_id: word_answer18.id
