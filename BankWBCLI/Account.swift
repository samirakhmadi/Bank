//
//  Account.swift
//  BankWBCLI
//
//  Created by Samir on 25.06.2024.
//

import Foundation

struct Account {
    var id: Int
    var balance: Double

    mutating func deposit(amount: Double) {
        balance += amount
    }

    mutating func withdraw(amount: Double) -> Bool {
        if amount <= balance {
            balance -= amount
            return true
        } else {
            print("Недостаточно средств на счете \(id)")
            return false
        }
    }
}
