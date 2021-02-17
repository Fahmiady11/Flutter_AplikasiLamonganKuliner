class Space {
  int id;
  String name;
  String imageUrl;
  String price;
  String village;
  String subDistrict;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    this.subDistrict,
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.village,
    this.rating,
    this.address,
    this.mapUrl,
    this.numberOfBedrooms,
    this.numberOfCupboards,
    this.numberOfKitchens,
    this.phone,
    this.photos,
  });

}
