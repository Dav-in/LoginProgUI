//
//  ViewController.swift
//  LoginProgUI
//
//  Created by Davin Henrik on 12/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    var loginLabel : UILabel!
    var userNameInput : UITextField!
    var userPasswordInput : UITextField!
    var verifyUserInput = [UIButton]()


    let verify = UIButton(type: .system)
    let buttonView = UIView()
    let largeConfig = UIImage.SymbolConfiguration(pointSize: 75, weight: .thin)
    var newAcct : NewAccountViewController = NewAccountViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped(sender:)))
        
        loadView()
    }

    @objc func addTapped(sender: UIBarButtonItem!) {
      print("new account screen requested")
        
  }
    
    // the main view
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        //create navigation bar
//        navigationItem = UINavigationItem(frame: CGRect(x: 0, y: 75, width: 450, height: 60))
//        view.addSubview(navigationItem)
        
        //create barbuttonitem
        
        
        
        
        
        
        // create the label
        loginLabel = UILabel()
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.textAlignment = .center
        loginLabel.text = "Login"
        loginLabel.font = UIFont.systemFont(ofSize: 50, weight: .thin)
        loginLabel.backgroundColor = .white
        loginLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(loginLabel)
        
        
        // userName textfield
        userNameInput = UITextField()
        userNameInput.translatesAutoresizingMaskIntoConstraints = false
        userNameInput.placeholder = "Username..."
        userNameInput.textAlignment = .left
        userNameInput.font = UIFont.italicSystemFont(ofSize: 20)
        userNameInput.backgroundColor = .opaqueSeparator
        userNameInput.isUserInteractionEnabled = true
        userNameInput.borderStyle = .roundedRect
        userNameInput.clearButtonMode = .whileEditing
        view.addSubview(userNameInput)
            
        
        //userPasswordInput textfield
        userPasswordInput = UITextField()
        userPasswordInput.translatesAutoresizingMaskIntoConstraints = false
        userPasswordInput.placeholder = "Password..."
        userPasswordInput.textAlignment = .left
        userPasswordInput.font = UIFont.italicSystemFont(ofSize: 20)
        userPasswordInput.backgroundColor = .opaqueSeparator
        userPasswordInput.isUserInteractionEnabled = true
        userPasswordInput.borderStyle = .roundedRect
        userPasswordInput.clearButtonMode = .whileEditing
        view.addSubview(userPasswordInput)
        
        //newUserBtn
        
       
        
        //verifyUserInput button
        verify.translatesAutoresizingMaskIntoConstraints = false
        verify.setImage(UIImage(systemName: "checkerboard.shield", withConfiguration: largeConfig), for: .normal)
        verify.tintColor = .black
        view.addSubview(verify)
        
        //container view for button
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonView)
        
        //layout constraints
        NSLayoutConstraint.activate([
            
            navigationItem.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            navigationItem.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),

            
            
            loginLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 175),
//            loginLabel.centerXAnchor.constraint(equalTo: navigationBar.bottomAnchor),
            loginLabel.heightAnchor.constraint(equalToConstant: 70),
            loginLabel.widthAnchor.constraint(equalToConstant: 180),
    
            userNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameInput.heightAnchor.constraint(equalToConstant: 40),
            userNameInput.widthAnchor.constraint(equalToConstant: 300),
            userNameInput.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 100),
            
            userPasswordInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userPasswordInput.heightAnchor.constraint(equalToConstant: 40),
            userPasswordInput.widthAnchor.constraint(equalToConstant: 300),
            userPasswordInput.topAnchor.constraint(equalTo: userNameInput.bottomAnchor, constant: 70),
            
            verify.topAnchor.constraint(equalTo: userPasswordInput.bottomAnchor, constant: 100),
            verify.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verify.heightAnchor.constraint(equalToConstant: 100),
            

        ])
        
        
        
        
        
    }

}

