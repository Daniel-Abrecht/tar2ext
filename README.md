# tar2ext
Extract tar archive contents to ext filesystem image or device.

This is still alpha software, there definitly are still some bugs.

# Usage

```
tar2ext image.ext < archive.tar
```

This only works for uncompressed tar archives. To use this with compressed tar archives anyway,
just pipe it through the correct uncompressor first. For example, if you have a .tar.gz archive,
you can simply use ```gzip -d < archive.tar.gz | tar2ext image.ext```, and so on.

# Current limitations

 * ACLs aren't supported yet.
 * Replacing a file with one of a different type isn't supportet yet.
 * Changing a symbolic link isn't supportet yet
