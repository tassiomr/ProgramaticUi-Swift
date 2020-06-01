//
//  SecondScreen.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {
	
	let label = StyledLabel();
	let button = StyledButton();
	let profileImage = StyledImageView();
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = .lightGray;
		navigationController?.setNavigationBarHidden(true, animated: false)
		
		setupProgrammaticUI()
		// Do any additional setup after loading the view.
	}
	
	func setupProgrammaticUI() {
		self.label.setup(text: "User logged: Tássio", textColor: .darkText);
		self.button.setup(bgColor: .red, target: self, action: #selector(logout), title: "Logout")
		self.profileImage.setup(image: UIImage(imageLiteralResourceName: "background-image.png"), contentMode: .center, isBlur: false)
		

		self.view.addSubview(self.profileImage);
		self.view.addSubview(self.label);
		self.view.addSubview(button);
		setupConstraint()
	}

	@objc func logout() {
		
	}
	
	func setupConstraint() {
		self.label.pin(view: view);
		self.button.pin(view: view, yAnchor: 45)
		self.profileImage.square(view: view, size: 64, yAnchor: -((UIScreen.main.bounds.height / 2) - 64));
		
		self.profileImage.borderRadius(size: 64 / 2);
	}
}
