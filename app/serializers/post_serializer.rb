class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  has_many :tags, serializer: TagSerializer
  belongs_to :author, serializer: AuthorSerializer
  
  def short_content
    "#{object.content[0..39]}..."
  end
  
end
