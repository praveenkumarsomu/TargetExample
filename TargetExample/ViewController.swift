//
//  ViewController.swift
//  TargetExample
//
//  Created by Praveenkumar Somu on 12/2/2562 BE.
//  Copyright © 2562 Praveenkumar Somu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAlert()
    }
    
    func getTheServerURL() -> String{
        guard let path = Bundle.main.path(forResource: "Info", ofType: "plist") else {
            return ""
        }
        
        guard let dict = NSDictionary(contentsOfFile: path) else {
            return ""
        }
        
        return dict["SERVER_URL"] as? String ?? ""
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Alert", message: getTheServerURL(), preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }

}

