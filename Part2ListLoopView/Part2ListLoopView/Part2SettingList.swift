//
//  Part2SettingList.swift
//  Part2ListLoopView
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color
}

struct Setting: View {
    let settingInfoList :[[SettingInfo]] = [
        [
        SettingInfo(
            title: "스크린타임",
            systemName: "hourglass",
            backgroundColor: .purple,
            foregroundColor: .white
        )],
        [SettingInfo(
            title: "일반",
            systemName: "gear",
            backgroundColor: .blue,
            foregroundColor: .white
        ),
        SettingInfo(
            title: "손쉬운사용",
            systemName: "key",
            backgroundColor: .red,
            foregroundColor: .white
        ),
        SettingInfo(
            title: "개인정보 보호 및 보안",
            systemName: "person.crop.circle",
            backgroundColor: .purple,
            foregroundColor: .white
        )]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach (settingInfoList, id: \.self) { section in
                    Section {
                        ForEach (section, id: \.self) { settingInfo in
                            Label {
                                Text(settingInfo.title)
                            } icon: {
                                Image(systemName: settingInfo.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(settingInfo.backgroundColor)
                                    .foregroundColor(settingInfo.foregroundColor)
                                    .cornerRadius(4)
                            }
                        }
                    }
                }
            }.navigationTitle("설정")
        }
    }
}


struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
    
}
