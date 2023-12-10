//
//  TabDetail.swift
//  WarmUp
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is Detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is Detail")
                Button {
                    
                } label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                }
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is Detail")
        }
    }
}

#Preview {
    TabDetail()
}
