//
//  DatePicker_08.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct DatePicker_08: View {
    @State var selectedDate: Date = Date()
    var startingDate : Date = Calendar.current.date(from: DateComponents(year: 2000)) ?? Date()
    var endingDate: Date = Date()
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        return formatter
    }
    var body: some View {
        
        VStack{
            Text("Selected Date")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
                .padding()
            
                .background(.yellow)
                .cornerRadius(20)
                

            DatePicker("select a date ", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date,.hourAndMinute])
        }
        
       
//        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date,.hourAndMinute])
//            .accentColor(.orange)
//            .datePickerStyle(
//                CompactDatePickerStyle()
//                //WheelDatePickerStyle()
//                //GraphicalDatePickerStyle()
//            )
    }
}

#Preview {
    DatePicker_08()
}
