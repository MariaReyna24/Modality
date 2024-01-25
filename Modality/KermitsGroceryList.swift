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
    @State var alertPresenting = false
    @State var addingAlertPresenting = false
    @State var confirmDelete: Bool = false
    @State var listItems = ["Flies", "Swamp Grass", "Tadpole Noodles","Crickets"]
    @State var deletedIndex: IndexSet?
    @State var newItem: String = ""
    var body: some View {
        NavigationStack {
            ZStack{
                Color.green
                    .ignoresSafeArea()
                List {
                    ForEach(listItems, id: \.self) { (item) in
                        Text(item)
                            .font(.system(size: 35))
                    } .onDelete { indexSet in
                        deletedIndex = indexSet
                        //toggle alert to show
                        alertPresenting.toggle()
                    }
                    //add an alert that shows when you try to delete
                    .alert("Are you sure you want to delete this?", isPresented: $alertPresenting) {
                        Button("Delete", role: .destructive) {
                            // Get this button to delete the item you are trying to delete
                            listItems.remove(atOffsets: deletedIndex ?? IndexSet(integer: 1))
                        }
                        //this button just cancels the item
                        Button("Cancel", role: .cancel) {}
                    }.font(.system(size: 50))
                }
                .background(Image(.excitedKermit)
                    .resizable()
                    .scaledToFit()
                )
                .scrollContentBackground(.hidden)
                .navigationTitle(Text("Kermits Grocery List"))
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        // make it alert
                        Button {
                            addingAlertPresenting = true
                        } label: {
                            Label("Add more items", systemImage: "plus")
                                .font(.system(size: 25))
                                .foregroundStyle(.black)
                        }
                        
                        // add an alert that shows when you want to add something
                        .alert("What do you want to add", isPresented: $addingAlertPresenting) {
                            TextField("Item you want to add", text: $newItem)
                            Button("Add Item") {
                                listItems.append(newItem)
                                if newItem != "" {
                                    newItem = ""
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
}
#Preview {
    KermitsGroceryList()
}
