json.extract! order, :id, :subtotal, :tax, :shipping, :total, :order_status, :name, :color, :size, :username, :inscription, :created_at, :updated_at
json.url order_url(order, format: :json)
