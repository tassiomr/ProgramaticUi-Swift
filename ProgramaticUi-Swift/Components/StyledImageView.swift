//
//  StyledImageView.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class StyledImageView: UIImageView {

	func setup(image: UIImage, contentMode: ContentMode, isBlur: Bool, blurStyled: UIBlurEffect.Style = .systemUltraThinMaterialDark) {
		self.image = image;
		self.contentMode = contentMode;
		
		if(isBlur) {
			self.blurImage(style: blurStyled);
		}
	}

}
