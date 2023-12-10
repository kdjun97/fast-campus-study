//
//  Onboarding3.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct Onboarding3: View {
    @Binding var showModal: Bool
    
    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()
            VStack {
                Text("온보딩3")
                Button {
                    showModal = false
                } label: {
                    Text("Start")
                }
            }
        }
    }
}
