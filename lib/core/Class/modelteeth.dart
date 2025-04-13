class Tooth {
  final String name;
  final String description;

  Tooth({required this.name, required this.description});

  factory Tooth.fromJson(Map<String, dynamic> json) {
    return Tooth(
      name: json['name'],
      description: json['description'],
    );
  }
}



// body: Container(
// child: GetBuilder<ToothControllerImp>(builder: (controller){
// if (controller.teethList.isEmpty) {
// return Center(child: CircularProgressIndicator());
// }
// return ListView.builder(
// itemCount: controller.teethList.length,
// itemBuilder: (context, index) {
// final tooth = controller.teethList[index];
// return ListTile(
// title: Text(tooth.name),
// subtitle: Text(tooth.description),
// );
// },
// );
// },
// ),
// ),