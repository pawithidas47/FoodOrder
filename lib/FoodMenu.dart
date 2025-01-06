import 'dart:math'; // นำเข้าคลาส Random

class MenuService {
  static final random = Random(); // สร้างอินสแตนซ์ของ Random

  // ฟังก์ชันเลือกเมนูแบบสุ่ม
  static Map<String, dynamic> getRandomMenu() {
    final List<Map<String, dynamic>> menuList = [
      {'name': 'Pizza', 'icon': '🍕', 'ingredients': ['Dough', 'Tomato Sauce', 'Cheese', 'Pepperoni'], 'price': 8.99, 'review': 4.5},
      {'name': 'Burger', 'icon': '🍔', 'ingredients': ['Bun', 'Beef Patty', 'Lettuce', 'Tomato', 'Cheese'], 'price': 6.49, 'review': 4.2},
      {'name': 'Sushi', 'icon': '🍣', 'ingredients': ['Rice', 'Nori', 'Fish', 'Wasabi'], 'price': 12.99, 'review': 4.8},
      {'name': 'Pasta', 'icon': '🍝', 'ingredients': ['Pasta', 'Tomato Sauce', 'Garlic', 'Parmesan'], 'price': 7.99, 'review': 4.3},
      {'name': 'Salad', 'icon': '🥗', 'ingredients': ['Lettuce', 'Tomato', 'Cucumber', 'Dressing'], 'price': 5.49, 'review': 4.0},
      {'name': 'Steak', 'icon': '🥩', 'ingredients': ['Beef', 'Salt', 'Pepper', 'Butter'], 'price': 15.99, 'review': 4.7},
      {'name': 'Ice Cream', 'icon': '🍨', 'ingredients': ['Milk', 'Sugar', 'Vanilla', 'Cream'], 'price': 3.99, 'review': 4.1},
      {'name': 'Taco', 'icon': '🌮', 'ingredients': ['Tortilla', 'Beef', 'Cheese', 'Lettuce', 'Salsa'], 'price': 4.49, 'review': 4.3},
      {'name': 'Donut', 'icon': '🍩', 'ingredients': ['Flour', 'Sugar', 'Milk', 'Eggs', 'Chocolate Glaze'], 'price': 1.99, 'review': 4.2},
      {'name': 'Fried Chicken', 'icon': '🍗', 'ingredients': ['Chicken', 'Flour', 'Eggs', 'Spices', 'Oil'], 'price': 9.99, 'review': 4.6},
    ];

    // เลือกเมนูแบบสุ่ม
    var selectedMenu = menuList[random.nextInt(menuList.length)];

    // ตรวจสอบค่า review และ price ที่อาจเป็น null
    selectedMenu['price'] = selectedMenu['price'] ?? 0.0;
    selectedMenu['review'] = selectedMenu['review'] ?? 0.0;

    return selectedMenu;
  }

  // ฟังก์ชันคำนวณราคาทั้งหมด
  static double getTotalPrice(List<Map<String, dynamic>> menu) {
    return menu.fold(0, (total, item) => total + (item['price'] as double));
  }
}
