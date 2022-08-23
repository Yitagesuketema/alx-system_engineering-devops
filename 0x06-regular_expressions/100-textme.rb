##!/usr/bin/env ruby
puts ARGV[0].scan(/\[SENDER:\].* \[RECEIVER:\].* \[FLAGS:\].*/).join(",")
