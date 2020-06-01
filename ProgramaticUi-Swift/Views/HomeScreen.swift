//
//  SecondScreen.swift
//  ProgramaticUi-Swift
//
//  Created by Tássio Marcos Rocha on 31/05/20.
//  Copyright © 2020 Tássio Marcos Rocha. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
				self.view.backgroundColor = .yellow;
				navigationController?.setNavigationBarHidden(false, animated: false)
        // Do any additional setup after loading the view.
    }
    

	override func viewWillDisappear(_ animated: Bool) {
		navigationController?.setNavigationBarHidden(true, animated: false)
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
