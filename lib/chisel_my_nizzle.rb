
class ChiselMyNizzle

  def initialize(markdown)
    @markdown = markdown
  end

  def to_html
    @markdown.reverse
  end


end
markdown_file = ARGV[0]
html_file     = ARGV[1]

markdown = File.read(markdown_file)

html = Chisel.new(markdown).to_html
File.write(html_file, html)

num_lines_of_markdown = makrdown.lines.count
num_lines_of_html     = html.lines.count
puts "Converted #{markdown_file} (#{num_lines_of_markdown} lines)"
