CREATE TABLE public.admin (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  token VARCHAR(255) NOT NULL,
  CONSTRAINT pk_admin PRIMARY KEY (id),
  CONSTRAINT uc_admin_email UNIQUE (email),
  CONSTRAINT uc_admin_token UNIQUE (token)
);

CREATE TABLE public.employee (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  token VARCHAR(255) NOT NULL,
  CONSTRAINT pk_employee PRIMARY KEY (id),
  CONSTRAINT uc_employee_email UNIQUE (email),
  CONSTRAINT uc_employee_token UNIQUE (token)
);

CREATE TABLE public.attendance (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
  date TIMESTAMP WITHOUT TIME ZONE,
  employee_id INTEGER,
  CONSTRAINT pk_attendance PRIMARY KEY (id),
  CONSTRAINT FK_ATTENDANCE_ON_EMPLOYEE FOREIGN KEY (employee_id) REFERENCES public.employee(id)
);