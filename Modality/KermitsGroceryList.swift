//
//  alertss.swift
//  Modality
//
//  Created by Maria Reyna on 8/21/23.
//

import SwiftUI

struct KermitsGroceryList: View {
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    #warning("TODO: Add @State variables to keep track of what alerts you are showing")
    @State var listItems = ["Flies", "Swamp Grass", "Tadpole Noodles","Crickets"]
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.kermitGreen)
                    .ignoresSafeArea()
                List {
                    ForEach(listItems, id: \.self) { (item) in
                        Text(item)
                            .font(.system(size: 35))
                    } .onDelete { _ in
                        #warning("TODO: Toggle your @State varible to show your alert")
                    }
                    #warning("TODO: Create the alert that will confirm if you want to delete it")
                        
                    }.font(.system(size: 50))
                }
                .scrollContentBackground(.hidden)
                .navigationTitle(Text("Kermits Grocery List"))
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                #warning("TODO: Use this button to create an alert that shows when you want to add something to Kermits list")
                        Button {
                        }
                    label: {
                            Label("Add more items", systemImage: "plus")
                                .foregroundStyle(.black, .black)
                                .font(.system(size: 100))
                        }
                        
                        
                    }
                    
                }
            }
        }
    }


#Preview {
    KermitsGroceryList()
}
