class PageView < Impression
  scope :for_type, -> (type) do
    where(Impressionable_type: type)
  end
end
