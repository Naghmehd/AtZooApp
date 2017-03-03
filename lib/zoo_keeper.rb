class ZooKeeper
  def call(cage, animal)
    return false unless animal.group
    return false unless cage.group.downcase == animal.group.downcase

    cage.animals << animal
    cage.save
  end
end
