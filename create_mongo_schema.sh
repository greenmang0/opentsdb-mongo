#!/bin/bash

# this file creates hbase schema for mongo-stats metric collector

TSDB=$(which tsdb) # replace value of TSDB with the absolute path of "tsdb" binary

$TSDB mkmetric \
mongo.mem.resident \
mongo.mem.virtual \
mongo.mem.mapped \
mongo.network.bytesIn \
mongo.network.bytesOut \
mongo.network.numRequests \
mongo.opcounters.insert \
mongo.opcounters.query \
mongo.opcounters.update \
mongo.opcounters.delete \
mongo.opcounters.getmore \
mongo.opcounters.command \
mongo.connections.current \
mongo.connections.available \
mongo.extra_info.heap_usage_bytes \
mongo.extra_info.page_faults \
mongo.asserts.regular \
mongo.asserts.warning \
mongo.asserts.msg \
mongo.asserts.user \
mongo.asserts.rollovers \
mongo.indexCounters.btree.missRatio \
mongo.indexCounters.btree.resets \
mongo.indexCounters.btree.hits \
mongo.indexCounters.btree.misses \
mongo.indexCounters.btree.accesses \
mongo.globalLock.totaltime \
mongo.globalLock.locktime \
mongo.globalLock.ratio \
mongo.globalLock.currentQueue.total \
mongo.globalLock.currentQueue.readers \
mongo.globalLock.currentQueue.writers \
mongo.globalLock.activeClients.total \
mongo.globalLock.activeClients.readers \
mongo.globalLock.activeClients.writers
