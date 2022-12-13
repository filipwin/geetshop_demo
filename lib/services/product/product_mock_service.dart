import 'dart:math';

import 'package:getshop_demo/data/product/product.dart';
import 'package:getshop_demo/data/product/product_category.dart';
import 'package:getshop_demo/services/product/product_service.dart';

import '../../util/blah_generator.dart';

class ProductMockService implements ProductService {
  static const _mockResponseDelay = Duration(seconds: 2);
  static const _maxNumberOfWatchers = 30;

  @override
  Future<List<Product>> getProducts(ProductCategory category) {
    final List<Product> productList;
    switch (category) {
      case ProductCategory.smartphone:
        productList = _mockSmartphoneProducts;
        break;
      case ProductCategory.tv:
        productList = _mockTvProducts;
        break;
      case ProductCategory.headphone:
        productList = _mockHeadphoneProducts;
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
      (i) => Random(DateTime.now().millisecondsSinceEpoch).nextInt(_maxNumberOfWatchers) + 1,
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

final _mockTvProducts = [
  Product(
    id: 10,
    category: ProductCategory.tv,
    name: 'Philips 65″ 4K UHD LED Smart TV – 65PUS7607',
    price: 899.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://images.philips.com/is/image/PhilipsConsumer/65PUS7607_12-IMS-en_GB?\$jpglarge\$&wid=1250',
    starRating: 4.2,
  ),
  Product(
    id: 11,
    category: ProductCategory.tv,
    name: 'Samsung 32 Inch UE32T4307 Smart HD Ready HDR LED TV',
    price: 209.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://media.4rgos.it/s/Argos/8893271_R_SET?\$Main768\$&w=620&h=620',
    starRating: 4.1,
  ),
  Product(
    id: 12,
    category: ProductCategory.tv,
    name: 'MANTA TV 24LHN120D 24”',
    price: 149.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://www.flamingo.mt/wp-content/uploads/2022/07/manta24-2.png',
    starRating: 2.7,
  ),
  Product(
    id: 13,
    category: ProductCategory.tv,
    name: 'NOKIA QLED 50" 4K UHD 8GB MEM 1.5GB RAM SMART ANDROID TV',
    price: 399.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0379/9256/2732/products/Nokia_Smart_TV_4300D_front_webshop_1920x1920_23ec040e-9048-4d96-84ce-52ef0e486304_1024x1024@2x.jpg?v=1667471855',
    starRating: 3.5,
  ),
  Product(
    id: 14,
    category: ProductCategory.tv,
    name: 'Toshiba 50" Borderless Ultra HD Android TV HDR & Dolby Vision - 50UA6B63DG',
    price: 379.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://digitalzone.com.mt/media/catalog/product/cache/a41383e746bb224b450cd535403bfd9b/5/5/55UA6B63DG_1_1_1.jpg',
    starRating: 4.6,
  ),
];

final _mockHeadphoneProducts = [
  Product(
    id: 20,
    category: ProductCategory.headphone,
    name: 'Sony WH-1000XM4',
    price: 289.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://webobjects2.cdw.com/is/image/CDW/6325292?\$product-main\$',
    starRating: 5.0,
  ),
  Product(
    id: 21,
    category: ProductCategory.headphone,
    name: 'Bose QuietComfort 35 II',
    price: 334.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://www.icentre.com.mt/images/thumbs/0016892_bose-quietcomfort-35-ii-wireless.jpeg',
    starRating: 4.6,
  ),
  Product(
    id: 22,
    category: ProductCategory.headphone,
    name: 'Beats Solo 3 Headphones',
    price: 239.0,
    description: BlahGenerator.generate(),
    imageUrl: 'https://icentre.com.mt/images/thumbs/0008081_beats-solo-3-wireless-on-ear-headphones.jpeg',
    starRating: 3.8,
  ),
  Product(
    id: 23,
    category: ProductCategory.headphone,
    name: 'Sennheiser MOMENTUM 4',
    price: 459.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://i.guim.co.uk/img/media/0d20865baf35a0bb54a1525e286b795587e3ffec/452_332_4203_2521/master/4203.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=b5f9b8bfbc3986e5118030cb84db7aad',
    starRating: 4.8,
  ),
  Product(
    id: 24,
    category: ProductCategory.headphone,
    name: 'Pioneer DJ HDJ-X5BT-N',
    price: 149.0,
    description: BlahGenerator.generate(),
    imageUrl:
        'https://thenotebookcentre.com.mt/wp-content/uploads/2022/08/Pioneer-HDJ-X5BT_thenotebookcentre.com_.mt_.png',
    starRating: 4.3,
  ),
];
