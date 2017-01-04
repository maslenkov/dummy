class Device < ActiveRecord::Base
  def set_external_id(external_id)
    Device.where(external_id: external_id).update_all(external_id: nil)
    self.update(external_id: external_id)
  end

  def self.test
    Device.delete_all
    device = Device.create(external_id: 'external_id')
    device.set_external_id('external_id')
    device.reload

    puts '----------------------'
    puts device.external_id
    puts '----------------------'
  end
end
