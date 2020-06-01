//
//  StyledLabel.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class StyledLabel: UILabel {
	
	struct LabelConstants {
		static let fontSize: CGFloat = 20
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame);
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder);
	}
	
	func setup(text: String, textColor: UIColor = .black, fontSize: CGFloat = LabelConstants.fontSize) {
		self.text = text;
		self.textColor = textColor
		self.font = UIFont.systemFont(ofSize: fontSize);
	}
}
