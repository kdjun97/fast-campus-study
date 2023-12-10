//
//  ContentView.swift
//  Part2OnBoarding
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Whats New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding(.bottom, 30)
            VStack(spacing: 0) {
                MyInformation()
                    .padding(.bottom, 20)
                MyInformation()
                    .padding(.bottom, 20)
                MyInformation()
                    .padding(.bottom, 20)
            }
            Spacer()
            Button {
                
            } label: {
                Text("Continue")
            }.frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(12)
                .padding(20)
                
        }
    }
    
    func MyInformation() -> some View {
        HStack(spacing: 0) {
            Image(systemName: "person.2")
                .resizable()
                .scaledToFit()
                .frame(width :50)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding()
            VStack(alignment: .leading, spacing: 0) {
                Text("First Library")
                    .bold()
                Text("asdfasdfad asfasdfas fasdf adsf asdf asdf asdf asfasdf  asdfas fafs fasdf asfadsf dasfasd fad fdaf adsf ds fads f")
                    .foregroundColor(Color.gray)
            }
        }
    }
}

#Preview {
    ContentView()
}
