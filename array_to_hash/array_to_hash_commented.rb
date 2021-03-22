def array_to_hash(array)
  # create new empty hash
  result_hash = {}

  # iterate over each element in the array given to the array_to_hash method when it's called
  array.each_with_index do |item, index|

    # The same as the code below but using ternary operator
    # key = block_given? ? yield(index) : index.to_s


    # check if a block is given when the array_to_hash method is called
    if block_given?

      # set key to the result of the block given when array_to_hash method is called.
      # The block expects one argument, in this case the index of element in the array
      key = yield(index)

      # set value for the key to the item in the array
      result_hash[key] = item

    # if there's no block when array_to_hash is called
    else

      # sets key to the index of the item.
      # to_s transforms index(integer) to string as per challenge condition
      key = index.to_s

      # sets value to the item in the array
      result_hash[key] = item
    end
  end

  # return the results hash
  result_hash
end

# tests array_to_hash without a block
p array_to_hash(%w[this is a test])

# tests array_to_hash with a block
p array_to_hash(%w[this is also a test]) { | index | "key#{index}" }
