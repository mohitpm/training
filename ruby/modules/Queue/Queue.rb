require 'thread'
queue = Queue.new

producer = Thread.new do
  5.times do |i|


