class Photo < ApplicationRecord

	attachment :image, destroy: false

end
