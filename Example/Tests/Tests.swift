// https://github.com/Quick/Quick

import Quick
import Nimble
import GLMatrix

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("these will fail") {

            it("can do maths") {
                expect(1) == 2
            }

            it("can read") {
                expect("number") == "string"
            }

            it("will eventually fail") {
                expect("time").toEventually( equal("done") )
            }
            
            context("these will pass") {

                it("can do maths") {
                    expect(23) == 23
                }

                it("can read") {
                    expect("🐮") == "🐮"
                }

                it("will eventually pass") {
                    var time = "passing"

                    DispatchQueue.main.async {
                        time = "done"
                    }

                    waitUntil { done in
                        Thread.sleep(forTimeInterval: 0.5)
                        expect(time) == "done"

                        done()
                    }
                }
            }
        }

		describe("Mat3") {
			it("can create a mat3") {
				let mat = Mat3.Zero()
				mat.invert()
				expect(mat.m00) == 0.0

				// func divide(by b: Vec4, andOutputTo out: Vec4? = nil) {
				let a = Vec4.Zero()
				let b = Vec4.Zero()
				a.divide(by: b)
			}
		}
    }
}
