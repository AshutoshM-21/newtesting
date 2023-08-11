import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newtesting/provider/api_service.dart';
import 'package:newtesting/provider/product_data.dart';
import 'package:nexaflow_flutter_sdk/nexaflow_flutter_sdk.dart';
import 'package:http/http.dart' as http;

import 'package:nexaflow_flutter_sdk/src/models/page.dart' as nexaflow;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NexaflowSDK api = NexaflowSDK(apiKey: 'iYk8yLsF4Q+/U');
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    try {
      var page = await api.getPageById(
        websiteId: '64d3200e2aed52cfe16ddddf',
        pageId: '64d320462aed52cfe16ddde7',
      );

      var productsBlock = page.blocks.firstWhere((b) => b.blockName == 'Products');
      var productsData = productsBlock.blockData as List<Map<String, dynamic>>;

      setState(() {
        products = productsData.map((item) => Product.fromJson(item)).toList();
      });
    } catch (error) {
      print("Error fetching products: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: ProductList(products: products),
      ),
    );
  }
}
class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (ctx, i) {
        return ProductItem(product: products[i]);
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      leading: Image.network(product.image),
      trailing: Text(product.price),
    );
  }
}