class dataproduct
{

  String _prod_name;
  String _prod_pic;
  String _prod_old_price;
  String _prod_new_price;

  dataproduct(this._prod_name, this._prod_pic, this._prod_old_price,
      this._prod_new_price);

  String get prod_new_price => _prod_new_price;

  String get prod_old_price => _prod_old_price;

  String get prod_pic => _prod_pic;

  String get prod_name => _prod_name;
}