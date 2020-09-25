class PageView < Impression
  scope :for_type, -> (type) do
    where(Impressionable_type: type)
  end

  scope :for_date_range, -> (start_date, end_date) do
    where(created_at: start_date.beginning_of_day..end_date.end_of_day)
  end

  def self.count_by_date(start_date, end_date)
    results = for_date_range(start_date, end_date).group('date(created_at)').count
  end

  def self.uniq_count_by_date(start_date, end_date)
    results = for_date_range(start_date, end_date).select(:ip_address).distinct.group('date(created_at)').count
  end

  def with_zeros(start_date, end_date, results_hash)
    date_range = (start_date.to_date..end_date.to_date).to_a
    hash_with_zeros = {}
    date_range.each do |date|
      hash_with_zeros[date] = results_hash[date] || 0
    end
    hash_with_zeros
  end
end
