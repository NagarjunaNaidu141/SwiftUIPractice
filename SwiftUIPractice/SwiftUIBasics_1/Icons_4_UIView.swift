//
//  Icons_4_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Icons_4_UIView: View {
    var body: some View {
        Image(systemName: "download.fill")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .font(.caption)
//            .font(.system(size: 320))
//           .foregroundColor(Color.orange)
//            .frame(width: 300, height: 300)
//            .clipped()
            .renderingMode(.original)
            .font(.largeTitle)
    }
}

#Preview {
    Icons_4_UIView()
}
