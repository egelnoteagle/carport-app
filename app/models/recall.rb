class Recall
  attr_accessor :manufacturer, :component, :summary, :conequence, :remedy, :notes, :modelyear, :make, :model

  def intialize(hash)
    @manufacturer = hash["Manufacturer"]
    @component = hash["Component"]
    @summary = hash["Summary"]
    @conequence = hash["Conequence"]
    @remedy = hash["Remedy"]
    @notes = hash["Notes"]
    @modelyear = hash["ModelYear"]
    @make = hash["Make"]
    @model = hash["Model"]
  end
end