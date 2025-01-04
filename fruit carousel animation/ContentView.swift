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
    @State var showYellow = false
    @State var showGreen = false
    @State var showPurple = false
    @State private var currentIndex: Int = 0
    @State private var visibleIndex: Int? = nil
    @State private var previousMinX: CGFloat = 0
    @State private var direction: String = "None"
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing:0) {
                ScrollView(.horizontal) {
                    HStack(spacing:0){
                        ZStack {
                            OrangeView(starAnimation: $startYellowAnimation, showFruits: $showYellow,bgColor: .constant(0xFFD847), bottle: .constant("yellow"), images: .constant(["orange-1","image 1","orange-2","orange-3","orange"]))
                                .frame(width: proxy.size.width)
                                .onScrollVisibilityChange { val in
                                    startYellowAnimation = val
                                    showYellow = val
                                }
                        }
                        .zIndex(showYellow ? 1:0)
                        
                        ZStack {
                            OrangeView(starAnimation: $startGreenAnimation, showFruits: $showGreen, bgColor: .constant(0x8EC648), bottle: .constant("green"), images: .constant(["pngwing 2","pngwing 1","pngwing 3-1","pngwing 4","pngwing 3"]) )
                                .frame(width: proxy.size.width)
                                .background(
                                    GeometryReader { innerProxy in
                                        Color.clear
                                            .onAppear(perform: {
                                                previousMinX = innerProxy.size.width
                                            })
                                            .onChange(of: innerProxy.frame(in: .global).minX) {_, minX in
                                                print(innerProxy.frame(in: .global).minX)
                                                print("width:\(proxy.size.width)")
                                                
                                                let minX = innerProxy.frame(in: .global).minX
                                                let width = innerProxy.size.width
                                                
                                                // Update views based on position
                                                if minX >= -width + 10 && minX < 0 {
                                                    print("PURPLE--GREEN")
                                                    if minX > previousMinX {
                                                        print("PURPLE--GREEN: Scrolling Right")
                                                        showGreen = true
                                                        showPurple = false
                                                        showYellow = false
                                                    } else if minX < previousMinX {
                                                        print("PURPLE--GREEN: Scrolling Left")
                                                        showGreen = false
                                                        showPurple = true
                                                        showYellow = false
                                                    }
                                                }
                                                else if minX > 0 && minX < width - 10 {
                                                    print("YELLOW--GREEN")
                                                    if minX > previousMinX {
                                                        print("YELLOW--GREEN: Scrolling Right")
                                                        showGreen = false
                                                        showPurple = false
                                                        showYellow = true
                                                    } else if minX < previousMinX {
                                                        print("YELLOW--GREEN: Scrolling Left")
                                                        showGreen = true
                                                        showPurple = false
                                                        showYellow = false
                                                    }
                                                }
                                                previousMinX = minX
                                            }
                                    }
                                )
                                .onScrollVisibilityChange { val in
                                    startGreenAnimation = val
                                    showGreen = val
                                }
                        }
                        .zIndex(showGreen ? 1:0)
                        
                        ZStack {
                            OrangeView(starAnimation: $startPurpleAnimation, showFruits: $showPurple, bgColor: .constant(0x6848C6), bottle: .constant("purple"), images: .constant(["pngwing 8","bbary 1","pngwing 5","pngwing 7","pngwing 6"]) )
                                .frame(width: proxy.size.width)
                                .onScrollVisibilityChange { val in
                                    startPurpleAnimation = val
                                    showPurple = val
                                }
                        }
                        .zIndex(showPurple ? 1:0)
                    }
                    .scrollTargetLayout()
                }
                .scrollClipDisabled()
                .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
                
            }
            .ignoresSafeArea()
        }
        
    }
    
    private func detectVisibility(minX: CGFloat, width: CGFloat) -> Bool {
        let threshold = width * 0.5
        
        if abs(minX) < threshold {
            return true;
        }
        return false
    }
}

#Preview {
    ContentView()
}
