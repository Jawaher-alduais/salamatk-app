class user_model{
  String name,number,email;

  static var from;



 
  user_model({required this.name,required this.number, required this.email});
  user_model.from_json(map):this(
    name:map['name_u'],
    number:map['email_u'],
    email:map['phone_u'],

  );



to_json(){
  return {

    'name_u': name,
    'email_u': number,
    'phone_u': email,

  };
}}