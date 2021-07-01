class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :post_tags
  has_many :tags, through: :post_tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
