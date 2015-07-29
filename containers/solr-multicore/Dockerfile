FROM twinbit/docker-drupal-solr
COPY solr/solr-conf/elite/conf:/opt/solr/example/multicore/elite/conf
COPY data/etc/solr-conf/solr.xml:/opt/solr/example/multicore/solr.xml
CMD ["-Xmx1024m", "-DSTOP.PORT=8079", "-DSTOP.KEY=stopkey", "-Dsolr.solr.home=multicore", "-jar", "start.jar"]
