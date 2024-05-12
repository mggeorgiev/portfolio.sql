CREATE OR REPLACE VIEW
  public.v_gear_combinations AS
SELECT
  c.id AS chainrings_id,
  s.id AS sprockets_id
FROM
  public.chainrings c
  CROSS JOIN public.sprockets s

CREATE OR REPLACE VIEW
  public.v_gear_ratios AS
SELECT
  c.cogs                    AS chainring_cogs,
  s.cogs                    AS sprocket_cogs,
  ROUND(c.cogs / s.cogs, 2) AS ratio
FROM
  public.v_gear_combinations comb
  JOIN public.sprockets s ON s.id = comb.sprockets_id
  JOIN public.chainrings c ON c.id = comb.chainrings_id

CREATE OR REPLACE VIEW
  public.v_gear_inches AS
SELECT 
	"diameter",
	"ratio",
	chainring_cogs,
	sprocket_cogs,
	"diameter" * "ratio" as gear_inches
FROM public.tyres
CROSS JOIN public.v_gear_ratios;

CREATE OR REPLACE VIEW
  public.v_distance_per_revolution AS
SELECT 
	"diameter",
	"ratio",
	chainring_cogs,
	sprocket_cogs,
	"diameter" * "ratio" as gear_inches,
	3.14 * "diameter" * "ratio" as distance_per_revolution,
	round(2.54 * 3.14 * "diameter" * "ratio",2) as distance_per_revolution_cm
FROM public.tyres
CROSS JOIN public.v_gear_ratios;