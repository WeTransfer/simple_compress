# simple_compress

A tiny module for doing Gzip compression/expansion using a known pattern, that is usable with
Ruby strings. Encapsulates the whole lap dance with IO and things.

    SimpleCompress.compress("Hello world!") # => "\u001F\x8B\b\u0000M..."

and in reverse

    SimpleCompress.expand(SimpleCompress.compress("Hello world!")) # => "Hello world!"

## Contributing to simple_compress
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2015 Julik Tarkhanov. See LICENSE.txt for
further details.

