b = [[3, -3, 3], [3, 8, -4], [9, 4, 2]]

def determinant2(arr)
  (arr[0][0] * arr[1][1]) - (arr[0][1] * arr[1][0])
end

# ----------- 1 --------------
def determinant3(arr)
  a, b, c = arr.first

  a * 1 * determinant2(submatrix(arr, 0)) +
    b * -1 * determinant2(submatrix(arr, 1)) +
    c * 1 * determinant2(submatrix(arr, 2))
end
# def determinant_of_b
#   3 * (1) * determinant2(8, -4, 4, 2) + (-3) * (-1) * determinant2(3, -4, 9, 2) + 3 * (1) * determinant2(3, 8, 9, 4)
# end
# ---------- 2 ---------------

def determinant(arr)
  if arr.size == 2
    determinant2(arr)
  else
    row = arr.first
    sum = 0
    row.each_with_index do |element, index|
      coefficient = (index % 2).zero? ? 1 : -1
      submatrix = submatrix(arr, index)
      sum += coefficient * element * determinant(submatrix)
    end
    sum
  end
end

def submatrix(arr, pivot)
  sub_array = []
  arr.each_with_index do |row, index|
    next if index.zero?

    sub_row = []

    row.each_with_index do |col, j|
      next if j == pivot

      sub_row << (arr[index][j])
    end
    sub_array << sub_row
  end
end

p determinant3(b)
