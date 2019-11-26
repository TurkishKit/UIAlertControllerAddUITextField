//
//  ViewController.swift
//  UIAlertWithUITextField
//
//  Created by Ufuk Köşker on 26.11.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentAlertButtonTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Ad - Soyad", message: "Ad - Soyad alanlarını doldurunuz.", preferredStyle: .alert)
        
        alert.addTextField { (adTextField) in
            adTextField.placeholder = "Ad"
        }
        
        alert.addTextField { (soyadTextField) in
            soyadTextField.placeholder = "Soyad"
        }

        let okButton = UIAlertAction(title: "Tamam", style: .default) { (_) in
            print("\(alert.textFields![0].text ?? "")" + " " + "\(alert.textFields![1].text ?? "")")
        }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
        
    }
}

