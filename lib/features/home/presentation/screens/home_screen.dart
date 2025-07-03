import 'package:elwekala/features/home/domain/entities/product.dart';
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
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
    ),
    Product(
      id: "64666d3a91c71d884185b774",
      status: "New",
      category: "Laptops",
      name: "   Dell XPS 13",
      price: 30.819,
      description:
          "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
      image:
          "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
      images: [
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
        "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png",
      ],
      company: "Dell",
      countInStock: 8,
      sales: 9,
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
