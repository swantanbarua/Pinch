//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Swantan Barua on 08/10/26.
//

import SwiftUI

struct InfoPanelView: View {
    
    // MARK: - PROPERTIES
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            // HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(
                    width: 30,
                    height: 30
                )
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                }
            
            Spacer()
            
            // INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 8))
            .frame(maxWidth: 400)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    InfoPanelView(
        scale: 1,
        offset: .zero
    )
    .preferredColorScheme(.dark)
    .previewLayout(.sizeThatFits)
    .padding()
}
