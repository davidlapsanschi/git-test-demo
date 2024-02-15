SELECT 
        fo.id order_idx,
        fo.name namex,
        fo.s_key order_s_keyx,
        fo.d_order_status_idx,
        order_created valid_fromx,
        NULL valid_to,
        0 is_current
    FROM warehouse.f_orders fo 
        LEFT JOIN warehouse.f_orderstatus_history t_osh ON fo.id = t_osh.order_id
WHERE t_osh.id is not null;

bla bla
