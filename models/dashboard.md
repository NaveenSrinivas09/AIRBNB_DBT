version: 2

exposures:
  - name: executive_dashboard
    label: Executive Dashboard
    type: dashboard
    maturity: low
    url: https://00d200da.us1a.app.preset.io/superset/dashboard/x/?edit=true&native_filters_key=fnn_HJZ0z42ZJtoX06x7gRbd9oBFgFLbnPlCW2o_aiBeZJi3bZuyfQuXE96xfgB
    description: Executive Dashboard about Airbnb listings and hosts
      

    depends_on:
      - ref('dim_listings_w_hosts')
      - ref('mart_fullmoon_reviews')

    owner:
      name: Naveen Srinivas
      email: Mnaveens595@gmail.com