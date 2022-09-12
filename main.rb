#lab_2 Rudenko Olexandr
class Tasks
  def first
    coordinates = [[28,298], [24,271], [31,229], [33,204], [39,179],
                   [33,148], [28,123], [28,101], [37,78], [49,56],
                   [77,44], [134,38], [171,33], [208,28], [238,24],
                   [306,20], [355,20], [413,20], [471,24],[487,48],
                   [510,95], [516,134], [515,190], [509,211], [483,233],
                   [409,213], [345,187], [326,161], [263,152] ,[251,195],
                   [222,209], [195,206], [160,202], [147,206], [129,223],
                   [119,248], [99,283], [79,298], [61,300]]

    result = 0
    prev_point_x = coordinates[1][0]
    prev_point_y = coordinates[0][1]
    last_coordinates = coordinates[0]

    for point in coordinates do
      result += (prev_point_x + point[0]) * (prev_point_y - point[1])
      prev_point_x = point[0]
      prev_point_y = point[1]
    end
    result +=((prev_point_x + last_coordinates[0]) * (prev_point_y - last_coordinates[1]))
    result = 0.5 * result.abs
    puts result

  end
  def second
    p = 4
    t = 8
    r = 0
    diap = (p**r) * (1 - (1/(p**(t))))
    puts diap

  end
  def third
    #1000100010001
    number = "1000100010001"
    elements = number.split('')

    count = 1
    res = 0

    for element in elements do
      res += element.to_i * (2 ** (elements.length - count))
      count += 1
    end

    puts res

  end
  def fourth
    #111
    number = 111
    res = ''

    while number > 0 do
      if number % 2 == 0
        res += "0"
      else
        res += "1"
      end
      number /= 2
    end

    res = res.split('').reverse!.join('')
    puts res

  end
  def show_res
    print "First task: "
    first
    print "Second task: "
    second
    print "Third task: "
    third
    print "Fourth task: "
    fourth
  end

end

test = Tasks.new
test.show_res

