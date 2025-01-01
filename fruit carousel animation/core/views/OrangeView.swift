//
//  OrangeView.swift
//  fruit carousel animation
//
//  Created by KDB-MacBook on 1/1/25.
//

import SwiftUI

struct animationValues{
    var x: CGFloat
    var y: CGFloat
    var angle: CGFloat
}

struct OrangeView: View {
    @State var starAnimation = false
    
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
//                            .offset(x:contentSize.width * 0.75, y:  contentSize.height * 0.15)
                            .keyframeAnimator(initialValue: animationValues(x: contentSize.width * 0.75, y: contentSize.height * 0.15, angle: 0) , trigger: starAnimation) { content, value in
                                content
                                    .rotationEffect(.degrees(value.angle))
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
//                                    LinearKeyframe(contentSize.width * 0.55, duration: 0.5)
                                    SpringKeyframe(contentSize.width * 0.75, duration: 1)
                                    SpringKeyframe(contentSize.width * 0.55, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                
                                KeyframeTrack(\.y){
//                                    LinearKeyframe(contentSize.height * 0.4, duration: 0.5)
                                    SpringKeyframe(contentSize.height * 0.15, duration: 1)
                                    SpringKeyframe(contentSize.height * 0.4, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                KeyframeTrack(\.angle) {
//                                    MoveKeyframe(190)
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(190, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }
                        



                        
//                            .rotationEffect(.degrees(190), anchor: .center)
//                            .offset(x:contentSize.width * 0.55, y: contentSize.height * 0.4)
//                            .phaseAnimator([false, true], trigger: starAnimation) { content, phase in
//                                content
//                                    .rotationEffect( .degrees(phase ? 190 : 0))
//                                .offset(x:phase ? contentSize.width * 0.55 : contentSize.width * 0.75 , y: phase ? contentSize.height * 0.4 : contentSize.height * 0.15)
//                                
//                            }
                        

                        Image("orange-2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
//                            .offset(x:0, y: contentSize.height * 0.8)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.4)
                            .keyframeAnimator(initialValue: animationValues(x:0, y:contentSize.height * 0.8, angle: 0) , trigger: starAnimation) { content, value in
                                content
                                    .rotationEffect(.degrees(value.angle))
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(contentSize.width * 0.35, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                
                                KeyframeTrack(\.y){
                                    SpringKeyframe(contentSize.height * 0.8, duration: 1)
                                    SpringKeyframe(contentSize.height * 0.4, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }

//
                        Image("image 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
//                            .offset(x:0, y:  contentSize.height * 0.4)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.3)
                            .keyframeAnimator(initialValue: animationValues(x:0, y:contentSize.height * 0.4, angle: 0) , trigger: starAnimation) { content, value in
                                content
                                    .rotationEffect(.degrees(value.angle))
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(contentSize.width * 0.35, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                
                                KeyframeTrack(\.y){
                                    SpringKeyframe(contentSize.height * 0.4, duration: 1)
                                    SpringKeyframe(contentSize.height * 0.3, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }
                        
                        Image("orange-3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
//                            .offset(x:contentSize.width * 0.7, y: contentSize.height * 0.82)
//                            .rotationEffect(.degrees(60), anchor: .center)
//                            .offset(x:contentSize.width * 0.35, y: contentSize.height * 0.34)
                            .keyframeAnimator(initialValue: animationValues(x:contentSize.width * 0.7, y:contentSize.height * 0.82, angle: 0) , trigger: starAnimation) { content, value in
                                content
                                    .rotationEffect(.degrees(value.angle))
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    SpringKeyframe(contentSize.width * 0.7, duration: 1)
                                    SpringKeyframe(contentSize.width * 0.35, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                
                                KeyframeTrack(\.y){
                                    SpringKeyframe(contentSize.height * 0.82, duration: 1)
                                    SpringKeyframe(contentSize.height * 0.34, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                KeyframeTrack(\.angle) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(60, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }
                        
                        Image("orange-1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.3)
//                            .offset(x:0, y: 0)
//                            .rotationEffect(.degrees(120), anchor: .center)
//                            .offset(x:contentSize.width * 0.25, y: contentSize.height * 0.4)
                            .keyframeAnimator(initialValue: animationValues(x:0, y:0, angle: 0) , trigger: starAnimation) { content, value in
                                content
                                    .rotationEffect(.degrees(value.angle))
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(contentSize.width * 0.25, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                
                                KeyframeTrack(\.y){
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(contentSize.height * 0.4, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                KeyframeTrack(\.angle) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(120, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }
//
                            
                    }
                }
                .frame(width: size.width, height: size.height * 0.85)
                .onAppear {
                    starAnimation = true
                }
//                .background(Rectangle().stroke())
                
            }
        }
        .ignoresSafeArea()
       
    }
}

#Preview {
    OrangeView()
}
