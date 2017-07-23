#!/bin/bash
IPADDR=$1
PORT=$2
JSON_RESPONCE=$(curl -s $IPADDR:$PORT/$3)
# echo $JSON_RESPONCE | jq "."
case "$4" in
  "cluster_name" ) echo $JSON_RESPONCE | jq -r ".cluster_name" ;;
  "status" ) echo $JSON_RESPONCE | jq -r ".status" ;;
  "timed_out" ) echo $JSON_RESPONCE | jq ".timed_out" ;;
  "number_of_nodes" ) echo $JSON_RESPONCE | jq ".number_of_nodes" ;;
  "number_of_data_nodes" ) echo $JSON_RESPONCE | jq ".number_of_data_nodes" ;;
  "active_primary_shards" ) echo $JSON_RESPONCE | jq ".active_primary_shards" ;;
  "active_shards" ) echo $JSON_RESPONCE | jq ".active_shards" ;;
  "relocating_shards" ) echo $JSON_RESPONCE | jq ".relocating_shards" ;;
  "initializing_shards" ) echo $JSON_RESPONCE | jq ".initializing_shards" ;;
  "unassigned_shards" ) echo $JSON_RESPONCE | jq ".unassigned_shards" ;;
  "delayed_unassigned_shards" ) echo $JSON_RESPONCE | jq ".delayed_unassigned_shards" ;;
  "number_of_pending_tasks" ) echo $JSON_RESPONCE | jq ".number_of_pending_tasks" ;;
  "number_of_in_flight_fetch" ) echo $JSON_RESPONCE | jq ".number_of_in_flight_fetch" ;;
  "task_max_waiting_in_queue_millis" ) echo $JSON_RESPONCE | jq ".task_max_waiting_in_queue_millis" ;;
  "active_shards_percent_as_number" ) echo $JSON_RESPONCE | jq ".active_shards_percent_as_number" ;;
  "indices_count" ) echo $JSON_RESPONCE | jq ".indices.count" ;;
  "indices_shards_total" ) echo $JSON_RESPONCE | jq ".indices.shards.total" ;;
  "indices_shards_primaries" ) echo $JSON_RESPONCE | jq ".indices.shards.primaries" ;;
  "indices_shards_replication" ) echo $JSON_RESPONCE | jq ".indices.shards.replication" ;;
  "indices_index_shards_min" ) echo $JSON_RESPONCE | jq ".indices.shards.index.shards.min" ;;
  "indices_index_shards_max" ) echo $JSON_RESPONCE | jq ".indices.shards.index.shards.max" ;;
  "indices_index_shards_avg" ) echo $JSON_RESPONCE | jq ".indices.shards.index.shards.avg" ;;
  "indices_index_primaries_min" ) echo $JSON_RESPONCE | jq ".indices.shards.index.primaries.min" ;;
  "indices_index_primaries_max" ) echo $JSON_RESPONCE | jq ".indices.shards.index.primaries.max" ;;
  "indices_index_primaries_avg" ) echo $JSON_RESPONCE | jq ".indices.shards.index.primaries.avg" ;;
  "indices_index_replication_min" ) echo $JSON_RESPONCE | jq ".indices.shards.index.replication.min" ;;
  "indices_index_replication_max" ) echo $JSON_RESPONCE | jq ".indices.shards.index.replication.max" ;;
  "indices_index_replication_avg" ) echo $JSON_RESPONCE | jq ".indices.shards.index.replication.avg" ;;
  "indices_docs_count" ) echo $JSON_RESPONCE | jq ".indices.docs.count" ;;
  "indices_docs_deleted" ) echo $JSON_RESPONCE | jq ".indices.docs.deleted" ;;
  "indices_store_size_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.store.size_in_bytes" ;;
  "indices_store_throttle_time_in_millis" ) echo $JSON_RESPONCE | jq ".indices.store.throttle_time_in_millis" ;;
  "indices_fielddata_memory_size_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.fielddata.memory_size_in_bytes" ;;
  "indices_fielddata_evictions" ) echo $JSON_RESPONCE | jq ".indices.fielddata.evictions" ;;
  "indices_query_cache_total_count" ) echo $JSON_RESPONCE | jq ".indices.query_cache.total_count" ;;
  "indices_query_cache_hit_count" ) echo $JSON_RESPONCE | jq ".indices.query_cache.hit_count" ;;
  "indices_query_cache_miss_count" ) echo $JSON_RESPONCE | jq ".indices.query_cache.miss_count" ;;
  "indices_query_cache_cache_size" ) echo $JSON_RESPONCE | jq ".indices.query_cache.cache_size" ;;
  "indices_query_cache_cache_count" ) echo $JSON_RESPONCE | jq ".indices.query_cache.cache_count" ;;
  "indices_query_cache_evictions" ) echo $JSON_RESPONCE | jq ".indices.query_cache.evictions" ;;
  "indices_query_cache_memory_size_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.query_cache.memory_size_in_bytes" ;;
  "indices_completion_size_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.completion.size_in_bytes" ;;
  "indices_segments_count" ) echo $JSON_RESPONCE | jq ".indices.segments.count" ;;
  "indices_segments_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.memory_in_bytes" ;;
  "indices_segments_terms_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.terms_memory_in_bytes" ;;
  "indices_segments_stored_fields_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.stored_fields_memory_in_bytes" ;;
  "indices_segments_term_vectors_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.term_vectors_memory_in_bytes" ;;
  "indices_segments_norms_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.norms_memory_in_bytes" ;;
  "indices_segments_points_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.points_memory_in_bytes" ;;
  "indices_segments_doc_values_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.doc_values_memory_in_bytes" ;;
  "indices_segments_index_writer_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.index_writer_memory_in_bytes" ;;
  "indices_segments_version_map_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.version_map_memory_in_bytes" ;;
  "indices_segments_fixed_bit_set_memory_in_bytes" ) echo $JSON_RESPONCE | jq ".indices.segments.fixed_bit_set_memory_in_bytes" ;;
  "indices_segments_max_unsafe_auto_id_timestamp" ) echo $JSON_RESPONCE | jq ".indices.segments.max_unsafe_auto_id_timestamp" ;;
  "nodes_count_total" ) echo $JSON_RESPONCE | jq ".nodes.count.total" ;;
  "nodes_count_data" ) echo $JSON_RESPONCE | jq ".nodes.count.data" ;;
  "nodes_count_coordinating_only" ) echo $JSON_RESPONCE | jq ".nodes.count.coordinating_only" ;;
  "nodes_count_master" ) echo $JSON_RESPONCE | jq ".nodes.count.master" ;;
  "nodes_count_ingest" ) echo $JSON_RESPONCE | jq ".nodes.count.ingest" ;;
  "nodes_os_available_processors" ) echo $JSON_RESPONCE | jq ".nodes.os.available_processors" ;;
  "nodes_os_allocated_processors" ) echo $JSON_RESPONCE | jq ".nodes.os.allocated_processors" ;;
  "nodes_mem_total_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.os.mem.total_in_bytes" ;;
  "nodes_mem_free_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.os.mem.free_in_bytes" ;;
  "nodes_mem_used_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.os.mem.used_in_bytes" ;;
  "nodes_mem_free_percent" ) echo $JSON_RESPONCE | jq ".nodes.os.mem.free_percent" ;;
  "nodes_mem_used_percent" ) echo $JSON_RESPONCE | jq ".nodes.os.mem.used_percent" ;;
  "nodes_process_cpu_percent" ) echo $JSON_RESPONCE | jq ".nodes.process.cpu.percent" ;;
  "nodes_process_open_file_descriptors_min" ) echo $JSON_RESPONCE | jq ".nodes.process.open_file_descriptors.min" ;;
  "nodes_process_open_file_descriptors_max" ) echo $JSON_RESPONCE | jq ".nodes.process.open_file_descriptors.max" ;;
  "nodes_process_open_file_descriptors_avg" ) echo $JSON_RESPONCE | jq ".nodes.process.open_file_descriptors.avg" ;;
  "nodes_jvm_max_uptime_in_millis" ) echo $JSON_RESPONCE | jq ".nodes.jvm.max_uptime_in_millis" ;;
  "nodes_jvm_mem_heap_used_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.jvm.mem.heap_used_in_bytes" ;;
  "nodes_jvm_mem_heap_max_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.jvm.mem.heap_max_in_bytes" ;;
  "nodes_jvm_threads" ) echo $JSON_RESPONCE | jq ".nodes.jvm.threads" ;;
  "nodes_fs_total_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.fs.total_in_bytes" ;;
  "nodes_fs_free_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.fs.free_in_bytes" ;;
  "nodes_fs_available_in_bytes" ) echo $JSON_RESPONCE | jq ".nodes.fs.available_in_bytes" ;;
  "nodes_fs_spins" ) echo $JSON_RESPONCE | jq -r ".nodes.fs.spins" ;;
  "nodes_network_types_transport_types_security4" ) echo $JSON_RESPONCE | jq ".nodes.network_types.transport_types.security4" ;;
  "nodes_network_types_http_types_security4" ) echo $JSON_RESPONCE | jq ".nodes.network_types.http_types.security4" ;;
  "nodes_versions" ) echo $JSON_RESPONCE | jq -r ".nodes.versions" ;;
esac
