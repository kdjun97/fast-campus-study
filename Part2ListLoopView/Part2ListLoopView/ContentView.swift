//
//  ContentView.swift
//  Part2ListLoopView
//
//  Created by 김동준 on 12/10/23
//  Copyright © 2023 QCells. All rights reserved.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchedFruitName: String
    let price: Int
}

struct ContentView: View {
    @State var fruitName: String = ""
    
    @State var favoriteFruits = [
        Fruit(
            name: "Apple",
            matchedFruitName: "Banana",
            price: 1000
        ),
        Fruit(
            name: "Banana",
            matchedFruitName: "Double Kiwi",
            price: 3000
        ),
        Fruit(
            name: "Cherry",
            matchedFruitName: "Chicken",
            price: 2400
        )
    ]
    
    var body: some View {

        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(
                            Fruit(
                                name: fruitName,
                                matchedFruitName: "Apple",
                                price: 1000
                            )
                        )
                    } label : {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
            }
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit.name)
                        Spacer()
                        Text("\(fruit.price)")
                    }
                }.onDelete { indexSet in
                    favoriteFruits.remove(atOffsets: indexSet)
                }
            }.navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ContentView()
}
