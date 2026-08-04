class productModel{
  int id;
  String title;
  double reg_price;
  double dis_price;
  int? rating;

  productModel({
    required this .id ,required this.title,required this. reg_price,
    required this.dis_price,this.rating
});

}