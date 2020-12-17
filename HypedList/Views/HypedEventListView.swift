//
//  HypedEventListView.swift
//  HypedList
//
//  Created by slawomir  on 17/12/2020.
//

import SwiftUI

struct HypedEventListView: View {
    var hypedEvents: [HypedEvent]
    var noEventsText: String
    
    var body: some View {
        ScrollView {
            VStack {
                if hypedEvents.count == 0 {
                    Text(noEventsText)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding(.top, 50)
                        .padding(.horizontal, 20)
                } else {
                    ForEach(hypedEvents) { hypedEvent in
                        HypedEventTileView(hypedEvent: hypedEvent)
                    }
                }
            }
        }
    }
}

struct HypedEventListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HypedEventListView(hypedEvents: [testHypedEvent1,testHypedEvent2 ], noEventsText: "nothing here :-(")
            
            HypedEventListView(hypedEvents: [], noEventsText: "nothing here :-(")
            
            
        }
    }
}
