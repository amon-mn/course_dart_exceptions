class SenderIdInvalidExeption implements Exception{
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidExeption({required this.idSender});

  @override
  String toString(){
    return "$report \nID Sender: $idSender\n";
  }

}

class ReceiverIdInvalidExeption implements Exception{
  static const String report = "ReceiverIdInvalidExeption";
  String idReceiver;
  ReceiverIdInvalidExeption({required this.idReceiver});

  @override
  String toString(){
    return "$report \nID Receiver: $idReceiver\n";
  }

}

class SenderNotAuthenticatedExeption implements Exception{
  static const String report = "SenderNotAuthenticatedExeption";
  String idSender;
  SenderNotAuthenticatedExeption({required this.idSender});

  @override
  String toString(){
    return "$report \nID Sender: $idSender\n";
  }
}

class ReceiverNotAuthenticatedExeption implements Exception{
  static const String report = "ReceiverNotAuthenticatedExeption";
  String idReceiver;
  ReceiverNotAuthenticatedExeption({required this.idReceiver});

  @override
  String toString(){
    return "$report \nID Receiver: $idReceiver\n";
  }
}

class SenderBalanceLowerThanAmountExeption implements Exception{
  static const String report = "SenderBalanceLowerThanAmountExeption";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountExeption({required this.idSender, required this.senderBalance, required this.amount});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount";
  }

}