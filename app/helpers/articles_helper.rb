module ArticlesHelper
  def init_mas(num)
    mas = []
    mas[0] = 0
    mas[1] = 0
    i = 2
    (num - 2).times do
      mas[i] = 1
      i += 1
    end
    mas
  end

  def init_one(num, mas, k_iter = 2)
    (num - 2).times do
      break if k_iter * k_iter >= num

      if mas[k_iter] == 1
        l = k_iter * k_iter
        while l <= num
          mas[l] = 0
          l += k_iter
        end
      end
      k_iter += 1
    end
    mas
  end

  def find_prime_numbers(num)
    mas = init_mas num
    mas = init_one num, mas
    massive = []
    mas.each_index do |item|
      massive.push(item) if mas[item] == 1
    end
    massive
  end

  def foo_request(mas, num)
    str = ''
    (mas.length - 1).times do |i|
      if (mas[i] >= num) && (mas[i] <= 2 * num) && (mas[i + 1] - mas[i] == 2)
        str += (mas[i].to_s + ' ' + mas[i+1].to_s + ' ')
      end
    end
    str
  end

  def foo_result(n)
    n = n.to_i
    result = find_prime_numbers(n * 2)
    result = foo_request result, n
    if result.length == 0 
      return 'ERROR: not_found'
    else
      return result
    end
  end

  def find_db(find_title)
    Article.all.each do |item|
      return item if item.title == find_title
    end
  end
end
