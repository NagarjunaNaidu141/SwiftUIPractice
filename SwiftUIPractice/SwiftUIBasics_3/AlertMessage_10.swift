//
//  AlertMessage_10.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct AlertMessage_10: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTilte: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundcolor: Color = .yellow
    
    
    enum MyAlerts {
        case error
        case success
    }
    var body: some View {
        
        
        ZStack {
            backgroundcolor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Button("Button 1"){
                    alertType = .error
                   // alertTilte = "Error Uploading Video😩"
                    //alertMessage = "Please try again later"
                    showAlert.toggle()
                }
                
                Button("Button 2"){
                    alertType = .success
//                    alertTilte = "Successfully Uploaded Video 😎"
//                    alertMessage = "Your video has been uploaded successfully"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content:{
                //Alert(title: Text("this is an alert".capitalized))
                getAlert()
                
            })
        }
    }
    func getAlert() -> Alert{
        
        switch alertType {
        case .error:
            return Alert(title: Text("Error Uploading Video😩"), message: Text("Please try again later"), dismissButton: .default(Text("OK"),action:{
                backgroundcolor = .red
            }))
        case .success:
            return Alert(title: Text("Successfully uploded"))
                         default:
                            return Alert(title: Text("Error"))
        }
        
        
//        return Alert(
//            title: Text("This is an alert"),
//            message: Text("some message displays here"),
//            primaryButton: .destructive(Text("delete"),action:{
//            backgroundcolor = .red
//        }), secondaryButton: .cancel())
    }
}

#Preview {
    AlertMessage_10()
}
