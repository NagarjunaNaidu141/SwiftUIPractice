//
//  ActionSheets_01.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 13/06/25.
//

import SwiftUI

struct ActionSheets_01: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetActions = .isOtherPost
    
    enum ActionSheetActions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
//        Button("click me"){
//            showActionSheet.toggle()
//        }
        HStack{
            Circle()
                .frame(width: 30, height: 30)
            Text("@username")
            Spacer()
            Button(action:  {
                actionSheetOption = .isMyPost
                showActionSheet.toggle()
            }, label: {
                Image(systemName: "ellipsis")
            })
            .accentColor(.blue)
                
        }
        .padding()
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
        .actionSheet(isPresented: $showActionSheet, content:getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
           
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(title: Text("This is the title"),
                               message: Text("this is message"),
                               buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost:
            return ActionSheet(title: Text("This is the title"),
                               message: Text("this is message"),
                               buttons: [shareButton,reportButton,deleteButton,cancelButton])
        }
        
        
        
//        let button1: ActionSheet.Button = .default(Text("default "))
//        let button2: ActionSheet.Button = .cancel()
//        let button3: ActionSheet.Button = .destructive(Text("destructive"))
//       
//        
//        //return ActionSheet(title: Text("This is the title"))
//        return ActionSheet(title: Text("this is title"),
//                           message: Text("this is message"),
//                           buttons: [button1,button2,button3])
    }
}

#Preview {
    ActionSheets_01()
}
