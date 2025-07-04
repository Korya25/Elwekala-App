import 'package:elwekala/features/favorites/presentation/widgets/empty_favorite.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_products.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> favoriteProducts = [
      Product(
        id: "sdfgc",
        status: "New",
        category: 'Dell',
        name: 'Dell 13',
        price: 30,
        description:
            "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor",
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
        id: "sdfgc",
        status: "New",
        category: 'Dell',
        name: 'Dell 13',
        price: 30,
        description:
            "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor",
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
        id: "sdfgc",
        status: "New",
        category: 'Dell',
        name: 'Dell 13',
        price: 30,
        description:
            "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor",
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
        id: "sdfgc",
        status: "New",
        category: 'Dell',
        name: 'Dell 13',
        price: 30,
        description:
            "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor",
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

    return Scaffold(
      appBar: AppBar(title: Text('My Favorites')),
      body: favoriteProducts.isEmpty
          ? EmptyFavoriteList()
          : CustomScrollView(
              slivers: [SliverGridProducts(products: favoriteProducts)],
            ),
    );
  }
}
