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
		self.view.backgroundColor = .white;
		navigationController?.setNavigationBarHidden(true, animated: false)
		// Do any additional setup after loading the view.
	}
	
	func setupProgrammaticUI() {
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
		
		textField.pin(view: view);
		passwordTextField.pin(view: view, yAnchor: 66)
		button.pin(view: view, yAnchor: 162)
	}

}
