create table if not exists recipes (
    id serial primary key,
    name text not null,
    description text not null
);

create table if not exists ingredients_num (
    id serial primary key,
    recipes_id integer references recipes,
    quantity integer not null
);

create table if not exists tags (
    id serial primary key,
    tag text not null
);

create table if not exists recipes_tags (
    recipe_id integer references recipes,
    tag_id integer references tags,
    primary key (recipe_id, tag_id)
);

create table if not exists steps (
    id serial primary key,
    name text not null,
    description text not null
);

create table if not exists recipes_steps (
    recipe_id integer references recipes,
    step_id integer references steps,
    primary key (recipe_id, step_id)
);