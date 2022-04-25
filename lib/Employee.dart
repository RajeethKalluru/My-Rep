class Employee {
  int? id;
  String? name;
  String? imageUrl;

  //Employee({this.id, this.name});

  Employee(int id, String name, String imageUrl) {
    this.id = id;
    this.name = name;
    this.imageUrl = imageUrl;
  }

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
