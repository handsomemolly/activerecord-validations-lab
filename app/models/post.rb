class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction, Non-Fiction)}
    # validate :clickbait_title



#     def clickbait_title
#         if title && title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
#             errors.add(:title, "This is clickbait!")
#     end
# end


end
