//
//  ContentView.swift
//  fruit carousel animation
//
//  Created by KDB-MacBook on 1/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var startYellowAnimation = false
    @State var startGreenAnimation = false
    @State var startPurpleAnimation = false
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing:0) {
                ScrollView(.horizontal) {
                    HStack(spacing:0){
                        OrangeView(starAnimation: .constant(startYellowAnimation))
                            .frame(width: proxy.size.width)
                            .onScrollVisibilityChange { val in
                                startYellowAnimation = val
                            }

                        OrangeView(starAnimation: .constant(startGreenAnimation))
                            .frame(width: proxy.size.width)
                            .onScrollVisibilityChange { val in
                                startGreenAnimation = val
                            }
                    }
                    .background(GeometryReader { innerProxy in
                        Color.clear.onChange(of: innerProxy.frame(in: .global).minX) { newMinX , _ in
                            print("newMinX 1 : \(newMinX)")
                        }
                    })
                    .scrollTargetLayout()
                }
                .scrollClipDisabled()
                .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
                
            }
            .ignoresSafeArea()
        }
        
    }
}

#Preview {
    ContentView()
}
