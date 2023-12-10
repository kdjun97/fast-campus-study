//
//  Navigation.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct Navigation: View {
    let titles = ["디테일뷰1", "디테일뷰2"]
    let description = ["데스티네이션1", "데스티네이션2"]
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach([0,1], id: \.self) { index in
                    NavigationLink {
                        Text(titles[index])
                    } label: {
                        Text(description[index])
                    }
                }
            }.toolbar {
                ToolbarItem {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }.sheet(isPresented: $showModal) {
                Text("아이템 추가 페이지")
            }
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
