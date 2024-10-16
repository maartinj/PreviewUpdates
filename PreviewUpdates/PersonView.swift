//
//----------------------------------------------
// Original project: PreviewUpdates
// by  Stewart Lynch on 2024-08-29
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.

import SwiftUI
import SwiftData

struct PersonView: View {
    @Bindable var person: Person
    var body: some View {
        Form {
            TextField("First name", text: $person.firstName)
            TextField("Last name", text: $person.lastName)
        }
        .font(.title)
            .navigationTitle("\(person.firstName) \(person.lastName)")
            .navigationBarTitleDisplayMode(.inline)
    }
}

// 1st method
//#Preview(traits: .modifier(NavEmbedded())) {
// 2nd method
#Preview(traits: .navEmbedded, .mockData) {
    @Previewable @Query(sort: \Person.lastName) var people: [Person]
    PersonView(person: people[0])
}
