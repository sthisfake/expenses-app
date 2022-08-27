
int counter = 0 ;

class Transaction {
  int? id ;
  String? title ;
  double? price ;
  DateTime date = DateTime.now() ;

  Transaction(String title , double price , DateTime choosenDate) {
    this.title = title ;
    this.price = price ;
    this.id = counter ;
    this.date = choosenDate;
    counter = counter + 1;
  } 

  

}