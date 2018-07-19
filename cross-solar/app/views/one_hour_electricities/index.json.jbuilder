json.one_hour_electricities @one_hour_electricities, partial: 'one_hour_electricities/one_hour_electricity', as: :one_hour_electricity
json.page_number @one_hour_electricities.current_page
json.page_size @one_hour_electricities.size
json.page_count @one_hour_electricities.total_pages
