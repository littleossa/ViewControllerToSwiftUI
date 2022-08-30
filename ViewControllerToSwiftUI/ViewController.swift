//
//  ViewController.swift
//  ViewControllerToSwiftUI
//
//  Created by 平岡修 on 2022/08/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func presentSwiftUIView() {
        let controller = SwiftUIViewHostingController(viewModel: SwiftUIViewModel())
        controller.modalPresentationStyle = .overFullScreen
        present(controller, animated: true)
    }
}
