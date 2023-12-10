//
//  Detail.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import Foundation
import SwiftUI

struct Detail : View {
    @Binding var showModal: Bool
    
    var body: some View {
        Text("모달 페이지 입니다.")
        Button {
            showModal = false
        } label: {
            Text("닫기")
        }
    }
}
