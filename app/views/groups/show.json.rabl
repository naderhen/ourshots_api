object @group
attributes :id, :name

child :users do
	attributes :id, :email
end

child :group_shots do
	attributes :id, :date
end