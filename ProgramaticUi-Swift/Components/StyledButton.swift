//
//  SAButton.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

struct ButtonContants {
	static var hegiht: CGFloat = 50
	static var radius: CGFloat = ButtonContants.hegiht / 2
}

class StyledButton: UIButton {
	override init(frame: CGRect) {
		super.init(frame: frame);
		self.translatesAutoresizingMaskIntoConstraints = false;
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	func setupButton (bgColor: UIColor, target: Any?, action: Selector, title: String) {
		self.backgroundColor = bgColor
		self.addTarget(target, action: action, for: .touchUpInside)
		self.setTitle(title, for: .normal)
		self.clipsToBounds = true;
		self.layer.cornerRadius = ButtonContants.radius;
		
		self.heightAnchor.constraint(equalToConstant: ButtonContants.hegiht).isActive = true
	}

}
