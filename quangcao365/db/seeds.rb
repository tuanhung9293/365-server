# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'quangcao365@admin.com', 
            nickname: 'meo', 
            name: 'DUONG', 
            password: "quangcao365",
            password_confirmation: "quangcao365",
            phone_kinh_doanh: "097 611 8623",
            phone_ky_thuat: "091619 5705",
            phone_thiet_ke: "01652 755 095")

Report.create(
    name:"Tuan ho",
    phone: "0123456789",
    email: "tuannho@novahub.vn",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
    It has survived not only five centuries, but also the leap into electronic typesetting, 
    remaining essentially unchanged. It was popularised in the 1960s with the release of 
    Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing 
    software like Aldus PageMaker including versions of Lorem Ipsum."
)
