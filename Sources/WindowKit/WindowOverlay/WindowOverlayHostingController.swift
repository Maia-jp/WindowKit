//
//  WindowOverlayHostingController.swift
//  WindowKit
//
//  Created by David Walter on 15.10.23.
//

import SwiftUI

final class WindowOverlayHostingController<Content>: UIHostingController<Content> where Content: View {
    var key: WindowKey
    
    init(key: WindowKey, rootView: Content) {
        self.key = key
        super.init(rootView: rootView)
    }
    
    @available(*, unavailable)
    @MainActor dynamic required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
    }
}
