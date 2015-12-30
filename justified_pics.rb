require 'erb'

def save_index_page(page)
  filename = "index.html"

  File.open(filename, 'w') do |file|
    file.puts page
  end
end

collection = Collection.new
erb_template = ERB.new(File.read "index.erb")
index_page = erb_template.result(binding)
save_index_page(index_page)

end
