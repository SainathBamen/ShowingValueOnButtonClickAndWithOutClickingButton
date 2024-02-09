//
//  ViewController.swift
//  ShowingValueOnButtonClickAndWithOutClickingButton
//
//  Created by mac on 2/9/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var showLabel1: UILabel!
    @IBOutlet weak var showLabel2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var TxtField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        showLabel2.text = textField2.text
        
        textField2.frame = CGRect(x: 50, y: 100, width: 200, height: 30)
                textField2.borderStyle = .roundedRect
                textField2.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
                textField2.delegate = self
                view.addSubview(textField2)
                
                // Setting up the label
                showLabel2.frame = CGRect(x: 50, y: 150, width: 200, height: 30)
                showLabel2.textColor = .black
//                view.addSubview(showLabel2)
    }
    
    

    @IBAction func buttonAction(_ sender: Any) {
       
        showLabel1.text = TxtField1.text
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
            // Update the label text as the user types
            showLabel2.text = textField2.text
        }
    
    
    
}


