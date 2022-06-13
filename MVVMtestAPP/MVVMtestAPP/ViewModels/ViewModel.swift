//
//  ViewModel.swift
//  MVVMtestAPP
//
//  Created by Сергей Саченко on 13.06.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) )
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login failed."
            statusColor.value = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
