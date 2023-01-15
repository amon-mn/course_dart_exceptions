import 'dart:io';
import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  //Account accountTest = Account(name: "Amon", balance: -200, isAuthenticated: true);

  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try{
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 500);
    // Observando resultado
    if(result){
      print("Transação concluída com sucesso!");
    }
  } on SenderIdInvalidExeption catch (exception){
    print(exception);
    print("O ID '${exception.idSender}' do remetente não é um ID válido.");
  } on ReceiverIdInvalidExeption catch (exception) {
    print(exception);
    print("O ID '${exception.idReceiver}' do destinatário não é um ID válido.");
  } on SenderNotAuthenticatedExeption catch (exception) {
    print(exception);
    print("O usuário remetente de ID '${exception.idSender}' não está autenticado.");
  } on ReceiverNotAuthenticatedExeption catch (exception) {
    print(exception);
    print("O usuário destinatário de ID '${exception.idReceiver}' não está autenticado.");
  } on SenderBalanceLowerThanAmountExeption catch (exception){
    print(exception);
    print("O usuário de ID '${exception.idSender}' tentou fazer uma transferência de ${exception.amount} reais porém o saldo disponível em sua conta é de ${exception.senderBalance} reais");
  } on Exception{
    print("Algo deu errado!");
  }

}

//
// void testingNullSafety(){
//   Account? myAccount = Account(name: "Amon", balance: 800, isAuthenticated: true);
//
//   //Simulando uma conexão externa
//
//   Random rng = Random();
//   int randomNumber = rng.nextInt(10);
//   print(randomNumber);
//   if(randomNumber <=5){
//     myAccount.createdAt = DateTime.now();
//   }
//   print(myAccount.runtimeType);
//
//   print(myAccount.createdAt);
//   print(myAccount.createdAt.day);
//
//   //Teste forçado que não funciona
//   //print(myAccount.balance);
//
//   //Conversão direta: Má prática
//   //print(myAccount!.balance);
//
//   // Teste usando if-else para conferir a possibilidade de nulo
//   if(myAccount != null){
//     print(myAccount.balance);
//   } else {
//     print("Conta nula.");
//   }
//
//   // Teste com operador ternário
//   print(myAccount != null ? myAccount.balance : "Conta nula.");
//
//   // Chamada segura
//   print(myAccount?.balance);
//
// }




