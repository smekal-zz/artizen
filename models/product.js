var mongoose = require('mongoose'),
    productSchema = mongoose.Schema({
      _id: String,
      title:String,
      description:String,
      price:Double,
      imageUrl:String
      
    }),
    Product = mongoose.model('Product', productSchema);

module.exports = Product;