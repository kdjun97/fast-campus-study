//
//  Modal.swift
//  Part2ListLoopView
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import Foundation
import SwiftUI

struct Modal : View {
    @State var showModal : Bool = false
    
    var body: some View {
        VStack {
            Button {
                showModal.toggle()
            } label: {
                Text("모달 화면을 눌러주세요")
            }
        }.sheet(isPresented: $showModal) {
            Text("모달 페이지 입니다.")
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal()
    }
}
