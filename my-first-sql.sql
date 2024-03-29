SELECT 
        fo.id order_id,
        fo.name name,
        fo.s_key order_s_key,
        fo.d_order_status_id,
        order_created valid_from,
        NULL valid_to,
        0 is_current
    FROM warehouse.f_orders fo 
        LEFT JOIN warehouse.f_orderstatus_history t_osh ON fo.id = t_osh.order_id
WHERE t_osh.id is null;
SELECT * from orders;
