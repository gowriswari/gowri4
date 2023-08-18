- dashboard: sample_1_ecommerce_business_pulse__basic
  title: Sample 1) Ecommerce Business Pulse - Basic
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: nXJRwDcnj1SY3mz3uJtEJt
  elements:
  - title: Total Items
    name: Total Items
    model: basic_ecomm
    explore: basic_order_items
    type: single_value
    fields: [basic_order_items.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Items
    defaults_version: 1
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_order_items.created_at_date
    row: 1
    col: 9
    width: 5
    height: 2
  - name: Top Line Metrics
    type: text
    title_text: Top Line Metrics
    subtitle_text: Are we headed in the right direction?
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  - title: Average Sale Price
    name: Average Sale Price
    model: basic_ecomm
    explore: basic_order_items
    type: single_value
    fields: [basic_order_items.average_sale_price]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_order_items.created_at_date
    row: 1
    col: 14
    width: 5
    height: 2
  - title: "# of Order Items vs Avg Sale Price Over Time"
    name: "# of Order Items vs Avg Sale Price Over Time"
    model: basic_ecomm
    explore: basic_order_items
    type: looker_line
    fields: [basic_order_items.created_at_date, basic_order_items.count, basic_order_items.average_sale_price]
    fill_fields: [basic_order_items.created_at_date]
    sorts: [basic_order_items.created_at_date desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: basic_order_items.count,
            id: basic_order_items.count, name: "# of Order Items"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: basic_order_items.average_sale_price,
            id: basic_order_items.average_sale_price, name: Average Sale Price}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_label: Order Created Date
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      basic_order_items.average_sale_price: area
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Orders
    defaults_version: 1
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_order_items.created_at_date
    row: 3
    col: 9
    width: 15
    height: 6
  - title: New Users with Orders
    name: New Users with Orders
    model: basic_ecomm
    explore: basic_order_items
    type: single_value
    fields: [basic_users.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_users.created_at_date
    row: 1
    col: 0
    width: 9
    height: 2
  - title: Highest Spending Users
    name: Highest Spending Users
    model: basic_ecomm
    explore: basic_order_items
    type: looker_grid
    fields: [basic_users.id, basic_users.traffic_source, basic_order_items.total_sale_price,
      basic_users.country, basic_users.gender]
    sorts: [basic_order_items.total_sale_price desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: basic_order_items.count,
            id: basic_order_items.count, name: "# of Order Items"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: basic_order_items.average_sale_price,
            id: basic_order_items.average_sale_price, name: Average Sale Price}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Total Orders
    defaults_version: 1
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_order_items.created_at_date
    row: 9
    col: 9
    width: 15
    height: 9
  - title: New Users by Date and Source
    name: New Users by Date and Source
    model: basic_ecomm
    explore: basic_order_items
    type: looker_area
    fields: [basic_users.traffic_source, basic_users.count, basic_users.created_at_date]
    pivots: [basic_users.traffic_source]
    fill_fields: [basic_users.created_at_date]
    sorts: [basic_users.traffic_source, basic_users.created_at_date]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: left
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: right, series: [{axisId: Display - basic_users.count,
            id: Display - basic_users.count, name: Display}, {axisId: Email - basic_users.count,
            id: Email - basic_users.count, name: Email}, {axisId: Facebook - basic_users.count,
            id: Facebook - basic_users.count, name: Facebook}, {axisId: Organic -
              basic_users.count, id: Organic - basic_users.count, name: Organic},
          {axisId: Search - basic_users.count, id: Search - basic_users.count, name: Search}],
        showLabels: false, showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_label: User Created Date
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Orders
    defaults_version: 1
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_users.created_at_date
    row: 3
    col: 0
    width: 9
    height: 6
  - title: Unique Users
    name: Unique Users
    model: basic_ecomm
    explore: basic_order_items
    type: single_value
    fields: [basic_users.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_order_items.created_at_date
    row: 1
    col: 19
    width: 5
    height: 2
  - title: Users by Traffic Source and Country
    name: Users by Traffic Source and Country
    model: basic_ecomm
    explore: basic_order_items
    type: looker_donut_multiples
    fields: [basic_users.traffic_source, basic_users.count, basic_users.country]
    pivots: [basic_users.traffic_source]
    sorts: [basic_users.country, basic_users.traffic_source, basic_users.count desc
        0]
    limit: 5000
    column_limit: 50
    show_value_labels: true
    font_size: 20
    charts_across: 3
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: basic_order_items.count,
            id: basic_order_items.count, name: "# of Order Items"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: basic_order_items.average_sale_price,
            id: basic_order_items.average_sale_price, name: Average Sale Price}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Orders
    defaults_version: 1
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    listen:
      State: basic_users.state
      Country: basic_users.country
      Date: basic_users.created_at_date
    row: 9
    col: 0
    width: 9
    height: 9
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 6 month ago for 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: basic_ecomm
    explore: basic_order_items
    listens_to_filters: []
    field: basic_order_items.created_at_date
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: basic_ecomm
    explore: basic_order_items
    listens_to_filters: []
    field: basic_users.country
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: basic_ecomm
    explore: basic_order_items
    listens_to_filters: [Country]
    field: basic_users.state
