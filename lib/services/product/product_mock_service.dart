import 'dart:math';

import 'package:getshop_demo/data/product/product.dart';
import 'package:getshop_demo/data/product/product_category.dart';
import 'package:getshop_demo/services/product/product_service.dart';

import '../../util/blah_generator.dart';

class ProductMockService implements ProductService {
  static const _mockResponseDelay = Duration(seconds: 2);

  @override
  Future<List<Product>> getProducts(ProductCategory category) {
    final List<Product> productList;
    switch (category) {
      case ProductCategory.smartphone:
        productList = _mockSmartphoneProducts;
        break;
      default:
        productList = [];
    }

    return Future.delayed(_mockResponseDelay, () => productList);
  }

  @override
  Stream<int> getWatchers(int productId) {
    return Stream<int>.periodic(
      _mockResponseDelay,
      (i) => Random(DateTime.now().millisecondsSinceEpoch).nextInt(100),
    );
  }
}

final _mockSmartphoneProducts = [
  Product(
    id: 1,
    category: ProductCategory.smartphone,
    name: 'Xiaomi Redmi Note 11',
    price: 180.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://forestals.com/wp-content/uploads/2022/05/xiaomi_redmi_note_11_pro_plus_5g_azul_01_l.jpg',
    starRating: 4.6,
  ),
  Product(
    id: 2,
    category: ProductCategory.smartphone,
    name: 'iPhone 14 Pro',
    price: 999.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://forestals.com/wp-content/uploads/2022/09/Apple-iPhone-14-Pro-iPhone-14-Pro-Max-silver-220907_inline.jpg.large_.jpg',
    starRating: 4.9,
  ),
  Product(
    id: 3,
    category: ProductCategory.smartphone,
    name: 'Samsung Galaxy S22',
    price: 1099.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://soundmachine.com.mt/wp-content/uploads/2022/02/S22_Ultra_Phantom_White_Site.jpg',
    starRating: 4.4,
  ),
  Product(
    id: 4,
    category: ProductCategory.smartphone,
    name: 'Oneplus 7',
    price: 199.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://fdn2.gsmarena.com/vv/pics/oneplus/oneplus-7-pro-1.jpg',
    starRating: 4.6,
  ),
  Product(
    id: 5,
    category: ProductCategory.smartphone,
    name: 'Huawei P40 Pro',
    price: 799.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://fdn2.mobgsm.com/vv/pics/huawei/huawei-p40-pro-01.jpg',
    starRating: 3.7,
  ),
  Product(
    id: 6,
    category: ProductCategory.smartphone,
    name: 'Vivo V19',
    price: 349.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://fdn2.mobgsm.com/vv/pics/vivo/vivo-v19-1.jpg',
    starRating: 4.1,
  ),
  Product(
    id: 7,
    category: ProductCategory.smartphone,
    name: 'Google Pixel 6a',
    price: 449.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6509/6509962_sd.jpg;maxHeight=640;maxWidth=550',
    starRating: 4.4,
  ),
];
