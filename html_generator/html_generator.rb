def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  if attributes.nil?
    return "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    return "<#{tag_name} #{attributes[0]}=\"#{attributes[1]}\">#{yield}</#{tag_name}>"
  end
end

puts tag("h1") { "Some Title" }
#=> "<h1>Some Title</h1>"

puts tag("a", ["href", "www.google.com"]) { "Google it" }
# '<a href="www.google.com">Google it</a>'

puts tag("a", ["href", "www.google.com"]) {
  tag("h1") {"Google it"}
}
# <a href="www.google.com"><h1>Google it</h1></a>
