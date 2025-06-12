//
//  ViewModel_08.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 15/06/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let price: Int
    let count: Int
}
class FruitViewModel: ObservableObject{
    /* @Published – Automatically updates the UI. If fruits or isLoading changes, update any views observing this object.
     🔁 Triggers automatic UI updates when the data changes.
   */
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Apple", price: 25, count: 10)
        let fruit2 = FruitModel(name: "Banana", price: 18, count: 20)
        let fruit3 = FruitModel(name: "Banana", price: 18, count: 20)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        })
        
    }
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
}

struct ViewModel_08: View {
    //@StatteObject -> USE THIS ON CREATION / INIT
    //@ObservedObject -> USE THIS FOR SUNVIEWS
    /*
     @StateObject – Owns and initializes a ViewModel
    You should use this if ViewModel_08 is the first place the ViewModel is created:

     */
    @ObservedObject var fruitModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitModel.fruits) { fruit in
                        HStack{
                            Text(fruit.name)
                            Text("\(fruit.price)")
                                .foregroundColor(.orange)
                        }
                       
                    }
                    .onDelete(perform: fruitModel.deleteFruit)
                }
                
            }
            .navigationTitle("Fruits List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitModel: fruitModel), label:{
                Image(systemName: "arrow.right.circle")
            } ))
            
//            .onAppear(){
//                fruitModel.getFruits()
//            }
      }
    }
   
}
struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    /*
     @ObservedObject – Watch an external ViewModel
     ✅ This makes your view observe the fruitModel.

     If any @Published property in fruitModel changes (like .fruits or .isLoading), the view automatically updates.

     Use @ObservedObject when the view does not own the model (e.g. it’s passed from another screen).
     */
    @ObservedObject var fruitModel: FruitViewModel
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack(alignment: .leading){
                ForEach(fruitModel.fruits){ fruit in
                        Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.title)
                }
            }
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Text("Go Back")
//                    .font(.headline)
//                    .padding()
//                    .foregroundColor(.white)
//            })
        }
    }
}

#Preview {
    ViewModel_08()
    //RandomScreen()
}
