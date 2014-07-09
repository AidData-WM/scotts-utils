drop table aiddata3export;

CREATE TABLE aiddata3export
(ad_projid varchar(255),
ad_title text,
ad_organization varchar(255),
ad_organization_iso varchar(255),
ad_organization_role varchar(255),
ad_organization2 varchar(255),
ad_organization2_iso varchar(255),
ad_organization2_role varchar(255),
ad_organization3 varchar(255),
ad_organization3_iso varchar(255),
ad_organization3_role varchar(255),
ad_other_organizations text,
ad_source varchar(255),
ad_start_date varchar(255),
ad_end_date varchar(255),
ad_planned_start_date varchar(255),
ad_planned_end_date varchar(255),
ad_sector_code varchar(255),
ad_sector_name varchar(255),
ad_purpose_code varchar(255),
ad_purpose_name varchar(255),
ad_activity_codes text,
ad_activity_name text,
ad_short_description text,
ad_long_description text,
ad_donor_projid varchar(255),
ad_donor_secondary_projid varchar(255),
ad_additional_info text,
ad_project_commitment_amount numeric,
ad_project_disbursement_amount numeric,
ad_total_project_cost numeric,
ad_crs_untied_amount numeric,
ad_crs_tied_amount numeric,
ad_crs_partial_tied_amount numeric,
ad_crs_Pdgg numeric,
ad_crs_channel_code varchar(255),
ad_crs_bi_multi numeric,
ad_crs_desertification numeric,
ad_crs_environment numeric,
ad_crs_gender numeric,
ad_crs_trade numeric,
ad_crs_climate numeric,
ad_crs_biodiversity numeric,
ad_crs_region varchar(255),
ad_crs_flow_name varchar(255),
ad_crs_finance_t varchar(255),
ad_crs_associated_financing numeric,
ad_crs_future_ds_principal_amount numeric,
ad_crs_future_ds_interest_amount numeric,
ad_crs_irtc_amount numeric,
ad_crs_rcved_amount numeric
);

COPY aiddata3export FROM '/tmp/ad3export52914.csv' DELIMITER ',' CSV;
