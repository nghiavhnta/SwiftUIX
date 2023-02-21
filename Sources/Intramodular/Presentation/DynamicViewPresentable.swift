//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

public protocol DynamicViewPresentable {
    /// The view's presentation name (if any).
    var presentationName: AnyHashable? { get }
    
    var dynamicPresenter: DynamicViewPresenter? { get }
}

// MARK: - Conformances

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

extension UIView: DynamicViewPresentable {
    public var presentationName: AnyHashable? {
        return nil
    }
    
    public var dynamicPresenter: DynamicViewPresenter? {
        nearestViewController
    }
}

extension UIViewController: DynamicViewPresentable {
    public var presentationName: AnyHashable? {
        presentationCoordinator.presentationName
    }
    
    public var dynamicPresenter: DynamicViewPresenter? {
        presentingViewController
    }
}

#elseif os(macOS)

extension NSView: DynamicViewPresentable {
    public var presentationName: AnyHashable? {
        return nil
    }
    
    public var dynamicPresenter: DynamicViewPresenter? {
        window
    }
}

extension NSViewController: DynamicViewPresentable {
    public var presentationName: AnyHashable? {
        presentationCoordinator.presentationName
    }
    
    public var dynamicPresenter: DynamicViewPresenter? {
        presentingViewController
    }
}

extension NSWindow: DynamicViewPresentable {
    public var presentationName: AnyHashable? {
        return nil
    }
    
    public var dynamicPresenter: DynamicViewPresenter? {
        parent
    }
}

#endif
