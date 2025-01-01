//
//  OrangeView.swift
//  fruit carousel animation
//
//  Created by KDB-MacBook on 1/1/25.
//

import SwiftUI

struct OrangeView: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack(alignment: .bottom) {
                VStack{
                    HeaderView()
                    Spacer()
                }
                .frame(width: size.width, height: size.height)
                .background(Color(hex: 0xFFD847))
                
                Rectangle()
                    .fill(.white.opacity(0.4))
                    .frame(width: size.width * 0.6, height: size.height * 0.48)
                    .blur(radius: 100)
                
                VStack{
                    GeometryReader { proxy in
                        let contentSize = proxy.size
                        
                        Image("orange")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.25)
                            .offset(x:contentSize.width * 0.75, y:  contentSize.height * 0.15)
//                            .rotationEffect(.degrees(190), anchor: .center)
//                            .offset(x:contentSize.width * 0.55, y: contentSize.height * 0.4)

                        Image("orange-2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
                            .offset(x:0, y: contentSize.height * 0.8)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.4)

//
                        Image("image 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
                            .offset(x:0, y:  contentSize.height * 0.4)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.3)
                        
                        Image("orange-3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
                                                    .offset(x:contentSize.width * 0.7, y: contentSize.height * 0.82)
//                            .rotationEffect(.degrees(60), anchor: .center)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.34)
                        
                        Image("orange-1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
                            .offset(x:0, y: 0)
//                            .rotationEffect(.degrees(120), anchor: .center)
//                            .offset(x:contentSize.width * 0.25, y: contentSize.height * 0.4)
//
                            
                    }
                }
                .frame(width: size.width, height: size.height * 0.85)
//                .background(Rectangle().stroke())
                
            }
        }
        .ignoresSafeArea()
       
    }
}

#Preview {
    OrangeView()
}
