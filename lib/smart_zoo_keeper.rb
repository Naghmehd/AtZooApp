class SmartZooKeeper
  def call(cages, animal)
    cage = cages.select { |c| c.group.downcase == animal.group.downcase }.first

    return false unless cage

    cage.animals << animal
    cage.save
  end
end
