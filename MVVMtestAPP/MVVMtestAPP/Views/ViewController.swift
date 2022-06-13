//
//  ViewController.swift
//  MVVMtestAPP
//
//  Created by Сергей Саченко on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageScreen: UIImageView!
    @IBOutlet weak var loginLabelTop: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    var viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    @IBAction func loginButtonPress(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: passField.text ?? "")
    }
    
    
    func bindViewModel() {
        viewModel.statusText.bind ({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bind ({(statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}



