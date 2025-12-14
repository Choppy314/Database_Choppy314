-- Function to validate player data before insertion
CREATE OR REPLACE FUNCTION validate_player()
RETURNS TRIGGER AS $$
BEGIN
    -- Check height format (must be like '6-8', '7-0')
    IF NEW.height !~ '^[0-9]+-[0-9]+$' THEN
        RAISE EXCEPTION 'Height must be in format feet-inches (e.g., 6-8)';
    END IF;
    
    -- Check shooting hand
    IF NEW.shoots NOT IN ('Right', 'Left') THEN
        RAISE EXCEPTION 'Shooting hand must be "Right" or "Left"';
    END IF;
    
    -- Check experience (0-30 years reasonable)
    IF NEW.experience < 0 OR NEW.experience > 30 THEN
        RAISE EXCEPTION 'Experience must be between 0 and 30 years';
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply the trigger
CREATE TRIGGER validate_player_trigger 
BEFORE INSERT OR UPDATE ON players
FOR EACH ROW EXECUTE FUNCTION validate_player();