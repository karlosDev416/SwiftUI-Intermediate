//
//  RotationGestureView.swift
//  SwiftUI-Intermediate
//
//  Created by KARLOS AGUIRRE on 7/30/23.
//

import SwiftUI

struct RotationGestureView: View {
    
    @State var rotationAngle = Angle.degrees(0)
    var body: some View {
        NavigationView {
            VStack {
                Text("Aprendiendo SwiftUI")
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 360, height: 100)
                    .background(.red)
                    .cornerRadius(20)
                    .rotationEffect(rotationAngle)
                    .gesture(
                        RotationGesture()
                            .onChanged({ angle in
                                rotationAngle = angle
                            })
                            .onEnded({ _ in
                                withAnimation {
                                    rotationAngle = .degrees(0)
                                }
                                
                            })
                    )
            }
            .navigationTitle("Rotation Gesture")
        }
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureView()
    }
}
