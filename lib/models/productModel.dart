class ProductModel{
  String nama;
  String harga;
  String rating;
  String gambar;

  ProductModel({
    this.nama,
    this.harga,
    this.rating,
    this.gambar,
});
}
 var productList = [
   ProductModel(
     nama: 'Organic Leeks',
     harga: '4.22',
     rating: '5',
     gambar: 'assets/leeks.jpg',
   ),
   ProductModel(
     nama: 'Loose Organic Radish',
     harga: '9.92',
     rating: '5',
     gambar: 'assets/radish.jpg',
   ),
   ProductModel(
     nama: 'Organic Tomato',
     harga: '9.92',
     rating: '5',
     gambar: 'assets/tomato.jpg',
   ),
 ];