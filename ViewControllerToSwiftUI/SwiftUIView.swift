//
//  SwiftUIView.swift
//  ViewControllerToSwiftUI
//
//  Created by 平岡修 on 2022/08/21.
//

import SwiftUI
import Combine

struct SwiftUIView: View {
    
    @ObservedObject var viewModel: SwiftUIViewModel
        
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(viewModel.backgroundColor)
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                Text("SwiftUI View")
                
                Button {
                    viewModel.subject.send()
                } label: {
                    Text("画面を閉じる")
                }
            }
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(viewModel: SwiftUIViewModel())
    }
}
