//
//  UIViewExtension.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

extension UIView {
	func pin(view: UIView, constant: CGFloat = 20.0) {
		self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant).isActive = true;
		self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -constant).isActive = true;
		self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;
	}
}
