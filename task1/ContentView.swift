//
//  ContentView.swift
//  task1
//
//  Created by Руслан Гайфуллин on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let rectangelHeight: CGFloat = 50
    
    var body: some View {
        TabView {
            ScrollView {
                VStack {
                    ForEach(1..<50) {
                        Text("item \($0)")
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity)
            }

            .safeAreaInset(edge: .bottom, 
                           alignment: .center,
                           spacing: 0,
                           content: {
                Rectangle()
                    .foregroundStyle(.red.opacity(0.5))
                    .frame(height: rectangelHeight)
            })
            .tabItem {
                Label(
                    title: {
                        Text("Task 1")
                    },
                    icon: {
                        Image(systemName: "swift")
                    }
                )
               
            }
        }
        
    }
}

#Preview {
    ContentView()
}

