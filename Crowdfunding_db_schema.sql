Create Table campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description text NOT NULL,
	goal int NOT NULL,
	pledged int NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count int NOT NULL,
        country varchar(10) NOT NULL,
    	currency varchar(10) NOT NULL,
    	launch_date date NOT NULL,
    	end_date date NOT NULL,
    	category_id varchar(10) NOT NULL,
    	subcategory_id varchar(10) NOT NULL,
    	CONSTRAINT pk_campaign PRIMARY KEY (cf_id)
); 

CREATE Table category (
	category_id VARCHAR(5) NOT NULL,
	category_name VARCHAR(50) NOT NULL,
	CONSTRAINT pk_category PRIMARY KEY (category_id)
);

CREATE Table subcategory (
	subcategory_id VARCHAR(20) NOT NULL,
	subcategory_name VARCHAR(50) NOT NULL,
	CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

CREATE Table contacts (
	contact_id int NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

Select *
From campaign

Select *
From category

Select *
From subcategory

Select *
From contacts
