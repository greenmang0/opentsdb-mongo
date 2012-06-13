MongoDB Statistics Collector for OpenTSDB
=========================================

NOTE : This collector uses MongoDB's REST Interface so make sure "mongo" process
is started with "--rest" flag. The default port for REST interface is "28017", so
collector should be able to access that port.

This collector outputs following metrics
----------------------------------------

* mongo.mem.resident
* mongo.mem.virtual
* mongo.mem.mapped

* mongo.network.bytesIn
* mongo.network.bytesOut
* mongo.network.numRequests

* mongo.opcounters.insert
* mongo.opcounters.query
* mongo.opcounters.update
* mongo.opcounters.delete
* mongo.opcounters.getmore
* mongo.opcounters.command

* mongo.connections.current
* mongo.connections.available

* mongo.extra_info.heap_usage_bytes
* mongo.extra_info.page_faults

* mongo.asserts.regular
* mongo.asserts.warning
* mongo.asserts.msg
* mongo.asserts.user
* mongo.asserts.rollovers

* mongo.indexCounters.btree.missRatio
* mongo.indexCounters.btree.resets
* mongo.indexCounters.btree.hits
* mongo.indexCounters.btree.misses
* mongo.indexCounters.btree.accesses

* mongo.globalLock.totaltime
* mongo.globalLock.locktime
* mongo.globalLock.ratio
* mongo.globalLock.currentQueue.total
* mongo.globalLock.currentQueue.readers
* mongo.globalLock.currentQueue.writers
* mongo.globalLock.activeClients.total
* mongo.globalLock.activeClients.readers
* mongo.globalLock.activeClients.writers

All metrics are tagged with **host=**

For more information on these values, refer:

http://www.mongodb.org/display/DOCS/serverStatus+Command
