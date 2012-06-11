class Paper < ActiveRecord::Base
  attr_accessible :description, :title, :quote, :pdf_url, :article_url, :tags, :tag_string
  has_and_belongs_to_many :tags

  def tag_string
    tags.map{|t| t.name}.join(", ")
  end

  def tag_string=(string)
    tags = string.split ","
    tags.each do |t|
      tag = Tag.find_or_create_by_name t.rstrip
      tag.papers << self unless tag.papers.include? self
    end
  end

  def self.find_by_tag(tags)

  end
end
