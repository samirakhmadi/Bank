//
//  Bank.swift
//  BankWBCLI
//
//  Created by Samir on 25.06.2024.
//

import Foundation

class Bank {
    private var accounts: [Int: Account] = [:]
    private var nextAccountId: Int = 1

    func createAccount(initialBalance: Double) -> Int {
        let accountId = nextAccountId
        let account = Account(id: accountId, balance: initialBalance)
        accounts[accountId] = account
        nextAccountId += 1
        return accountId
    }

    func deposit(to accountId: Int, amount: Double) {
        if var account = accounts[accountId] {
            account.deposit(amount: amount)
            accounts[accountId] = account
        } else {
            print("Счет \(accountId) не найден")
        }
    }

    func transfer(from fromAccountId: Int, to toAccountId: Int, amount: Double) {
        if var fromAccount = accounts[fromAccountId], var toAccount = accounts[toAccountId] {
            if fromAccount.withdraw(amount: amount) {
                toAccount.deposit(amount: amount)
                accounts[fromAccountId] = fromAccount
                accounts[toAccountId] = toAccount
            }
        } else {
            print("Один из счетов не найден")
        }
    }

    func printAllAccounts() {
        for (id, account) in accounts {
            print("Счет \(id): баланс \(account.balance)")
        }
    }
}

