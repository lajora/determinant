
b = [[3, -3, 3], [3, 8, -4], [9, 4, 2]]

def determinant_2x2(a,b,c,d)
  (a * d) - (b * c)
end

# ----------- 1 --------------
def determinant_of_b
  3 * (1) * determinant_2x2(8, -4, 4, 2) + (-3) * (-1) * determinant_2x2(3, -4, 9, 2) + 3 * (1) * determinant_2x2(3, 8, 9, 4)
end

p " The determinant of matrix B is #{determinant_of_b}"

# ---------- 2 ---------------
# MTX= [[a, b, c],
#       [d, e, f],
#       [g, h, i]]
# row & colum for a as cofactor
a_index = b[0][0]
a_column = b.map { |num| num[0] }
# row & colum for b as cofactor
b_index = b[0][1]
b_column = b.map { |num| num[1] }
# row & colum for c as cofactor
c_index = b[0][2]
c_column = b.map { |num| num[2] }


# iterating over row & getting the column to each element of the row
# excluding row and column for each cofactor in row
# calculating determinant

# b.each do |row|
#   row.each_with_index do |col|
#     col.each { |num| num[2] }
#   end
# end
