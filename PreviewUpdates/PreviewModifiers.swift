//
//  PreviewModifiers.swift
//  PreviewUpdates
//
//  Created by Marcin Jędrzejak on 16/10/2024.
//

import SwiftUI

struct NavEmbedded: PreviewModifier {
    func body(content: Content, context: Void) -> some View {
        NavigationStack {
            content
        }
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    static var navEmbedded: Self = .modifier(NavEmbedded())
}
