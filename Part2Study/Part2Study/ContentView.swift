//
//  ContentView.swift
//  Part2Study
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("헤드라인 입니다")
                .font(.headline)
                .padding(.bottom, 30)
            Text("서브 헤드라인 입니다")
                .font(.subheadline)
                .padding(.bottom, 30)
            Text("바디 입니다")
                .font(.body)
                .padding(.bottom, 30)
            Button{
                
            } label: {
                Text("Click Me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
