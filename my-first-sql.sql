SELECT 
        fo.id order_ids,
        fo.name names,
        fo.s_key order_s_keys,
        fo.d_order_status_ids,
        order_created valid_froms,
        NULL valid_to,
        0 is_current
    FROM warehouse.f_orders fo 
        LEFT JOIN warehouse.f_orderstatus_history t_osh ON fo.id = t_osh.order_id
WHERE t_osh.id is not null;
SELECT * from orders;
