
import Foundation
import SwiftUI

extension Color {
    static let background = Color("background")
    static let text = Color("text")
    static let icon = Color("icon")
    static let systembackground = Color(uiColor: .systemBackground)
    
}



extension DateFormatter {
    static let allNumeric: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parseDate = DateFormatter.allNumeric.date(from: self) else {return Date()}
        return parseDate
    }
}

extension Date: Strideable {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
