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
    var scale: CGFloat
}

struct bottleAnimation{
    var y:CGFloat
    var scale: CGFloat
    var opacity: CGFloat
}

struct OrangeView: View {
    @Binding var starAnimation: Bool
    @Binding var showFruits: Bool
    
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
                        
                        
                        Image("orange-2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(showFruits ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.2, y:contentSize.height * 0.8, scale: 1) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(-contentSize.width * 0.2, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.2, duration: 0.3, timingCurve: .easeIn)
                                }

                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.8, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.3, duration: 0.3, timingCurve: .easeIn)
                                }
                            }
                        
                        
                        Image("orange")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.55)
                            .opacity(showFruits ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: contentSize.width * 0.7, y: contentSize.height * 0.15, scale: 1) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(contentSize.width * 0.7, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.4, duration: 0.3, timingCurve: .easeIn)
                                }
                                
                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.15, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.3, duration: 0.3, timingCurve: .easeIn)
                                }
                                KeyframeTrack(\.scale){
                                    LinearKeyframe(1, duration: 1)
                                    LinearKeyframe(0.7, duration: 0.3, timingCurve: .easeIn)
                                }
                            }
                        
                        
                        Image("orange-1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(showFruits ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.3, y:0, scale: 1) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(-contentSize.width * 0.3, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.3, duration: 0.3, timingCurve: .easeIn)
                                }

                                KeyframeTrack(\.y){
                                    LinearKeyframe(0, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.4, duration: 0.3, timingCurve: .easeIn)
                                }
                                KeyframeTrack(\.scale){
                                    LinearKeyframe(1, duration: 1)
                                    LinearKeyframe(0.75, duration: 0.3, timingCurve: .easeIn)
                                }
                            }
                        
                        
                        
                        Image("orange-3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(showFruits ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x:contentSize.width * 0.68, y:contentSize.height * 0.82, scale: 1) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                                    .scaleEffect(value.scale)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(contentSize.width * 0.68, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.45, duration: 0.3, timingCurve: .easeIn)
                                }
                                
                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.82, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.48, duration: 0.3, timingCurve: .easeIn)
                                }
                                KeyframeTrack(\.scale){
                                    LinearKeyframe(1, duration: 1)
                                    LinearKeyframe(0.7, duration: 0.3, timingCurve: .easeIn)
                                }
                            }
                        
                        Image("image 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.7)
                            .opacity(showFruits ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.4, y:contentSize.height * 0.4, scale: 1) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(-contentSize.width * 0.4, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.1, duration: 0.3, timingCurve: .easeIn)
                                }

                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.4, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.4, duration: 0.3, timingCurve: .easeIn)
                                }
                                
                                KeyframeTrack(\.scale){
                                    LinearKeyframe(1, duration: 1)
                                    LinearKeyframe(0.75, duration: 0.3, timingCurve: .easeIn)
                                }
                            }
                        
                        
                        
                        Image("yellow")
                            .resizable()
                            .scaledToFit()
                            .offset(x:9)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: bottleAnimation(y: 0, scale: 0.2,opacity: 0), trigger: starAnimation) { content, value in
                                content
                                    .opacity(value.opacity)
                                    .scaleEffect(value.scale)
                                    .offset(y:value.y)
                            } keyframes: { _ in
                                KeyframeTrack(\.opacity) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(0, duration: 0.3)
                                    MoveKeyframe(1)
                                }
                                KeyframeTrack(\.scale) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(0, duration: 0.3)
                                    SpringKeyframe(1.35, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                                KeyframeTrack(\.y) {
                                    SpringKeyframe(0, duration: 1)
                                    SpringKeyframe(0, duration: 0.3)
                                    SpringKeyframe(contentSize.height * 0.15, duration: 0.545,spring: .init(mass: 1, stiffness: 800, damping: 22))
                                }
                            }

                    }
                }
                .frame(width: size.width, height: size.height * 0.85)
                
            }
        }
        .ignoresSafeArea()
       
    }
}

#Preview {
    OrangeView( starAnimation: .constant(false), showFruits: .constant(true))
}
