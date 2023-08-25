abstract class Account{
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance = balance + amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account{
  double interestRate;
  SavingsAccount(super.accountNumber, super.balance, this.interestRate);

  @override
  void withdraw(double amount) {

    balance = balance - amount;
    balance += balance * interestRate;

  }

}

class CurrentAccount extends Account{
  double overdraftLimit;
  CurrentAccount(super.accountNumber, super.balance, this.overdraftLimit);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance =balance - amount;
    } else {
      print("Insufficient funds.");
    }
  }
}


void main() {
  var savingsAccount = SavingsAccount(01, 5000.0, 0.025);
  savingsAccount.deposit(1000.0);
  print("Balance after depositing: ${savingsAccount.balance}");
  savingsAccount.withdraw(2000.0);
  print("Balance after withdrawaing money: ${savingsAccount.balance}");

  var currentAccount = CurrentAccount(02, 12000.0, 3200.0);
  currentAccount.deposit(1500.0);
  print("Balance after depositing: ${currentAccount.balance}");
  currentAccount.withdraw(3000.0);
  print("Balance after withdrawing money: ${currentAccount.balance}");
}