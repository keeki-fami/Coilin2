//
//  ContentView.swift
//  Coilin2
//
//  Created by  on 2025/07/01.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    
    init() {
        let appearance: UITabBarAppearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground()
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                TabView(selection:$selection){
                    calendar()
                        .tabItem{
                            Text("C")
                                .font(.system(size:30))
                        }
                        .tag(1)
                    temp()
                        .tabItem{
                            Text("T")
                                .font(.system(size:30))
                        }
                        .tag(2)
                }
            }
            .toolbar{
                ToolbarItem(placement:.principal){
                    Text("Coilin2")
                }
                ToolbarItem(placement:.topBarLeading){
                    Button(action:{},label:{
                        Text("X")
                            .foregroundColor(.white)
                    })
                }
            }
            .toolbarBackground(.visible,for:.navigationBar)
            .toolbarBackground(.cyan,for:.navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
