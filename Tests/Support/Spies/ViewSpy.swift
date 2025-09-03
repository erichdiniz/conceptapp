//
//  ViewSpy.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//
final class ViewSpy<Page> {
    private(set) var renderedPages: [Page] = []
    private(set) var currentIndex: Int = -1
    func render(pages: [Page], currentIndex: Int) {
        renderedPages = pages; self.currentIndex = currentIndex
    }
}
