//
//  main.swift
//  BankWBCLI
//
//  Created by Samir on 25.06.2024.
//

import Foundation

func main() {
    let bank = Bank()

    // Создание нескольких счетов
    let account1 = bank.createAccount(initialBalance: 1000)
    let account2 = bank.createAccount(initialBalance: 500)
    let account3 = bank.createAccount(initialBalance: 2000)

    // Печать состояния всех счетов до операций
    print("Состояние счетов до операций:")
    bank.printAllAccounts()

    // Выполнение операций пополнения и перевода
    bank.deposit(to: account1, amount: 500)
    bank.transfer(from: account2, to: account3, amount: 200)

    // Печать состояния всех счетов после операций
    print("\nСостояние счетов после операций:")
    bank.printAllAccounts()
}

// Вызов главной функции
main()


