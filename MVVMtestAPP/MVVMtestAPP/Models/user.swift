//
//  user.swift
//  MVVMtestAPP
//
//  Created by Сергей Саченко on 13.06.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "sachenko", password: "12345")
    ]
}
