
int counter = 0 ;

class Transaction {
  int? id ;
  String? title ;
  double? price ;
  DateTime? date;

  Transaction(String title , double price) {
    this.title = title ;
    this.price = price ;
    this.id = counter ;
    this.date = DateTime.now();
    counter = counter + 1;
  } 

  

}