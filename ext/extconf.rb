#!/usr/bin/env ruby

require 'mkmf'

if have_library('discid', 'discid_new', 'discid/discid.h') or
   have_library('discid.dll', 'discid_new', 'discid/discid.h')
  create_makefile('DiscID')
else
  puts 'Required library libdiscid not found.'
end