//
//  MainView.swift
//  Modality
//
//  Created by Maria Reyna on 12/20/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView(text: "")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            KermitsGroceryList()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
