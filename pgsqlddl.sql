-- public.halifaxlookuproutes definition

-- Drop table

-- DROP TABLE public.halifaxlookuproutes;

CREATE TABLE public.halifaxlookuproutes (
	route_id text NOT NULL,
	agency_id text NULL,
	route_short_name text NULL,
	route_long_name text NULL,
	route_desc text NULL,
	route_type text NULL,
	route_url text NULL,
	route_color text NULL,
	route_text_color text NULL,
	CONSTRAINT halifaxlookuproutes_pkey PRIMARY KEY (route_id)
);

-- public.halifaxlookupstops definition

-- Drop table

-- DROP TABLE public.halifaxlookupstops;

CREATE TABLE public.halifaxlookupstops (
	stop_id int4 NOT NULL,
	stop_code int4 NULL,
	stop_name text NULL,
	stop_desc text NULL,
	stop_lat float8 NULL,
	stop_lon float8 NULL,
	zone_id text NULL,
	stop_url text NULL,
	location_type text NULL,
	parent_station int4 NULL,
	stop_timezone text NULL,
	wheelchair_boarding int4 NULL,
	CONSTRAINT halifaxlookupstops_pkey PRIMARY KEY (stop_id)
);

INSERT INTO public.halifaxlookuproutes
(route_id, agency_id, route_short_name, route_long_name, route_desc, route_type, route_url, route_color, route_text_color)
VALUES('ecrl', 'ecrl', 'ecrl', 'ecrl', NULL, '3', NULL, '000000', '000000');
