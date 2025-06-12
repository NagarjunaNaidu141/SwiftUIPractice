//
//  Documentation_.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct Documentation_03: View {
    
    //MARK: PROPERTIES
    @State var data: [String] = ["apple", "banana", "orange", "mango", "pineapple"]
    @State var showAlret: Bool = false
    //MARK: BODY
   
     //woking copy - things to do
     /*
     1. Fix title
     2. Fix Alert
     */
    var body: some View {
        NavigationView{ // START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
               
                // foreground
                foreGroundView
            }.navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("Alert",action:{
                    showAlret.toggle()
                })
                    .alert(isPresented: $showAlret, content: {
                        alertMessage(text: "This is alert")
                                                
        })
                )
        }// END: NAV
        
    }
    //MARK: FUNCTIONS
    
    /// Gets an alert with specified title
    ///
    ///This function creates and returns alert immediately. this alert has title based on text provided but it NOT have a message.
    ///```
    ///alertMessage(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    /// - Warning: There is no additional message in this alert.
    /// - Parameter text: This is the title for alert
    /// - Returns: Returns an alert with title
    func alertMessage(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    ///this is the foreground layer that holds scroll view.
    private var foreGroundView: some View {
          ScrollView{ // START: SCROLL VIEW
              Text("Hello World")
              ForEach(data,id: \.self) { item in
                  Text(item.capitalized)
                      .font(.title)
              }
          } // END: SCROLL VIEW
          
      }
}
//MARK: PREVIEW

#Preview {
    Documentation_03()
}


  

