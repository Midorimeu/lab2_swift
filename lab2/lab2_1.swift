class BankAccount {
   let accountNumber: String
   let accountOwner: String
   var balance: Double

   init(accountNumber: String, accountOwner: String, startingBalance: Double) {
       self.accountNumber = accountNumber
       self.accountOwner = accountOwner
       self.balance = startingBalance
   }

   func deposit(_ amount: Double) {
       balance += amount
       print("Deposit of \(amount) made to account \(accountNumber)\nNew balance is \(balance).")
   }

   func withdraw(_ amount: Double) {
       if balance >= amount {
           balance -= amount
           print("\nWithdrawal of \(amount) made from account \(accountNumber)\nNew balance is \(balance)")
       } else {
           print("Insufficient funds for withdrawal from account \(accountNumber)")
       }
   }

   func getBalance() -> Double {
       return balance
   }

   func showInfo() {
       print("\n\nAccount Number: \(accountNumber)")
       print("Account Owner: \(accountOwner)")
       print("Current Balance: \(balance)")
   }
}

let account1 = BankAccount(accountNumber: "13122003", accountOwner: "Khon Konstantin", startingBalance: 25000.0)
account1.deposit(5000.0)
account1.withdraw(3000.0)
account1.showInfo()