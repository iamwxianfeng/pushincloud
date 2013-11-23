# encoding: utf-8
class ChangeColumnAppsId < ActiveRecord::Migration
  def up
    execute("alter table apps AUTO_INCREMENT 10000;")
  end

  def down
  end
end
