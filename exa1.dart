class Camera {
  int _id;
  String _brand;
  String _color;
  int _price;

  Camera(this._id, this._brand, this._color, this._price);
  void SetAll(int id, String brand, String color, int price) {
    this._id = id;
    this._brand = brand;
    this._color = color;
    this._price = price;
  }

  int getid() {
    return _id;
  }

  String getbrand() {
    return _brand;
  }

  String getcolor() {
    return _color;
  }

  int getprice() {
    return _price;
  }
}

///////
abstract class Bottle {
  void open();
  factory Bottle() {
    cokeBottle c = cokeBottle();
    return c;
  }
}

class cokeBottle implements Bottle {
  @override
  void open() {
    print("coke bottle is opened");
  }
}

main() {
  //////
  Camera c = Camera(1, "d", "c", 100);
  c.SetAll(2, "brand", "white", 230);
  print(c.getid());
  print(c.getbrand());
  print(c.getcolor());
  print(c.getprice());
  ////////
  cokeBottle b = cokeBottle();
  b.open();
  //
  Bottle w = Bottle();
  w.open();
}
