import 'package:elwekala/features/home/data/models/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_app_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/home_search_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16.w), child: _HomeScreenBody()),
      ),
    );
  }
}

class _HomeScreenBody extends StatefulWidget {
  const _HomeScreenBody();

  @override
  State<_HomeScreenBody> createState() => __HomeScreenBodyState();
}

class __HomeScreenBodyState extends State<_HomeScreenBody> {
  final TextEditingController _searchController = TextEditingController();

  final List<Product> products = [
  Product(
    id: "64666d3a91c71d884185b774",
    name: " Dell XPS 13",
    price: 30.819,
    description: "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png"
    ],
    company: "Dell",
    status: "New",
    countInStock: 8,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "64666de091c71d884185b778",
    name: "Dell Inspiron 15",
    price: 21.564,
    description: "The Dell Inspiron 15 is a budget-friendly laptop that doesn't skimp on features. It comes with a 10th Generation Intel Core processor, a 15.6-inch Full HD display, and up to 8GB of RAM, making it perfect for students or anyone who needs a basic laptop for everyday use.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434396/oznuauvcu9nc03jansbb.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434396/oznuauvcu9nc03jansbb.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434399/sfm6ozt4d5qfbnm7es1v.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434400/xdibaymioim4b5x9hu4q.jpg"
    ],
    company: "Dell",
    status: "New",
    countInStock: 7,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "64666e6d91c71d884185b77b",
    name: "Dell XPS 15",
    price: 24.649,
    description: " The Dell XPS 15 is a powerful and stylish laptop that's perfect for creative professionals. It features a 10th Generation Intel Core processor, a 15.6-inch 4K Ultra HD display, and up to 32GB of RAM, making it ideal for photo and video editing, graphic design, and other demanding tasks.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434531/ko95smenow1gyt5hizwm.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434531/ko95smenow1gyt5hizwm.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434539/b15hojbfjvszyd6xztza.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434540/qhsnamhd7blgeahu4t9s.png"
    ],
    company: "Dell",
    status: "Used",
    countInStock: 3,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "64666f5991c71d884185b77e",
    name: "HP Spectre x360 ",
    price: 33.904,
    description: "The HP Spectre x360 is a premium 2-in-1 laptop with a 13.3-inch Full HD touchscreen display. It features a 11th Generation Intel Core processor, up to 16GB of RAM, and up to 1TB of solid state storage, making it a great choice for professionals or anyone who needs a powerful and versatile laptop.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434772/mrwpga7k3mpobwpfxqd8.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434772/mrwpga7k3mpobwpfxqd8.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434774/qhxbcdpjpdi7lyn6knn9.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434776/yrzuvcxpeqekxgrar4ro.png"
    ],
    company: "HP",
    status: "New",
    countInStock: 7,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "64666fba91c71d884185b781",
    name: "HP Pavilion 15",
    price: 18.479,
    description: "The HP Pavilion 15 is a budget-friendly laptop that doesn't skimp on performance. It features a 10th Generation Intel Core processor, a 15.6-inch Full HD display, and up to 8GB of RAM, making it perfect for students or anyone who needs a reliable laptop for everyday use.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434872/hvecubnwagtzqwsj2sjy.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434872/hvecubnwagtzqwsj2sjy.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434873/z93mkbispfslavsyiipv.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434874/rpjxw3kaksfagdlemdre.jpg"
    ],
    company: "HP",
    status: "New",
    countInStock: 7,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "6466704691c71d884185b785",
    name: "HP Envy x360",
    price: 15.394,
    description: "The HP Envy x360 is a powerful 2-in-1 laptop that's perfect for creative professionals. It features a 11th Generation Intel Core processor, a 15.6-inch Full HD touchscreen display, and up to 16GB of RAM, making it ideal for photo and video editing, graphic design, and other demanding tasks.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434996/irn1odbpronzlbxnkhae.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434996/irn1odbpronzlbxnkhae.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435005/kijzxncv1qthiw15faq2.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435014/hfvpanarixgofooe7ulu.png"
    ],
    company: "HP",
    status: "Used",
    countInStock: 9,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "6466709891c71d884185b788",
    name: "HP Omen 15",
    price: 16.319,
    description: "The HP Omen 15 is a gaming laptop designed for serious gamers. It comes with a 10th Generation Intel Core processor, a 15.6-inch Full HD display, up to 16GB of RAM, and a dedicated NVIDIA GeForce graphics card, making it perfect for running the latest games at high settings.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435094/lu0wsiw6zp7alytlmdbx.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435094/lu0wsiw6zp7alytlmdbx.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435095/qzrsyoxgsoxjdhotfuf2.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435096/uca4w6r2c5aoslla1l5x.png"
    ],
    company: "HP",
    status: "Used",
    countInStock: 8,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "646670fb91c71d884185b78b",
    name: "Lenovo Yoga C940",
    price: 31.436,
    description: "The Lenovo Yoga C940 is a premium 2-in-1 laptop with a 14-inch Full HD touchscreen display. It features a 10th Generation Intel Core processor, up to 16GB of RAM, and up to 1TB of solid state storage, making it a great choice for professionals or anyone who needs a powerful and versatile laptop.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435187/ohuc8vkoijzwbq5lwu0r.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435187/ohuc8vkoijzwbq5lwu0r.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435193/xum7soszmdbvbumwlbxv.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435195/krsqrngpyckg4uyiux8p.png"
    ],
    company: "Lenovo",
    status: "New",
    countInStock: 2,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "6466717591c71d884185b790",
    name: "Lenovo IdeaPad 5",
    price: 17.862,
    description: "The Lenovo IdeaPad 5 is a budget-friendly laptop that delivers reliable performance. It features a 11th Generation Intel Core processor, a 15.6-inch Full HD display, and up to 16GB of RAM, making it perfect for students or anyone who needs a reliable laptop for everyday use.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435315/evyzzsxurzpnsefgy24n.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435315/evyzzsxurzpnsefgy24n.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435316/cbd6yxrdy6hnrdrgvwro.jpg",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435317/g4rqaq0tqdlrko1v0nli.jpg"
    ],
    company: "Lenovo",
    status: "New",
    countInStock: 4,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "646671d691c71d884185b793",
    name: "Lenovo ThinkPad X1 Carbon",
    price: 18.479,
    description: "The Lenovo ThinkPad X1 Carbon is a premium business laptop that's built to last. It features a 10th Generation Intel Core processor, a 14-inch Full HD display, up to 16GB of RAM, and up to 1TB of solid state storage, making it a great choice for professionals who need a powerful and reliable laptop for work.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435409/kpqzfxbtlm1nhmix7r9n.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435409/kpqzfxbtlm1nhmix7r9n.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435411/dmcon6gyp1twkake3pyx.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435414/sullwizl2jmwlpczhkhm.png"
    ],
    company: "Lenovo",
    status: "Used",
    countInStock: 11,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "6466723891c71d884185b796",
    name: "Lenovo Legion 5",
    price: 15.394,
    description: "The Lenovo Legion 5 is a gaming laptop that delivers top-notch performance. It features a 10th Generation Intel Core processor, a 15.6-inch Full HD display, up to 16GB of RAM, and a dedicated NVIDIA GeForce graphics card, making it perfect for running the latest games at high settings.",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435509/vvbthaohpg9ue6deqi9w.png",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435509/vvbthaohpg9ue6deqi9w.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435510/vy2nslkbgvbeoqyrvla0.png",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684435512/scypvufhpcw6stkediz7.jpg"
    ],
    company: "Lenovo",
    status: "Used",
    countInStock: 5,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
  Product(
    id: "648590bf94342701a6c6659b",
    name: "Apple Mac",
    price: 1000,
    description: "this wonderful laptop",
    image: "https://res.cloudinary.com/dzh2hde2n/image/upload/v1686474941/rk585k3u7cqeqs8laz2m.jpg",
    images: [
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1686474941/rk585k3u7cqeqs8laz2m.jpg",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1686474942/gbaegoowm84svart7z4a.jpg",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1686474942/iwsj2rouelhyh89vu9vp.jpg",
      "https://res.cloudinary.com/dzh2hde2n/image/upload/v1686474943/mbsm33qg4x8hj7s1auwq.jpg"
    ],
    company: "Apple",
    status: "New",
    countInStock: 10,
    rating: 0.0,
    reviews: 0,
    isFavorite: false,
  ),
];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // Search Bar
        SliverToBoxAdapter(
          child: HomeSearchBar(searchController: _searchController),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),

        // Products Grid
        SliverGridProducts(products: products),
      ],
    );
  }
}
