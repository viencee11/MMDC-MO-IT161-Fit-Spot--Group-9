USE fitspot;

ALTER TABLE class_schedules
    ADD COLUMN required_plan VARCHAR(20) NOT NULL DEFAULT 'Basic' AFTER capacity;

UPDATE class_schedules s
JOIN fitness_classes c ON c.id = s.class_id
SET s.required_plan = 'Premium'
WHERE LOWER(c.name) = 'boxing';
