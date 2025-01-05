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
    var opacity: CGFloat
}

struct bottleAnimation{
    var y:CGFloat
    var scale: CGFloat
    var opacity: CGFloat
}

struct OrangeView: View {
    @Binding var starAnimation: Bool
    @Binding var showFruits: Bool
    @Binding var bottle: String
    @Binding var images:[String]
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack(alignment: .bottom) {
                VStack{
                    Spacer()
                }
                .frame(width: size.width, height: size.height)
                
                Rectangle()
                    .fill(.white.opacity(0.4))
                    .frame(width: size.width * 0.6, height: size.height * 0.48)
                    .blur(radius: 100)
                
                VStack{
                    GeometryReader { proxy in
                        let contentSize = proxy.size
                        
                        Image(images[2])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .offset(x: -contentSize.width * 0.2, y: contentSize.height * 0.8)
                            .opacity(showFruits && !starAnimation ? 1 : 0)
                        
                        Image(images[2])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.2, y:contentSize.height * 0.8, scale: 1, opacity:0) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .opacity(value.opacity)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(-contentSize.width * 0.2, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.25, duration: 0.3, timingCurve: .easeIn)
                                }

                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.8, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.3, duration: 0.3, timingCurve: .easeIn)
                                }
                                KeyframeTrack(\.opacity) {
                                    MoveKeyframe(1)
                                    LinearKeyframe(1, duration: 1.2)
                                    MoveKeyframe(0)
                                }
                            }
                        
                        Image(images[4])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.55)
                            .offset(x: contentSize.width * 0.7, y: contentSize.height * 0.15)
                            .opacity(showFruits && !starAnimation ? 1 : 0)
                        
                        Image(images[4])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.55)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: contentSize.width * 0.7, y: contentSize.height * 0.15, scale: 1, opacity:0) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                                    .opacity(value.opacity)
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
                                    LinearKeyframe(0.6, duration: 0.3, timingCurve: .easeIn)
                                }
                                KeyframeTrack(\.opacity) {
                                    MoveKeyframe(1)
                                    LinearKeyframe(1, duration: 1.2)
                                    MoveKeyframe(0)
                                }
                            }
                        
                        Image(images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .offset(x: -contentSize.width * 0.3, y: 0)
                            .opacity(showFruits && !starAnimation ? 1 : 0)
                        
                        Image(images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.3, y:0, scale: 1, opacity:0) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                                    .opacity(value.opacity)
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
                                KeyframeTrack(\.opacity) {
                                    MoveKeyframe(1)
                                    LinearKeyframe(1, duration: 1.2)
                                    MoveKeyframe(0)
                                }
                            }
                        
                        
                        Image(images[3])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .offset(x: contentSize.width * 0.68, y: contentSize.height * 0.82)
                            .opacity(showFruits && !starAnimation ? 1 : 0)
                        
                        Image(images[3])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.6)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x:contentSize.width * 0.68, y:contentSize.height * 0.82, scale: 1, opacity: 0) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                                    .opacity(value.opacity)
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
                                KeyframeTrack(\.opacity) {
                                    MoveKeyframe(1)
                                    LinearKeyframe(1, duration: 1.2)
                                    MoveKeyframe(0)
                                }
                            }
                        Image(images[1])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.7)
                            .offset(x: -contentSize.width * 0.4, y: contentSize.height * 0.4)
                            .opacity(showFruits && !starAnimation ? 1 : 0)
                        
                        Image(images[1])
                            .resizable()
                            .scaledToFit()
                            .frame(width: contentSize.width * 0.7)
                            .opacity(starAnimation ? 1 : 0)
                            .keyframeAnimator(initialValue: animationValues(x: -contentSize.width * 0.4, y:contentSize.height * 0.4, scale: 1, opacity:0) , trigger: starAnimation) { content, value in
                                content
                                    .offset(x: value.x, y: value.y)
                                    .scaleEffect(value.scale)
                                    .opacity(value.opacity)
                            } keyframes: { _ in
                                KeyframeTrack(\.x) {
                                    LinearKeyframe(-contentSize.width * 0.4, duration: 1)
                                    LinearKeyframe(contentSize.width * 0.3, duration: 0.3, timingCurve: .easeIn)
                                }

                                KeyframeTrack(\.y){
                                    LinearKeyframe(contentSize.height * 0.4, duration: 1)
                                    LinearKeyframe(contentSize.height * 0.4, duration: 0.3, timingCurve: .easeIn)
                                }
                                
                                KeyframeTrack(\.scale){
                                    LinearKeyframe(1, duration: 1)
                                    LinearKeyframe(0.65, duration: 0.3, timingCurve: .easeIn)
                                }
                                
                                KeyframeTrack(\.opacity) {
                                    MoveKeyframe(1)
                                    LinearKeyframe(1, duration: 1.2)
                                    MoveKeyframe(0)
                                }
                            }
                        
                        
                        
                        Image(bottle)
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
    OrangeView( starAnimation: .constant(false), showFruits: .constant(true), bottle: .constant("yellow"), images: .constant(["orange-1","image 1","orange-2","orange-3","orange"]))
}
