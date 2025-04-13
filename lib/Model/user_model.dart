class user_model{
  String name,number,image,id,email;

  static var from;



 
  user_model({required this.name,required this.number,required this.image, required this.email, required this.id});
  user_model.from_json(map):this(
    id:map['id'],
    name:map['name'],
    number:map['number'],
    email:map['email'],
    image:map['image'],
  );



to_json(){
  return {
    'id': id,
    'name': name,
    'number': number,
    'email': email,
    'image': id,
  };
}}