//
//  SATextField.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class StyledTextField: UITextField {
	
	struct TextFiledContants {
		static var height: CGFloat = 50.0
		static var radius: CGFloat = TextFiledContants.height / 2
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame);
		self.translatesAutoresizingMaskIntoConstraints = false;
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder);
	}
	
	
	func setupTextField(placeholder: String, isSecureTextEntry: Bool = false) {
		self.heightAnchor.constraint(equalToConstant: TextFiledContants.height).isActive = true;
		self.clipsToBounds = true
		self.layer.cornerRadius = TextFiledContants.radius;
		self.leftView = PaddingView()
		self.leftViewMode = .always
		self.layer.borderWidth = 1
		self.layer.borderColor = UIColor.lightGray.cgColor
		self.placeholder = placeholder
		self.isSecureTextEntry = isSecureTextEntry
	}
}
