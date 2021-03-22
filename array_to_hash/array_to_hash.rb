def array_to_hash(array)
  result_hash = {}
  array.each_with_index do |item, index|

    key = block_given? ? yield(index) : index.to_s
    result_hash[key] = item

    # if block_given?
    #   key = yield(index)
    #   result_hash[key] = item
    # else
    #   key = index.to_s
    #   result_hash[key] = item
    # end
  end
  result_hash
end

p array_to_hash(%w[this is a test])
p array_to_hash(%w[this is also a test]) { | index | "key#{index}" }
