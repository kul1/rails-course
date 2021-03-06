# encoding: utf-8
class Comment
  include Mongoid::Document
  # jinda begin
  include Mongoid::Timestamps
  field :body, :type => String
  belongs_to :article, :class_name => "Article"  
  belongs_to :user, :class_name => "User"  
  belongs_to :job, :class_name => "Job"  
  belongs_to :commentable, polymorphic: true 
  index({ commentable_id: 1, commentable_type: 1}) 
  # jinda end
end
