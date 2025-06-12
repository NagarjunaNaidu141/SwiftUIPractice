//
//  Picker_06.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct Picker_06: View {
    @State var selectedCountry: String = "India"
    let countryList: [String] = ["India", "USA", "UK", "Australia", "Canada"]
    @State var selectedFilter : String = "Most liked"
    let filterdOptions: [String] = ["Most liked", "Most viewed", "Most commented"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        
        
        Picker(selection: $selectedFilter) {
            ForEach(filterdOptions, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())

        
        
        
            Picker(selection: $selectedFilter,
                   label:
                    HStack {
                Text("Filter:")
                Text(selectedFilter)
            }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 10)
                
            ) {
                ForEach(filterdOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
        

    Spacer()
        HStack{
            Text("Country: \(selectedCountry)")
        }
        VStack {
            Picker(
                selection: $selectedCountry,
                label: Text(selectedCountry),
                content:{
                    ForEach(countryList, id: \.self){ country in
                        Text(country)
                            .tag(country)
                    }
                }
            )
            //.pickerStyle(WheelPickerStyle())
            .pickerStyle(MenuPickerStyle())
        }
    }
}

#Preview {
    Picker_06()
}
