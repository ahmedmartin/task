class UserResponce {
  static Map<String, dynamic> data(Map<String, dynamic> header) {
    print('responce user with header $header');
    Map<String, dynamic> temp = {
      'id': 1,
      'first name': 'ahmed',
      'last name': 'sobhy',
      'email': 'martenahmed6@gmail.com',
      'phone': '01151155821',
      'age': 26,
    };
    temp.addAll(header);
    return temp;
  }
}
