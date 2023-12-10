//
//  MyTab.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            TabDetail()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }.tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTab()
}
