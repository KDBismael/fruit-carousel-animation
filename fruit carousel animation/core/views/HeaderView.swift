//
//  HeaderView.swift
//  fruit carousel animation
//
//  Created by KDB-MacBook on 1/1/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 181, height: 52)
        }
        .padding(.vertical, 64)
    }
}

#Preview {
    HeaderView()
}
