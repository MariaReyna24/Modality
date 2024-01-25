//
//  ContentView.swift
//  Modality
//
//  Created by Maria Reyna  on 8/8/23.
//

import SwiftUI

struct Yearbook: View {
    @State var isPresenting = false
    @State var text: String
    var body: some View {
        ZStack {
            Color(.kermitGreen)
                .ignoresSafeArea()
            VStack {
                Text("Kermit the Frog")
                    .font(.system(size: 45))
                    .foregroundStyle(.black)
                Image(.cowboyKermit)
                if text == "" {
                    Text("Add a yearbook quote for Kermit")
                        .foregroundColor(.black)
                        .font(.system(size: 32))
                } else {
                    Text("\(text)")
                        .foregroundColor(.black)
                        .font(.system(size: 35))
                }
                Spacer()
                Button("Add text") {
                    isPresenting.toggle()
                }
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(50)
                
            }
            .sheet(isPresented: $isPresenting){
                AddTextView(text: $text)
            }
        }
    }
}


#Preview {
    Yearbook(text: "")
}
