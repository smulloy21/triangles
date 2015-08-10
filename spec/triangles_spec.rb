require('rspec')
require('triangles')

describe('Triangle') do
  describe("#triangle?") do
    it("returns true if a triangle") do
      test_triangle = Triangle.new(6, 7, 5)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
  describe("#triangle_type") do
    it("returns the type of triangle") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.triangle_type()).to(eq("equilateral."))
    end
    it("returns the type of triangle") do
      test_triangle = Triangle.new(6, 7, 5)
      expect(test_triangle.triangle_type()).to(eq("scalene."))
    end
  end
end
