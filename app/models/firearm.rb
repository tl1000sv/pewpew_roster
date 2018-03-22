class Firearm < ApplicationRecord
  enum action: [ :bolt_action, :semi_auto, :single_shot, :pump_action, :lever_action, :double_barrel ]
  enum classification: [ :handgun, :rifle, :shotgun, :muzzleloader ]
end
