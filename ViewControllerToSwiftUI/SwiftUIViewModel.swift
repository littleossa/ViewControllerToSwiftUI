//
//  SwiftUIViewModel.swift
//  ViewControllerToSwiftUI
//
//  Created by 平岡修 on 2022/08/22.
//

import SwiftUI
import Combine

class SwiftUIViewModel: ObservableObject {
    
    @Published var backgroundColor: Color = .yellow
    let subject = PassthroughSubject<Void, Never>()
}

