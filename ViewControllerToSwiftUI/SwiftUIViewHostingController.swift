//
//  SwiftUIViewHostingController.swift
//  ViewControllerToSwiftUI
//
//  Created by 平岡修 on 2022/08/22.
//

import SwiftUI
import Combine

class SwiftUIViewHostingController: UIHostingController<SwiftUIView> {
    
    private let viewModel: SwiftUIViewModel
    private var anyCancellable: AnyCancellable?
    
    init(viewModel: SwiftUIViewModel) {
        self.viewModel = viewModel
        super.init(rootView: SwiftUIView(viewModel: viewModel))
    }
    
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.backgroundColor = .red
        
        anyCancellable = viewModel.subject.sink { [weak self] _ in
            self?.dismiss(animated: true)
        }
    }
}
