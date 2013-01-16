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

* `node['geo-lite']['city']['url']` - Url to download GeoLiteCity.dat.gz file from
* `node['geo-lite']['city']['dir']` - Dir to put GeoLiteCity.dat file into

* `node['geo-lite']['country']['url']` - Url to download GeoIP.dat.gz file from
* `node['geo-lite']['country']['dir']` - Dir to put GeoIP.dat file into


Usage
=====

Use `default`, `city` or `country` recipe
