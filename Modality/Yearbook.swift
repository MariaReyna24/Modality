//
//  ContentView.swift
//  Modality
//
//  Created by Maria Reyna  on 8/8/23.
//

import SwiftUI

struct Yearbook: View {
    #warning ("TODO: Add a @State variable to keep track of the modal view and if it isPresenting")
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
                //make her more button like
                Button("Add text") {
                    #warning("Toggle the @State variable so you can see the modal view appear")
                }
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(50)
             
            }
            #warning ("Make a sheet appear with the AddTextView so you can fill out Kermits year book quote")
           
            }
        }
    }


#Preview {
    Yearbook(text: "")
}
