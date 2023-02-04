import Foundation

/// Package to handle things like formatting etc
public struct CorePackage {
    
    /// Method to formate passed ``CustomDate``
    /// - Parameter customDate: Date object
    /// - Returns: Formatted date `String`
    public func format(customDate: CustomDate) -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MMMM.yyyy"
        return formatter.string(from: customDate.date)
    }
}

/// Custom class for testing purposes
public struct CustomDate {
    let date: Date
}
