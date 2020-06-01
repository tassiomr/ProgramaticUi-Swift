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
	
	let stackView = UIStackView();
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.setupProgrammaticUI()
		self.setupContratinNextButton()
		self.setupConstraintTextField()
		self.view.backgroundColor = .white;
		navigationController?.setNavigationBarHidden(true, animated: false)
		// Do any additional setup after loading the view.
	}
	
	func setupProgrammaticUI() {
		button.setupButton(bgColor: .orange, target: self, action: #selector(goToSecondPage), title: "Next");
		textField.setupTextField(placeholder: "Username");
		passwordTextField.setupTextField(placeholder: "Password", isSecureTextEntry: true);
		
		view.addSubview(textField);
		view.addSubview(passwordTextField);
		view.addSubview(button);
		
	}
	
	@objc func goToSecondPage() {
		let homeScreen = HomeScreen();
		navigationController?.pushViewController(homeScreen, animated: true);
	}
	
	func setupContratinNextButton () {
		button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
		button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
		button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 162).isActive = true;
	}
	
	func setupConstraintTextField() {
		textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
		textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
		textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		
		passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
		passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
		passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 66).isActive = true
	}

}
