import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import '../models/food.dart';

const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'Japanese', color: Colors.deepOrange),
  Category(id: 2, content: 'VietNam', color: Colors.lightGreenAccent),
  Category(id: 3, content: 'ThaiLan', color: Colors.deepPurpleAccent),
  Category(id: 4, content: 'China', color: Colors.greenAccent),
  Category(id: 5, content: 'Italy', color: Colors.blue),
];

var FAKE_FOODS = [
  Food(
      name: "Sushi",
      urlImage:
          "https://vcdn1-dulich.vnecdn.net/2014/04/25/3-6861-1398417883.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=i671otheG2TfNmqkaUjuGA",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['sushi-meshi', 'nori', 'condiments'],
      categoryId: 1,
      money: 75000),
  Food(
      name: "Panna Cotta",
      urlImage:
          "https://www.tourchauau.net/images/news/van-hoa-am-thuc/top-10-mon-y-2.jpeg",
      duration: Duration(minutes: 13),
      complexity: Complexity.Medium,
      ingredients: ['sushi-meshi', 'nori', 'condiments'],
      categoryId: 5,
      money: 155000),
  Food(
      name: "Gà Parmigiana",
      urlImage:
          "https://www.tourchauau.net/images/news/van-hoa-am-thuc/top-10-mon-y-3.jpg",
      duration: Duration(minutes: 22),
      complexity: Complexity.Medium,
      ingredients: ['sushi-meshi', 'nori', 'condiments'],
      categoryId: 5,
      money: 125000),
  Food(
      name: "Rượu Sake ",
      urlImage:
          "https://www.sashimihome.com/wp-content/uploads/R%C6%B0%E1%BB%A3u-Sake.jpg",
      duration: Duration(minutes: 2),
      complexity: Complexity.Medium,
      ingredients: ['gạo', 'súc xíc', 'cay'],
      categoryId: 1,
      money: 450000),
  Food(
      name: "Shabu-shabu",
      urlImage:
      "https://www.sashimihome.com/wp-content/uploads/m%C3%B3n-%C4%83n-%E1%BB%9F-nh%E1%BA%ADt-b%E1%BA%A3n.jpg",
      duration: Duration(minutes: 2),
      complexity: Complexity.Medium,
      ingredients: ['gạo', 'súc xíc', 'cay'],
      categoryId: 1,
      money: 450000),
  Food(
      name: "Mì Soba",
      urlImage:
      "https://www.sashimihome.com/wp-content/uploads/m%C3%B3n-%C4%83n-nh%E1%BA%ADt-b%E1%BA%A3n-truy%E1%BB%81n-th%E1%BB%91ng.jpg",
      duration: Duration(minutes: 18),
      complexity: Complexity.Medium,
      ingredients: ['gạo', 'súc xíc', 'cay'],
      categoryId: 1,
      money: 75000),
  Food(
      name: "Mì Udon",
      urlImage:
      "https://www.sashimihome.com/wp-content/uploads/c%C3%A1c-m%C3%B3n-%C4%83n-%E1%BB%9F-nh%E1%BA%ADt-b%E1%BA%A3n.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Medium,
      ingredients: ['gạo', 'súc xíc', 'cay'],
      categoryId: 1,
      money: 55000),
  Food(
      name: "Phở",
      urlImage:
          "https://imgs.vietnamnet.vn/Images/2017/04/02/09/20170402095649-pho-1.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['bún', 'xương', 'thịt bò'],
      categoryId: 2,
      money: 25000),
  Food(
      name: "Bánh mỳ",
      urlImage:
          "https://capichi.vn/wp-content/uploads/2020/08/b%C3%A1nh-m%E1%BB%B3-ch%E1%BB%ADi.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['bánh mỳ', 'súc xíc', 'rau ngò'],
      categoryId: 2,
      money: 12000),
  Food(
      name: "Mỳ quảng",
      urlImage: "https://amthucvietnam.zohosites.com/files/mi-quang-ga.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['thịt gà', 'mỳ sợi', 'xương'],
      categoryId: 2,
      money: 20000),
  Food(
      name: "Canh cá",
      urlImage:
          "https://toinayangi.vn/wp-content/uploads/2015/06/c%C3%A1ch-n%E1%BA%A5u-chanh-chua-ngon.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 2,
      money: 40000),
  Food(
      name: "Tom Yum Goong",
      urlImage:
      "https://intertour.vn/uploads/media/news/ba08e471-013f-4bd9-9d2c-f3f68799159a.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 3,
      money: 38000),
  Food(
      name: "Khao niao mamuang",
      urlImage:
      "https://www.vacationtravel.com.vn/CustomFolder/images/amthuc/Khao-niao-mamuang-3.jpg",
      duration: Duration(minutes: 18),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 3,
      money: 98000),
  Food(
      name: " Som Tam",
      urlImage:
      "https://intertour.vn/uploads/media/news/12631a4a-1ebb-48bf-9853-eef9ad0229c0.jpg",
      duration: Duration(minutes: 8),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 3,
      money: 98000),
  Food(
      name: "Gaeng Daeng",
      urlImage:
      "https://www.templeofthai.com/images/recipes/red-curry-chicken-550x560.jpg",
      duration: Duration(minutes: 17),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 3,
      money: 120000),
  Food(
      name: "Khao man kai",
      urlImage:
      "https://www.vacationtravel.com.vn/CustomFolder/images/amthuc/Yam-pla-duk-fu16.jpg",
      duration: Duration(minutes: 17),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 3,
      money: 59000),

  Food(
      name: "Vịt quay Bắc Kinh ",
      urlImage:
      "https://hoanghaigroup.com/wp-content/uploads/2020/07/Mon-an-Trung-Quoc-Vit-quay-bac-kinh.jpg",
      duration: Duration(minutes: 35),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 4,
      money: 350000),
  Food(
      name: "Tôm xào hạt điều",
      urlImage:
      "https://hoanghaigroup.com/wp-content/uploads/2020/07/Mon-an-Trung-Quoc-Tom-xao-hat-dieu.jpg",
      duration: Duration(minutes: 27),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 4,
      money: 250000),
  Food(
      name: "Đậu phụ sốt Tứ Xuyên",
      urlImage:
      "https://hoanghaigroup.com/wp-content/uploads/2020/07/Mon-an-Trung-Quoc-dau-phu-thoi.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 4,
      money: 125000),
  Food(
      name: "Đậu phụ thối",
      urlImage:
      "https://hoanghaigroup.com/wp-content/uploads/2020/07/Mon-an-Trung-Quoc-dau-phu-tu-xuyen.jpg",
      duration: Duration(minutes: 10),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 4,
      money: 95000),
  Food(
      name: "Bánh Tiramisu",
      urlImage:
      "https://www.tourchauau.net/images/news/van-hoa-am-thuc/top-10-mon-y-7.jpg",
      duration: Duration(minutes: 13),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 5,
      money: 55000),
  Food(
      name: "Súp Minestrone",
      urlImage:
      "https://www.tourchauau.net/images/news/van-hoa-am-thuc/top-10-mon-y-9.jpg",
      duration: Duration(minutes: 22),
      complexity: Complexity.Medium,
      ingredients: ['cá', 'rau', 'cà chua'],
      categoryId: 5,
      money: 49000),

];
