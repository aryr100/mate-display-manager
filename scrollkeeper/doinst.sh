if [ -x usr/bin/xmlcatalog ]; then
  usr/bin/xmlcatalog --noout --add "public" \
    "-//OMF//DTD Scrollkeeper OMF Variant V1.0//EN" \
    "/usr/share/xml/scrollkeeper/dtds/scrollkeeper-omf.dtd" etc/xml/catalog
fi

if [ -x usr/bin/scrollkeeper-rebuilddb ]; then
  usr/bin/scrollkeeper-rebuilddb -q -p var/lib/scrollkeeper
fi

if [ -x usr/bin/scrollkeeper-update ]; then
  usr/bin/scrollkeeper-update -p var/lib/scrollkeeper 1> /dev/null 2> /dev/null
fi
