//
//  ContentView.swift
//  Modality
//
//  Created by Maria Reyna  on 8/8/23.
//

import SwiftUI

struct Yearbook: View {
    #warning ("Add some @State variables let the UI keep track of its view")
    @State var text: String
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            VStack{
                Text("Kermit the Frog")
                    .font(.system(size: 45))
                    .foregroundStyle(.black)
                Image(.cowboyKermit)
                if text == "" {
                    Text("Add a quote for Kermit")
                        .foregroundColor(.red)
                        .font(.system(size: 35))
                } else{
                    Text("\(text)")
                        .foregroundColor(.black)
                        .font(.system(size: 35))
                }
                Spacer()
                
                Button("Add text"){
                    #warning ("Toggle the @State so you can see the modal view appear")
                  
                }
                .font(.system(size: 30))
                .foregroundStyle(.black)
            }
            #warning ("Make a sheet appear with the AddTextView so you can fill out Kermits year book quote")
           
            }
        }
    }


#Preview {
    Yearbook(text: "")
}
