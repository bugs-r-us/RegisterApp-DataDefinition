 ALTER TABLE product
   ADD COLUMN price bigint NOT NULL DEFAULT(0);

CREATE TABLE transaction (
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  employeeid uuid NOT NULL DEFAULT CAST('00000000-0000-0000-0000-000000000000' AS uuid),
  total bigint NOT NULL DEFAULT(0), 
  transactionstatus int NOT NULL DEFAULT(0),
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT transaction_pkey PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE transactioncontent (
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  transactionid uuid NOT NULL DEFAULT CAST('00000000-0000-0000-0000-000000000000' AS uuid),
  productid uuid NOT NULL DEFAULT CAST('00000000-0000-0000-0000-000000000000' AS uuid),
  quantity decimal(15, 4) NOT NULL DEFAULT(0),
  price bigint NOT NULL DEFAULT(0),
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT transactioncontent_pkey PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);
