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
    #warning("Add some @State valaues to keep track of what alerts you are showing")
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
                        #warning("toggle alert to show")
                    }
                    #warning("Create an alert that shows when you try to delete to make sure you really want to delete")
                        
                    }.font(.system(size: 50))
                }
                .scrollContentBackground(.hidden)
                .navigationTitle(Text("Kermits Grocery List"))
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                #warning("Create an alert with this button that shows when you want to add something to Kermits list")
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
