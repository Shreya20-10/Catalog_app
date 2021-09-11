import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "https://www-konga-com-res.cloudinary.com/w_auto,f_auto,fl_lossy,dpr_auto,q_auto/media/catalog/product/B/A/_1618840694.jpg"
        //"https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&hei=1112&fmt=jpeg&qlt=80&.v=1604021663000"
  ),

  Item(
        id: 2,
        name: "Pixel 5",
        desc: "Google Pixel phone 5th generation",
        price: 699,
        color: "#00ac51",
        image: "https://m.media-amazon.com/images/I/81-fNmQqlLL._SL1500_.jpg"
        //"https://cdn.dxomark.com/wp-content/uploads/medias/post-60399/google_pixel_5_frontback.jpeg"
    ),

    Item(
        id: 3,
        name: "One Plus 8T",
        desc: "This phone is loaded with 8 GB RAM, 128 GB Internal storage.",
        price: 1099,
        color: "#e0bfae",
        image: "https://static.digit.in/default/36b13ef36655eae101b44c7e0f14d79eb63a8935.jpeg?tr=1200"
        //"https://cdn.pocket-lint.com/r/s/1200x/assets/images/155111-laptops-review-apple-macbook-air-review-m1-late-2020-it-s-getting-better-all-the-time-image2-izimkjs56z.jpg"
    ),

    Item(
        id: 4,
        name: "Playstation 5",
        desc: "Sony Playstation 5th generation",
        price: 500,
        color: "#544ee4",
        image: "https://elsneinc.com/wp-content/uploads/2018/04/sony_playstation_7-600x600.png"
       //"https://i.gadgets360cdn.com/products/large/sony-ps5-649x800-1592631239.jpeg"
    ),

    Item(
        id: 5,
        name: "iPad Pro",
        desc: "Apple iPad Pro 2020 edition",
        price: 799,
        color: "#f73984",
        image: "https://images-eu.ssl-images-amazon.com/images/I/41DIPKZIN5L._SY445_SX342_QL70_ML2_.jpg"
    ),

    Item(
        id: 6,
        name: "Airpods Pro",
        desc: "Apple Airpods Pro 1st generation",
        price: 200,
        color: "#e3e4e9",
        image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MWP22?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1591634795000"
    ),

    Item(
        id: 7,
        name: "Galaxy S21 Ultra",
        desc: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 1299,
        color: "#1c1c1c",
        image: "https://www.gizmochina.com/wp-content/uploads/2020/11/Samsung-Galaxy-S21-Ultra-5G-500x500.jpg"
    ),
    Item(
        id: 8,
        name: "Galaxy S21",
        desc: "Samsung Galaxy S21 2021 edition",
        price: 1000,
        color: "#7c95eb",
        image: "https://www.mytrendyphone.eu/images/Samsung-Galaxy-S21-5G-128GB-Phantom-Grey-8806090892776-18012021-01-p.jpg"
    )

  ];

  Item getById(int id)=>
      items.firstWhere((element) => element.id == id, orElse: null);
}

class Item {
  int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"],
    );
  }
  toMap()=> {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,

  };
}
