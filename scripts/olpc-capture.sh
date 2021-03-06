#!/bin/sh
# This file is part of Te Tuhi Video Game System.
#
# Copyright (C) 2008 Douglas Bagnall
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.


DIR=`dirname $1`
mkdir -p $DIR

#from  http://wiki.laptop.org/go/Programming_the_camera
gst-launch-0.10 v4l2src ! ffmpegcolorspace ! pngenc ! filesink location=$1

#jpegenc doesn't stop after one image. If it did, code further down
#the line would be simpler.

#gst-launch-0.10 v4l2src ! ffmpegcolorspace ! jpegenc quality=95 ! filesink location=$1
