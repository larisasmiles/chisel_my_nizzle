
class ChiselMyNizzle

  def initialize(markdown)
    @markdown = markdown
  end

  def to_html
    @markdown.reverse
  end
end

im_running_the_program = ($PROGRAM_NAME == __FILE__)

if im_running_the_program
  markdown_file = ARGV[0]
  html_file     = ARGV[1]

  markdown = File.read(markdown_file)
  html = ChiselMyNizzle.new(markdown).to_html

  File.write(html_file, html)

  num_lines_of_markdown = markdown.lines.count
  num_lines_of_html     = html.lines.count
  puts "Converted #{markdown_file} (#{num_lines_of_markdown}) to #{html_file} (#{num_lines_of_html}lines)"
end
