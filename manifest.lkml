# manifest.lkml
application: my-custom-extension {
  label: "My Custom Extension"
  url: "file: bundle.js"  # For local development
  #file: "bundle.js" # For production when code is hosted in the project
  entitlements: {
    # Add required entitlements here
    local_storage: yes
    navigation: yes
    #api_methods: ["GET /dashboards", "GET /looks"] # Example API methods
    external_api_urls: ["https://my-api.com"] # Example external API
  }
}
