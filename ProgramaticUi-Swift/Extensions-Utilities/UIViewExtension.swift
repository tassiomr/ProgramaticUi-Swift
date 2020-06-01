//
//  UIViewExtension.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

extension UIView {
	func pin(view: UIView, yAnchor: CGFloat = 0, constant: CGFloat = 20.0) {
		self.translatesAutoresizingMaskIntoConstraints = false;
		self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant).isActive = true;
		self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -constant).isActive = true;
		self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yAnchor).isActive = true;
	}
	
	func positionZeroToZero(view: UIView) {
		self.translatesAutoresizingMaskIntoConstraints = false;
		self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true;
		self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true;
		self.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true;
		self.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true;
	}
}
