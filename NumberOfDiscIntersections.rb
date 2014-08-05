def solution(a)
    # write your code in Ruby 1.9.3
    segments = []
    result = 0
    a.each_with_index do |e, i|
        segments << [i-e, i+e]
    end
    segments.sort! { |a,b| a[0]<b[0] ? -1 : 1 }
    segments.each_with_index do |e, i|
        l = i + 1
        r = a.length
        while l<r do
            m = ((l+r) / 2).to_i
            if segments[m][0] <= e[1]
                l = m + 1
            else
                r = m
            end
        end
        result += (l-i-1)
        return -1 if result > 10000000
    end
    
    result
end
