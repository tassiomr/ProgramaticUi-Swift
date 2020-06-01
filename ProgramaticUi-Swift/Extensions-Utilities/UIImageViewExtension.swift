//
//  UIImageViewExtension.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

extension UIImageView {
	func blurImage(style: UIBlurEffect.Style = .systemUltraThinMaterialDark) {
		let blurEffect = UIBlurEffect(style: style);
		let blurEffectView = UIVisualEffectView(effect: blurEffect)
		blurEffectView.frame = self.bounds;
		
		blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight];
		self.addSubview(blurEffectView)
	}
	
	func borderRadius(size: CGFloat) {
		self.clipsToBounds = true;
		self.layer.cornerRadius = size;
	}
}
