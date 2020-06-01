//
//  UIImageViewExtension.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

extension UIImageView {
	func blurImage() {
		let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark);
		let blurEffectView = UIVisualEffectView(effect: blurEffect)
		blurEffectView.frame = self.bounds;
		
		blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight];
		self.addSubview(blurEffectView)
	}
}
