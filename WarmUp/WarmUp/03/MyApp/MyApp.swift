//
//  MyApp.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct MyApp: View {
    @State var showModal: Bool = false
    var body: some View {
        TabView {
            FirstList()
            .tabItem {
                Label("first", systemImage: "tray.and.arrow.down.fill")
            }
            Text("두 번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            Text("세 번째 페이지")
                .tabItem {
                    Label("third", systemImage: "person.crop.circle.fill")
                }
            Text("네 번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.up.fill")
                }
        }.sheet(isPresented: $showModal) {
            TabView {
                Onboarding1()
                Onboarding2()
                Onboarding3(showModal: $showModal)
            }.tabViewStyle(.page)
        }
        .onAppear {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
