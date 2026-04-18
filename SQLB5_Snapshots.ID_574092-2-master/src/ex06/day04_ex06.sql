CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name
FROM pizzeria
JOIN person_visits AS pv ON pv.pizzeria_id = pizzeria.id
JOIN person AS p ON pv.person_id = p.id
JOIN menu AS m ON pizzeria.id = m.pizzeria_id
WHERE pv.visit_date = '2022-01-08'
    AND p.name = 'Dmitriy'
    AND price < 800;