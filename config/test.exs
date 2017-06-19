use Mix.Config

config :cream, :clusters, [
  three_node_cluster: [
    servers: ["localhost:11201", "localhost:11202", "localhost:11203"],
    memcachex: [coder: Memcache.Coder.JSON]
  ]
]

config :logger,
  level: :info
