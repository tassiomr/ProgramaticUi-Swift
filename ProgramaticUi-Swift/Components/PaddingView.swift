//
//  PaddingView.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 01/06/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class PaddingView : UIView {
	override init(frame: CGRect) {
		super.init(frame: CGRect(x: 0, y:0, width: 20, height: 20));
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder);
	}
}
