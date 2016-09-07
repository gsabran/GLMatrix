// https://github.com/Quick/Quick

import Quick
import Nimble
import GLMatrix
import GLKit

class TableOfContentsSpec: QuickSpec {
	override func spec() {
		describe("vec4") {
			it("can do things with a vec4") {
				let a = Vec4.Zero()
				let b = Vec4(v: (1, 1, 1, 1))
				a.add(b)
				let _ = a.distance(from: b)
				let _ = a.squaredDistance(from: b)
				let _ = a.length
				let _ = a.squaredLength
				a.divide(by: b)
				let _ = a.dot(b)
				a.lerp(with: b, at: 0.5)
				a.max(with: b)
				a.min(with: b)
				let _ = GLKVector4(a)
			}
		}

		describe("Quat") {
			it("can do things with a quat") {
				let q1 = Quat.init(x: 0, y: 0, z: 0, w: 1)
				let q2 = Quat.init(x: 0, y: 0, z: 0, w: 1)
				q1.multiply(with: q2)

				let _ = GLKQuaternion(q1)
			}
		}

		describe("Mat3") {
			it("can do things with a mat3") {
				let i = Mat3.Identity()
				let o = Mat3.Zero()

				i.invert()
				i.transpose()
				i.multiply(with: o)

				let _ = GLKMatrix3(i)
			}
		}

		describe("Mat4") {
			it("can do things with a mat3") {
				let i = Mat4.Identity()
				let o = Mat4.Zero()

				i.invert()
				i.transpose()
				i.multiply(with: o)

				let _ = GLKMatrix4(i)
			}
		}
    }
}
