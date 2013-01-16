Description
===========

Provides recipies to download GeoLiteCity.dat.gz and GeoIP.dat.gz files

Requirements
============

Platform
--------

Cookbook is platform independent and should work on all of them.

Attributes
==========

* `default['geo-lite']['city']['url']` - Url to download GeoLiteCity.dat.gz file from
* `default['geo-lite']['city']['dir']` - Dir to put GeoLiteCity.dat file into

* `default['geo-lite']['country']['url']` - Url to download GeoIP.dat.gz file from
* `default['geo-lite']['country']['dir']` - Dir to put GeoIP.dat file into


Usage
=====

Use `default`, `city` or `country` recipe
