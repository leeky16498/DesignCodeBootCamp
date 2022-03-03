//
//  DateFormatClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct DateFormatClass: View {
    
    var stringDate = "2021-02-01T09:45:00.000+02:00"
     // JS에서 날짜를 받아온 경우 아래의 함수를 통해서 swiftUI 함수로 변경하고 바꾸어주는 것이 가능하다.
    
    var body: some View {
        Text("\(Date().formatDate())")
    }
    
    func dateStringDate(date : String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd'T'HH:mm:ss.SSSZ"
        let newDate = dateFormatter.date(from: date)
        return newDate!.formatDate()
    }
}

struct DateFormatClass_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatClass()
    }
}

extension Date {
    func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEEE MMM d") // 여기는 기본적으로 스트링을 반환해주는 문자열인데 기본 Docs를 보고 원하는 글씨를 알아보는 것이 낫다.
        return dateFormatter.string(from: self)
    }
}
