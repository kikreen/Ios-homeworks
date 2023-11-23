//
//  SecondController.swift
//  NavigationApp
//
//  Created by Niyaz on 22.03.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        #if DEBUG
        view.backgroundColor = .systemIndigo
        #else
        view.backgroundColor = .systemGray
        #endif
    }
}
