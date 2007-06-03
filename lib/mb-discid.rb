# $Id$
# Copyright (c) 2007, Philipp Wolfer
# All rights reserved.
# See LICENSE for permissions.

# Just a helper file to allow loading the MB-DiscID library with
# <tt>require 'mb-discid'</tt>, which is the only recommended way
# to load the library.
# This file may even provide extensions to the library in the future
# to avoid to have to write everything in C.

require 'MB_DiscID.so'

module MusicBrainz

  # Class to calculate a MusicBrainz DiscID from an audio CD in the drive.
  # 
  # This is basically an interface to the libdiscid C library.
  # 
  # Basic Usage:
  #  
  #  require 'mb-discid'
  #  
  #  # Create a new DiscID object
  #  disc = MusicBrainz::DiscID.new
  #  
  #  # Read the TOC from the default device.
  #  # An audio CD must be inserted in the drive. An exception will be thrown
  #  # if the CD can't be read.
  #  disc.read
  #  
  #  # Print information about the disc:
  #  print <<EOF
  #  DiscID     : #{disc.id}
  #  Submit via : #{disc.submission_url}
  #  FreeDB ID  : #{disc.freedb_id}
  #  First track: #{disc.first_track_num}
  #  Last track : #{disc.last_track_num}
  #  Sectors    : #{disc.sectors}
  #  EOF
  #  
  #  # Print information about individual tracks:
  #  track = disc.first_track_num
  #  disc.tracks do |offset, length|
  #    puts "Track #{track}: Offset #{offset}, Length #{length}"
  #    track += 1
  #  end
  #  
  # Specifying the device to read from:
  # 
  #  # Create a new DiscID object and read the disc in /dev/dvd:
  #  disc = MusicBrainz::DiscID.new
  #  disc.read('/dev/dvd')
  #  
  #  # Create a new DiscID object and directly read the disc in /dev/dvd:
  #  disc = MusicBrainz::DiscID.new('/dev/dvd')
  #  
  #  # Create a new DiscID object and directly read the disc in the platform's
  #  # default device:
  #  disc = MusicBrainz::DiscID.new(MusicBrainz::DiscID.default_device)
  class DiscID
    
    # DiscID to String conversion. Same as DiscID::id.
    def to_s
      return id
    end
    
  end

end