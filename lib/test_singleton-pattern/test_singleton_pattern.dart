class MySingleton {
  // private named constructor
  MySingleton._();
  // Or
  // MySingleton._internal();

  // وعكسهم الكونستراكتور العادى
  // MySingleton.internal();

  static final MySingleton instance = MySingleton._();

// ولو عاوز تشغل default constructor

//  بتضيف _ قبل انستنس الى فوق عشان يبقى برايفت ف ميشتغلش
//  وتكتب
//  factory MySingleton() => _instance;
}
