# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

survey = Survey.create({ name: "This is a Pisano Survey" })
question1 = Question.create({ title: "How was your experience with us today", type: "choice", survey: survey })
question2 = Question.create({ title: "Please explain the reason for your choice", type: "text", survey: survey })
options = Option.create([{ title: "Very Good", question: question1 }, { title: "Good", question: question1 },
                         { title: "Neutral", question: question1 }, { title: "Bad", question: question1 }, { title: "Very Bad", question: question1 }])
