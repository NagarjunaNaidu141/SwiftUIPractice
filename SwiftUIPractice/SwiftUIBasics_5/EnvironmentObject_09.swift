//
//  EnvironmentObject_09.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 16/06/25.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var devicesNames: [String] = []
    
    init(){
        getData()
    }
    func getData(){
        self.devicesNames.append(contentsOf: ["iPhone","iPad","Mac","WatchOS"])
    }
}

struct EnvironmentObject_09: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        
        NavigationView{
            List{
                ForEach(viewModel.devicesNames, id: \.self){ names in
                    NavigationLink(destination: DetailedView(selectedData: names), label: {
                        Text(names)
                    })
                    
                    
                }
            }
            .navigationTitle("iOS devices")
        }
        /*
         This en object is going to be our view model. all of the sub views that devired from above code can access the viewModel, even n number of screens also
         */
        .environmentObject(viewModel)
    }
}
struct DetailedView: View{
    var selectedData: String
    //@ObservedObject var viewModel: EnvironmentViewModel
    var body: some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: {
                FinalView()
            }, label: {
                Text(selectedData)
                    .font(.title)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(20)
            })
            
        }
    }
}
struct FinalView: View{
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View{
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors:[.yellow,.orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            //foreground
            ScrollView{
                VStack {
                    ForEach(viewModel.devicesNames, id: \.self){ names in
                        Text(names)
                        
                    }
                }
                .foregroundColor(.white)
                .font(.title)
            }
                
            }
           
    }
}

#Preview {
    EnvironmentObject_09()
   // DetailedView(selectedData: "iPhone")
    //FinalView()
}
