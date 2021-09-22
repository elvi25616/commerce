# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.last.update(permission_level:1)
u = User.last
@categories = []
5.times do |t|
  c = Category.create(name:"Categoria #{t}",description:"Este es un curso del cual he aprendido mucho, le doy gracias a Dios por haberme permitido de tomar la iniciativa de hablarle a los muchachos por los cuales voy donde voy.")
  3.times do |tt|
    p = Product.new(
      p_name:"Producto #{tt}",
      p_description:"Este es un curso del cual he aprendido mucho, le doy gracias a Dios por haberme permitido de tomar la iniciativa de hablarle a los muchachos por los cuales voy donde voy.",
      p_price: 1000.00,
      p_quantify: 50,
      p_send: 200.00,
      p_available: true,
      user_id: u.id,
      )
    p.categories = [c.id]
    p.save
    HasCategory.create(product:p,category:c)
    2.times do |ttt|
      Myimage.create(
        title:"Imagen",
        description:"",
        product: p
        )
    end
  end
end
