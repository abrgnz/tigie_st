# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
root = Rails.root.to_s
i=1
pos = "1"
while pos != "22.1.7.1.1" do
  uri = URI("http://www.siicex-caaarem.org.mx/Bases/TIGIE2007.nsf/tarifa\?ReadViewEntries\&ExpandView\&Start\=#{pos}\&count\=99999")
  system "wget #{uri.to_s.dump} -O #{i}.xml"

  doc = Nokogiri::XML(File.open("#{root}/#{i}.xml"))

  elems = doc.xpath("//*[@position]")
  pos = elems.last.attr("position")

  elems.each do |node|
    length = node.attr("position").count "."
    str3 = node.attr("position")
    if(length>0)
      str2 = str3.reverse
      str = str2.slice((str2.index('.'))...(str2.length)).reverse.chop
      position = str2.slice(0...(str2.index('.'))).reverse
    else
      str = str3
    end
    puts "-- Node #{node.attr("position")} Length: #{length} parent_id: #{str} position: #{position}"

    if length == 0
      Chapter.create(identifier: str3, content:node.text.squish)
    elsif length == 1
      SubChapter.create(identifier: str3, content:node.text.squish, position:position, chapter_id: Chapter.find_by_identifier(str).id )
    elsif length == 2
      Content.create(identifier: str3, content:node.text.squish, position:position, sub_chapter_id: SubChapter.find_by_identifier(str).id)
    elsif length == 3
      SubContent.create(identifier: str3, contenty:node.text.squish, position:position, content_id: Content.find_by_identifier(str).id)
    elsif length == 4
      Expanded.create(identifier: str3, content:node.text.squish, position:position, sub_content_id: SubContent.find_by_identifier(str).id)
    end
  end
  i+=1
end
