//
//  RouterSpy.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//

// Tests/Support/Spies/RouterSpy.swift
final class RouterSpy<R: Equatable> {
    private(set) var routes: [R] = []
    func navigate(to route: R) { routes.append(route) }
}
