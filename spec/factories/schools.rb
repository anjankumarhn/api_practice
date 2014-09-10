FactoryGirl.define do
factory :school do
name "School"
phone "111-222-3333"
address "#99, Street #123, Some Road, Some City"
description " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
end
factory :active_school, :parent => :school do
status "active"
end
factory :inactive_school, :parent => :school do
status "inactive"
end
end