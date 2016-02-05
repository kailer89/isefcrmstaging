class Comment < ActiveRecord::Base
	belongs_to :commentable, :polymorphic => true
	belongs_to :article
	has_many :comments, :as => :commentable
end
