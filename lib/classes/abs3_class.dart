abstract class BankAccount {
  int accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(
      {required this.accountNumber, required this.accountHolderName, required this.balance});


  void deposit(double enterAmount) {
    balance += enterAmount;
    print("Your Balance After deposit = $balance");
  }

  void withDrawal(double enterAmount) {
    if (balance > enterAmount) {
      balance -= enterAmount;
      print("Your Balance After withDrawal = $balance");
    } else {
      print("Insufficient balance");
    }
  }

}

class SavingsAccount extends BankAccount{
  double interestRate;

  SavingsAccount({
    required this.interestRate,required super.accountNumber,
    required super.accountHolderName, required super.balance
  });

  void calculatedAndAddInterest() {
    double interest = balance * (interestRate / 100);
    balance += interest;
    print("Added interest of $interest, New balance:$balance");
  }
}

class CheckingAccount extends BankAccount {
  double fee;

  CheckingAccount({
    required this.fee,required super.accountNumber, required super.accountHolderName, required super.balance
  });

  void deductFee() {
    if (balance >= fee) {
      balance -= fee;
      print("Deducted fee of $fee. New balance: $balance");
    } else {
      print("Insufficient balance to deduct fee.");
    }
  }
}