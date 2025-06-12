//
//  Lists_09.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct Lists_09: View {
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]
    @State var vegatables: [String] = ["Tomato", "Potato", "Onion", "Cucumber"]
    var body: some View {
        
        NavigationView {
            List{
                Section(
                    
                        header:
                            HStack{
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                            .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            //.background(.purple)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }
                Section(header:Text("vegetables")){
                    ForEach(vegatables, id: \.self){ vegetable in
                        Text(vegetable.capitalized)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery  List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
    }
    
    var addButton: some View{
        Button("Add", action:{
            add()
        })
    }
    func delete(indexSet : IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    Lists_09()
}
