class BankAccount{
  String _accountNumber;
  String accountHolder;
  double  _balance;

  BankAccount(this._accountNumber,this.accountHolder,this._balance);

  void depositing(double enterAmount){
    _balance=_balance+enterAmount;
    print("your  _balance become $_balance");
  }

  void withDrawing(double outAmount){
    if(_balance>outAmount){
      _balance=_balance-outAmount;
      print("your final _balance become $_balance");
    }else{
      print("Insufficient _balance");
    }
  }


  double get balance => _balance;
                                 
}