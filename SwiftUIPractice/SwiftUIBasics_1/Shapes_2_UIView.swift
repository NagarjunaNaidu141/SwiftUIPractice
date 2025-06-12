//
//  Shapes_2_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Shapes_2_UIView: View {
    var body: some View {
        Circle()
            .trim(from: 0.3, to: 1)
            .fill(Color.red)
            .frame(width: 200, height: 200)
        Rectangle()
            .fill((Color.green))
            .stroke(.red, lineWidth: 10)
            .frame(width: 200, height: 200)
        RoundedRectangle(cornerRadius: 20)
            .fill(.orange)
            .frame(width: 200, height: 200)
            .opacity(0.5)
        Ellipse()
            .fill(.cyan)
            .stroke(Color.yellow, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [20, 10]))
            .frame(width: 200, height: 100)
        
        Capsule(style: .continuous)
            .fill(.pink)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    Shapes_2_UIView()
}
