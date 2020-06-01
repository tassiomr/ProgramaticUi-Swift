//
//  FirstScreen.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
	
	let button = StyledButton();
	let textField = StyledTextField();
	let passwordTextField = StyledTextField();
	
	let backgroundImage = UIImageView();
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.setupProgrammaticUI()
		self.setupDelegates()
		self.dismissKey()
		
		self.view.backgroundColor = .white;
		navigationController?.setNavigationBarHidden(true, animated: false)
		// Do any additional setup after loading the view.
	}
	
	func setupProgrammaticUI() {
		view.addSubview(backgroundImage);
		view.addSubview(textField);
		view.addSubview(passwordTextField);
		view.addSubview(button);
		
		setupContrainst()
	}
	
	@objc func goToSecondPage() {
		let homeScreen = HomeScreen();
		navigationController?.pushViewController(homeScreen, animated: true);
	}
	
	func setupContrainst() {
		button.setupButton(bgColor: .orange, target: self, action: #selector(goToSecondPage), title: "Next");
		textField.setupTextField(placeholder: "Username");
		passwordTextField.setupTextField(placeholder: "Password", isSecureTextEntry: true);
		backgroundImage.positionZeroToZero(view: view)
		backgroundImage.image = UIImage(imageLiteralResourceName: "background-image.png");
		backgroundImage.contentMode = .scaleAspectFill
		
		textField.pin(view: view);
		passwordTextField.pin(view: view, yAnchor: 66)
		button.pin(view: view, yAnchor: 162)
	}
}



extension LoginScreen : UITextFieldDelegate {
	func setupDelegates() {
		textField.delegate = self;
		passwordTextField.delegate = self;
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.dismissKeyboard();
		return false
	}
}


extension LoginScreen {
	func dismissKey() {
		let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
		
		tap.cancelsTouchesInView = false
		view.addGestureRecognizer(tap);
	}
	
	@objc func dismissKeyboard() {
		view.endEditing(true)
	}
}
