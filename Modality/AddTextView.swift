//
//  AddTextView.swift
//  Modality
//
//  Created by Maria Reyna on 12/20/23.
//

import SwiftUI

struct AddTextView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var text: String
    var body: some View {
        VStack {
            Text("Swipe👇🏻 to dismiss")
                .font(.system(size: 35))
                .foregroundStyle(.black)
            Text("Type something here: ")
                .font(.system(size: 35))
                .foregroundStyle(.black)
                .padding()
            
            TextField("Enter text here", text: $text)
                .padding()
                .background(.gray
                    .opacity(0.6))
                .foregroundColor(.black)
                .frame(width: 360,height: 100)
                .font(.system(size: 35))
            Button("Submit") {
                dismiss()
            }
            .font(.system(size: 35))
        }
        
    }
}

#Preview {
    AddTextView(text: .constant(""))
}

