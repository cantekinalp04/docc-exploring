import SwiftUI
public struct UIPackage {
    public init() {}
    /// Returns text view with supplied text
    /// - Parameter text: a `String` value
    /// - Returns: `Text` view with passed text
    public func textView(text: String) -> some View {
        Text(text)
    }
}
