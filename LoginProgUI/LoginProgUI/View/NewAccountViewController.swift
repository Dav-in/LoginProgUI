//
//  NewAccountViewController.swift
//  LoginProgUI
//
//  Created by Davin Henrik on 12/15/21.
//

import UIKit

class NewAccountViewController: UIViewController {
    
    var newUserLabel : UILabel!
    var newUserEmail : UITextField!
    var sendNewUserEmail : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        
        //create label
        newUserLabel = UILabel()
        newUserLabel.translatesAutoresizingMaskIntoConstraints = false
        newUserLabel.textAlignment = .center
        newUserLabel.text = "Create Account"
        newUserLabel.font = UIFont.systemFont(ofSize: 50, weight: .thin)
        newUserLabel.backgroundColor = .white
        newUserLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(newUserLabel)

    
    
        // userName textfield
        newUserEmail = UITextField()
        newUserEmail.translatesAutoresizingMaskIntoConstraints = false
        newUserEmail.placeholder = "Email Address..."
        newUserEmail.textAlignment = .left
        newUserEmail.font = UIFont.italicSystemFont(ofSize: 20)
        newUserEmail.backgroundColor = .opaqueSeparator
        newUserEmail.isUserInteractionEnabled = true
        newUserEmail.borderStyle = .roundedRect
        newUserEmail.clearButtonMode = .whileEditing
        view.addSubview(newUserEmail)
        

}
}
