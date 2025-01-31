\set ON_ERROR_STOP 1
BEGIN;
drop schema if exists :dailySchema cascade;
create schema :dailySchema;
set search_path=:dailySchema,public;

create table pixels (
x integer,
y integer,
east integer,
north integer,
longitude float,
latitude float,
dwr_id varchar(8),
dwr boolean,
prism boolean,
cimis boolean,
primary key(x,y)
);

create table cfhs (
x integer,
y integer,
cfhs float,
primary key(x,y),
foreign key (x,y) references pixels (x,y)
);

create table daily (
 x integer,
y integer,
ymd date,
year integer,
month integer,
day integer,
doy integer,
Tx float,
Tn float,
PCP float,
ETo float,
RF boolean
);

CREATE OR REPLACE FUNCTION daily_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
CASE NEW.y
WHEN 000 THEN insert into "daily4km".daily000 VALUES (NEW.*);
WHEN 001 THEN insert into "daily4km".daily001 VALUES (NEW.*);
WHEN 002 THEN insert into "daily4km".daily002 VALUES (NEW.*);
WHEN 003 THEN insert into "daily4km".daily003 VALUES (NEW.*);
WHEN 004 THEN insert into "daily4km".daily004 VALUES (NEW.*);
WHEN 005 THEN insert into "daily4km".daily005 VALUES (NEW.*);
WHEN 006 THEN insert into "daily4km".daily006 VALUES (NEW.*);
WHEN 007 THEN insert into "daily4km".daily007 VALUES (NEW.*);
WHEN 008 THEN insert into "daily4km".daily008 VALUES (NEW.*);
WHEN 009 THEN insert into "daily4km".daily009 VALUES (NEW.*);
WHEN 010 THEN insert into "daily4km".daily010 VALUES (NEW.*);
WHEN 011 THEN insert into "daily4km".daily011 VALUES (NEW.*);
WHEN 012 THEN insert into "daily4km".daily012 VALUES (NEW.*);
WHEN 013 THEN insert into "daily4km".daily013 VALUES (NEW.*);
WHEN 014 THEN insert into "daily4km".daily014 VALUES (NEW.*);
WHEN 015 THEN insert into "daily4km".daily015 VALUES (NEW.*);
WHEN 016 THEN insert into "daily4km".daily016 VALUES (NEW.*);
WHEN 017 THEN insert into "daily4km".daily017 VALUES (NEW.*);
WHEN 018 THEN insert into "daily4km".daily018 VALUES (NEW.*);
WHEN 019 THEN insert into "daily4km".daily019 VALUES (NEW.*);
WHEN 020 THEN insert into "daily4km".daily020 VALUES (NEW.*);
WHEN 021 THEN insert into "daily4km".daily021 VALUES (NEW.*);
WHEN 022 THEN insert into "daily4km".daily022 VALUES (NEW.*);
WHEN 023 THEN insert into "daily4km".daily023 VALUES (NEW.*);
WHEN 024 THEN insert into "daily4km".daily024 VALUES (NEW.*);
WHEN 025 THEN insert into "daily4km".daily025 VALUES (NEW.*);
WHEN 026 THEN insert into "daily4km".daily026 VALUES (NEW.*);
WHEN 027 THEN insert into "daily4km".daily027 VALUES (NEW.*);
WHEN 028 THEN insert into "daily4km".daily028 VALUES (NEW.*);
WHEN 029 THEN insert into "daily4km".daily029 VALUES (NEW.*);
WHEN 030 THEN insert into "daily4km".daily030 VALUES (NEW.*);
WHEN 031 THEN insert into "daily4km".daily031 VALUES (NEW.*);
WHEN 032 THEN insert into "daily4km".daily032 VALUES (NEW.*);
WHEN 033 THEN insert into "daily4km".daily033 VALUES (NEW.*);
WHEN 034 THEN insert into "daily4km".daily034 VALUES (NEW.*);
WHEN 035 THEN insert into "daily4km".daily035 VALUES (NEW.*);
WHEN 036 THEN insert into "daily4km".daily036 VALUES (NEW.*);
WHEN 037 THEN insert into "daily4km".daily037 VALUES (NEW.*);
WHEN 038 THEN insert into "daily4km".daily038 VALUES (NEW.*);
WHEN 039 THEN insert into "daily4km".daily039 VALUES (NEW.*);
WHEN 040 THEN insert into "daily4km".daily040 VALUES (NEW.*);
WHEN 041 THEN insert into "daily4km".daily041 VALUES (NEW.*);
WHEN 042 THEN insert into "daily4km".daily042 VALUES (NEW.*);
WHEN 043 THEN insert into "daily4km".daily043 VALUES (NEW.*);
WHEN 044 THEN insert into "daily4km".daily044 VALUES (NEW.*);
WHEN 045 THEN insert into "daily4km".daily045 VALUES (NEW.*);
WHEN 046 THEN insert into "daily4km".daily046 VALUES (NEW.*);
WHEN 047 THEN insert into "daily4km".daily047 VALUES (NEW.*);
WHEN 048 THEN insert into "daily4km".daily048 VALUES (NEW.*);
WHEN 049 THEN insert into "daily4km".daily049 VALUES (NEW.*);
WHEN 050 THEN insert into "daily4km".daily050 VALUES (NEW.*);
WHEN 051 THEN insert into "daily4km".daily051 VALUES (NEW.*);
WHEN 052 THEN insert into "daily4km".daily052 VALUES (NEW.*);
WHEN 053 THEN insert into "daily4km".daily053 VALUES (NEW.*);
WHEN 054 THEN insert into "daily4km".daily054 VALUES (NEW.*);
WHEN 055 THEN insert into "daily4km".daily055 VALUES (NEW.*);
WHEN 056 THEN insert into "daily4km".daily056 VALUES (NEW.*);
WHEN 057 THEN insert into "daily4km".daily057 VALUES (NEW.*);
WHEN 058 THEN insert into "daily4km".daily058 VALUES (NEW.*);
WHEN 059 THEN insert into "daily4km".daily059 VALUES (NEW.*);
WHEN 060 THEN insert into "daily4km".daily060 VALUES (NEW.*);
WHEN 061 THEN insert into "daily4km".daily061 VALUES (NEW.*);
WHEN 062 THEN insert into "daily4km".daily062 VALUES (NEW.*);
WHEN 063 THEN insert into "daily4km".daily063 VALUES (NEW.*);
WHEN 064 THEN insert into "daily4km".daily064 VALUES (NEW.*);
WHEN 065 THEN insert into "daily4km".daily065 VALUES (NEW.*);
WHEN 066 THEN insert into "daily4km".daily066 VALUES (NEW.*);
WHEN 067 THEN insert into "daily4km".daily067 VALUES (NEW.*);
WHEN 068 THEN insert into "daily4km".daily068 VALUES (NEW.*);
WHEN 069 THEN insert into "daily4km".daily069 VALUES (NEW.*);
WHEN 070 THEN insert into "daily4km".daily070 VALUES (NEW.*);
WHEN 071 THEN insert into "daily4km".daily071 VALUES (NEW.*);
WHEN 072 THEN insert into "daily4km".daily072 VALUES (NEW.*);
WHEN 073 THEN insert into "daily4km".daily073 VALUES (NEW.*);
WHEN 074 THEN insert into "daily4km".daily074 VALUES (NEW.*);
WHEN 075 THEN insert into "daily4km".daily075 VALUES (NEW.*);
WHEN 076 THEN insert into "daily4km".daily076 VALUES (NEW.*);
WHEN 077 THEN insert into "daily4km".daily077 VALUES (NEW.*);
WHEN 078 THEN insert into "daily4km".daily078 VALUES (NEW.*);
WHEN 079 THEN insert into "daily4km".daily079 VALUES (NEW.*);
WHEN 080 THEN insert into "daily4km".daily080 VALUES (NEW.*);
WHEN 081 THEN insert into "daily4km".daily081 VALUES (NEW.*);
WHEN 082 THEN insert into "daily4km".daily082 VALUES (NEW.*);
WHEN 083 THEN insert into "daily4km".daily083 VALUES (NEW.*);
WHEN 084 THEN insert into "daily4km".daily084 VALUES (NEW.*);
WHEN 085 THEN insert into "daily4km".daily085 VALUES (NEW.*);
WHEN 086 THEN insert into "daily4km".daily086 VALUES (NEW.*);
WHEN 087 THEN insert into "daily4km".daily087 VALUES (NEW.*);
WHEN 088 THEN insert into "daily4km".daily088 VALUES (NEW.*);
WHEN 089 THEN insert into "daily4km".daily089 VALUES (NEW.*);
WHEN 090 THEN insert into "daily4km".daily090 VALUES (NEW.*);
WHEN 091 THEN insert into "daily4km".daily091 VALUES (NEW.*);
WHEN 092 THEN insert into "daily4km".daily092 VALUES (NEW.*);
WHEN 093 THEN insert into "daily4km".daily093 VALUES (NEW.*);
WHEN 094 THEN insert into "daily4km".daily094 VALUES (NEW.*);
WHEN 095 THEN insert into "daily4km".daily095 VALUES (NEW.*);
WHEN 096 THEN insert into "daily4km".daily096 VALUES (NEW.*);
WHEN 097 THEN insert into "daily4km".daily097 VALUES (NEW.*);
WHEN 098 THEN insert into "daily4km".daily098 VALUES (NEW.*);
WHEN 099 THEN insert into "daily4km".daily099 VALUES (NEW.*);
WHEN 100 THEN insert into "daily4km".daily100 VALUES (NEW.*);
WHEN 101 THEN insert into "daily4km".daily101 VALUES (NEW.*);
WHEN 102 THEN insert into "daily4km".daily102 VALUES (NEW.*);
WHEN 103 THEN insert into "daily4km".daily103 VALUES (NEW.*);
WHEN 104 THEN insert into "daily4km".daily104 VALUES (NEW.*);
WHEN 105 THEN insert into "daily4km".daily105 VALUES (NEW.*);
WHEN 106 THEN insert into "daily4km".daily106 VALUES (NEW.*);
WHEN 107 THEN insert into "daily4km".daily107 VALUES (NEW.*);
WHEN 108 THEN insert into "daily4km".daily108 VALUES (NEW.*);
WHEN 109 THEN insert into "daily4km".daily109 VALUES (NEW.*);
WHEN 110 THEN insert into "daily4km".daily110 VALUES (NEW.*);
WHEN 111 THEN insert into "daily4km".daily111 VALUES (NEW.*);
WHEN 112 THEN insert into "daily4km".daily112 VALUES (NEW.*);
WHEN 113 THEN insert into "daily4km".daily113 VALUES (NEW.*);
WHEN 114 THEN insert into "daily4km".daily114 VALUES (NEW.*);
WHEN 115 THEN insert into "daily4km".daily115 VALUES (NEW.*);
WHEN 116 THEN insert into "daily4km".daily116 VALUES (NEW.*);
WHEN 117 THEN insert into "daily4km".daily117 VALUES (NEW.*);
WHEN 118 THEN insert into "daily4km".daily118 VALUES (NEW.*);
WHEN 119 THEN insert into "daily4km".daily119 VALUES (NEW.*);
WHEN 120 THEN insert into "daily4km".daily120 VALUES (NEW.*);
WHEN 121 THEN insert into "daily4km".daily121 VALUES (NEW.*);
WHEN 122 THEN insert into "daily4km".daily122 VALUES (NEW.*);
WHEN 123 THEN insert into "daily4km".daily123 VALUES (NEW.*);
WHEN 124 THEN insert into "daily4km".daily124 VALUES (NEW.*);
WHEN 125 THEN insert into "daily4km".daily125 VALUES (NEW.*);
WHEN 126 THEN insert into "daily4km".daily126 VALUES (NEW.*);
WHEN 127 THEN insert into "daily4km".daily127 VALUES (NEW.*);
WHEN 128 THEN insert into "daily4km".daily128 VALUES (NEW.*);
WHEN 129 THEN insert into "daily4km".daily129 VALUES (NEW.*);
WHEN 130 THEN insert into "daily4km".daily130 VALUES (NEW.*);
WHEN 131 THEN insert into "daily4km".daily131 VALUES (NEW.*);
WHEN 132 THEN insert into "daily4km".daily132 VALUES (NEW.*);
WHEN 133 THEN insert into "daily4km".daily133 VALUES (NEW.*);
WHEN 134 THEN insert into "daily4km".daily134 VALUES (NEW.*);
WHEN 135 THEN insert into "daily4km".daily135 VALUES (NEW.*);
WHEN 136 THEN insert into "daily4km".daily136 VALUES (NEW.*);
WHEN 137 THEN insert into "daily4km".daily137 VALUES (NEW.*);
WHEN 138 THEN insert into "daily4km".daily138 VALUES (NEW.*);
WHEN 139 THEN insert into "daily4km".daily139 VALUES (NEW.*);
WHEN 140 THEN insert into "daily4km".daily140 VALUES (NEW.*);
WHEN 141 THEN insert into "daily4km".daily141 VALUES (NEW.*);
WHEN 142 THEN insert into "daily4km".daily142 VALUES (NEW.*);
WHEN 143 THEN insert into "daily4km".daily143 VALUES (NEW.*);
WHEN 144 THEN insert into "daily4km".daily144 VALUES (NEW.*);
WHEN 145 THEN insert into "daily4km".daily145 VALUES (NEW.*);
WHEN 146 THEN insert into "daily4km".daily146 VALUES (NEW.*);
WHEN 147 THEN insert into "daily4km".daily147 VALUES (NEW.*);
WHEN 148 THEN insert into "daily4km".daily148 VALUES (NEW.*);
WHEN 149 THEN insert into "daily4km".daily149 VALUES (NEW.*);
WHEN 150 THEN insert into "daily4km".daily150 VALUES (NEW.*);
WHEN 151 THEN insert into "daily4km".daily151 VALUES (NEW.*);
WHEN 152 THEN insert into "daily4km".daily152 VALUES (NEW.*);
WHEN 153 THEN insert into "daily4km".daily153 VALUES (NEW.*);
WHEN 154 THEN insert into "daily4km".daily154 VALUES (NEW.*);
WHEN 155 THEN insert into "daily4km".daily155 VALUES (NEW.*);
WHEN 156 THEN insert into "daily4km".daily156 VALUES (NEW.*);
WHEN 157 THEN insert into "daily4km".daily157 VALUES (NEW.*);
WHEN 158 THEN insert into "daily4km".daily158 VALUES (NEW.*);
WHEN 159 THEN insert into "daily4km".daily159 VALUES (NEW.*);
WHEN 160 THEN insert into "daily4km".daily160 VALUES (NEW.*);
WHEN 161 THEN insert into "daily4km".daily161 VALUES (NEW.*);
WHEN 162 THEN insert into "daily4km".daily162 VALUES (NEW.*);
WHEN 163 THEN insert into "daily4km".daily163 VALUES (NEW.*);
WHEN 164 THEN insert into "daily4km".daily164 VALUES (NEW.*);
WHEN 165 THEN insert into "daily4km".daily165 VALUES (NEW.*);
WHEN 166 THEN insert into "daily4km".daily166 VALUES (NEW.*);
WHEN 167 THEN insert into "daily4km".daily167 VALUES (NEW.*);
WHEN 168 THEN insert into "daily4km".daily168 VALUES (NEW.*);
WHEN 169 THEN insert into "daily4km".daily169 VALUES (NEW.*);
WHEN 170 THEN insert into "daily4km".daily170 VALUES (NEW.*);
WHEN 171 THEN insert into "daily4km".daily171 VALUES (NEW.*);
WHEN 172 THEN insert into "daily4km".daily172 VALUES (NEW.*);
WHEN 173 THEN insert into "daily4km".daily173 VALUES (NEW.*);
WHEN 174 THEN insert into "daily4km".daily174 VALUES (NEW.*);
WHEN 175 THEN insert into "daily4km".daily175 VALUES (NEW.*);
WHEN 176 THEN insert into "daily4km".daily176 VALUES (NEW.*);
WHEN 177 THEN insert into "daily4km".daily177 VALUES (NEW.*);
WHEN 178 THEN insert into "daily4km".daily178 VALUES (NEW.*);
WHEN 179 THEN insert into "daily4km".daily179 VALUES (NEW.*);
WHEN 180 THEN insert into "daily4km".daily180 VALUES (NEW.*);
WHEN 181 THEN insert into "daily4km".daily181 VALUES (NEW.*);
WHEN 182 THEN insert into "daily4km".daily182 VALUES (NEW.*);
WHEN 183 THEN insert into "daily4km".daily183 VALUES (NEW.*);
WHEN 184 THEN insert into "daily4km".daily184 VALUES (NEW.*);
WHEN 185 THEN insert into "daily4km".daily185 VALUES (NEW.*);
WHEN 186 THEN insert into "daily4km".daily186 VALUES (NEW.*);
WHEN 187 THEN insert into "daily4km".daily187 VALUES (NEW.*);
WHEN 188 THEN insert into "daily4km".daily188 VALUES (NEW.*);
WHEN 189 THEN insert into "daily4km".daily189 VALUES (NEW.*);
WHEN 190 THEN insert into "daily4km".daily190 VALUES (NEW.*);
WHEN 191 THEN insert into "daily4km".daily191 VALUES (NEW.*);
WHEN 192 THEN insert into "daily4km".daily192 VALUES (NEW.*);
WHEN 193 THEN insert into "daily4km".daily193 VALUES (NEW.*);
WHEN 194 THEN insert into "daily4km".daily194 VALUES (NEW.*);
WHEN 195 THEN insert into "daily4km".daily195 VALUES (NEW.*);
WHEN 196 THEN insert into "daily4km".daily196 VALUES (NEW.*);
WHEN 197 THEN insert into "daily4km".daily197 VALUES (NEW.*);
WHEN 198 THEN insert into "daily4km".daily198 VALUES (NEW.*);
WHEN 199 THEN insert into "daily4km".daily199 VALUES (NEW.*);
WHEN 200 THEN insert into "daily4km".daily200 VALUES (NEW.*);
WHEN 201 THEN insert into "daily4km".daily201 VALUES (NEW.*);
WHEN 202 THEN insert into "daily4km".daily202 VALUES (NEW.*);
WHEN 203 THEN insert into "daily4km".daily203 VALUES (NEW.*);
WHEN 204 THEN insert into "daily4km".daily204 VALUES (NEW.*);
WHEN 205 THEN insert into "daily4km".daily205 VALUES (NEW.*);
WHEN 206 THEN insert into "daily4km".daily206 VALUES (NEW.*);
WHEN 207 THEN insert into "daily4km".daily207 VALUES (NEW.*);
WHEN 208 THEN insert into "daily4km".daily208 VALUES (NEW.*);
WHEN 209 THEN insert into "daily4km".daily209 VALUES (NEW.*);
WHEN 210 THEN insert into "daily4km".daily210 VALUES (NEW.*);
WHEN 211 THEN insert into "daily4km".daily211 VALUES (NEW.*);
WHEN 212 THEN insert into "daily4km".daily212 VALUES (NEW.*);
WHEN 213 THEN insert into "daily4km".daily213 VALUES (NEW.*);
WHEN 214 THEN insert into "daily4km".daily214 VALUES (NEW.*);
WHEN 215 THEN insert into "daily4km".daily215 VALUES (NEW.*);
WHEN 216 THEN insert into "daily4km".daily216 VALUES (NEW.*);
WHEN 217 THEN insert into "daily4km".daily217 VALUES (NEW.*);
WHEN 218 THEN insert into "daily4km".daily218 VALUES (NEW.*);
WHEN 219 THEN insert into "daily4km".daily219 VALUES (NEW.*);
WHEN 220 THEN insert into "daily4km".daily220 VALUES (NEW.*);
WHEN 221 THEN insert into "daily4km".daily221 VALUES (NEW.*);
WHEN 222 THEN insert into "daily4km".daily222 VALUES (NEW.*);
WHEN 223 THEN insert into "daily4km".daily223 VALUES (NEW.*);
WHEN 224 THEN insert into "daily4km".daily224 VALUES (NEW.*);
WHEN 225 THEN insert into "daily4km".daily225 VALUES (NEW.*);
WHEN 226 THEN insert into "daily4km".daily226 VALUES (NEW.*);
WHEN 227 THEN insert into "daily4km".daily227 VALUES (NEW.*);
WHEN 228 THEN insert into "daily4km".daily228 VALUES (NEW.*);
WHEN 229 THEN insert into "daily4km".daily229 VALUES (NEW.*);
WHEN 230 THEN insert into "daily4km".daily230 VALUES (NEW.*);
WHEN 231 THEN insert into "daily4km".daily231 VALUES (NEW.*);
WHEN 232 THEN insert into "daily4km".daily232 VALUES (NEW.*);
WHEN 233 THEN insert into "daily4km".daily233 VALUES (NEW.*);
WHEN 234 THEN insert into "daily4km".daily234 VALUES (NEW.*);
WHEN 235 THEN insert into "daily4km".daily235 VALUES (NEW.*);
WHEN 236 THEN insert into "daily4km".daily236 VALUES (NEW.*);
WHEN 237 THEN insert into "daily4km".daily237 VALUES (NEW.*);
WHEN 238 THEN insert into "daily4km".daily238 VALUES (NEW.*);
WHEN 239 THEN insert into "daily4km".daily239 VALUES (NEW.*);
WHEN 240 THEN insert into "daily4km".daily240 VALUES (NEW.*);
WHEN 241 THEN insert into "daily4km".daily241 VALUES (NEW.*);
WHEN 242 THEN insert into "daily4km".daily242 VALUES (NEW.*);
WHEN 243 THEN insert into "daily4km".daily243 VALUES (NEW.*);
WHEN 244 THEN insert into "daily4km".daily244 VALUES (NEW.*);
WHEN 245 THEN insert into "daily4km".daily245 VALUES (NEW.*);
WHEN 246 THEN insert into "daily4km".daily246 VALUES (NEW.*);
WHEN 247 THEN insert into "daily4km".daily247 VALUES (NEW.*);
WHEN 248 THEN insert into "daily4km".daily248 VALUES (NEW.*);
WHEN 249 THEN insert into "daily4km".daily249 VALUES (NEW.*);
WHEN 250 THEN insert into "daily4km".daily250 VALUES (NEW.*);
WHEN 251 THEN insert into "daily4km".daily251 VALUES (NEW.*);
WHEN 252 THEN insert into "daily4km".daily252 VALUES (NEW.*);
WHEN 253 THEN insert into "daily4km".daily253 VALUES (NEW.*);
WHEN 254 THEN insert into "daily4km".daily254 VALUES (NEW.*);
WHEN 255 THEN insert into "daily4km".daily255 VALUES (NEW.*);
WHEN 256 THEN insert into "daily4km".daily256 VALUES (NEW.*);
WHEN 257 THEN insert into "daily4km".daily257 VALUES (NEW.*);
WHEN 258 THEN insert into "daily4km".daily258 VALUES (NEW.*);
WHEN 259 THEN insert into "daily4km".daily259 VALUES (NEW.*);
WHEN 260 THEN insert into "daily4km".daily260 VALUES (NEW.*);
WHEN 261 THEN insert into "daily4km".daily261 VALUES (NEW.*);
WHEN 262 THEN insert into "daily4km".daily262 VALUES (NEW.*);
WHEN 263 THEN insert into "daily4km".daily263 VALUES (NEW.*);
WHEN 264 THEN insert into "daily4km".daily264 VALUES (NEW.*);
WHEN 265 THEN insert into "daily4km".daily265 VALUES (NEW.*);
WHEN 266 THEN insert into "daily4km".daily266 VALUES (NEW.*);
WHEN 267 THEN insert into "daily4km".daily267 VALUES (NEW.*);
WHEN 268 THEN insert into "daily4km".daily268 VALUES (NEW.*);
WHEN 269 THEN insert into "daily4km".daily269 VALUES (NEW.*);
WHEN 270 THEN insert into "daily4km".daily270 VALUES (NEW.*);
WHEN 271 THEN insert into "daily4km".daily271 VALUES (NEW.*);
WHEN 272 THEN insert into "daily4km".daily272 VALUES (NEW.*);
WHEN 273 THEN insert into "daily4km".daily273 VALUES (NEW.*);
WHEN 274 THEN insert into "daily4km".daily274 VALUES (NEW.*);
WHEN 275 THEN insert into "daily4km".daily275 VALUES (NEW.*);
WHEN 276 THEN insert into "daily4km".daily276 VALUES (NEW.*);
WHEN 277 THEN insert into "daily4km".daily277 VALUES (NEW.*);
WHEN 278 THEN insert into "daily4km".daily278 VALUES (NEW.*);
WHEN 279 THEN insert into "daily4km".daily279 VALUES (NEW.*);
WHEN 280 THEN insert into "daily4km".daily280 VALUES (NEW.*);
WHEN 281 THEN insert into "daily4km".daily281 VALUES (NEW.*);
WHEN 282 THEN insert into "daily4km".daily282 VALUES (NEW.*);
WHEN 283 THEN insert into "daily4km".daily283 VALUES (NEW.*);
WHEN 284 THEN insert into "daily4km".daily284 VALUES (NEW.*);
WHEN 285 THEN insert into "daily4km".daily285 VALUES (NEW.*);
WHEN 286 THEN insert into "daily4km".daily286 VALUES (NEW.*);
WHEN 287 THEN insert into "daily4km".daily287 VALUES (NEW.*);
WHEN 288 THEN insert into "daily4km".daily288 VALUES (NEW.*);
WHEN 289 THEN insert into "daily4km".daily289 VALUES (NEW.*);
WHEN 290 THEN insert into "daily4km".daily290 VALUES (NEW.*);
WHEN 291 THEN insert into "daily4km".daily291 VALUES (NEW.*);
WHEN 292 THEN insert into "daily4km".daily292 VALUES (NEW.*);
WHEN 293 THEN insert into "daily4km".daily293 VALUES (NEW.*);
WHEN 294 THEN insert into "daily4km".daily294 VALUES (NEW.*);
WHEN 295 THEN insert into "daily4km".daily295 VALUES (NEW.*);
WHEN 296 THEN insert into "daily4km".daily296 VALUES (NEW.*);
WHEN 297 THEN insert into "daily4km".daily297 VALUES (NEW.*);
WHEN 298 THEN insert into "daily4km".daily298 VALUES (NEW.*);
WHEN 299 THEN insert into "daily4km".daily299 VALUES (NEW.*);
ELSE insert into "daily4km".daily VALUES (NEW.*);
END CASE;
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER insert_daily_trigger
BEFORE INSERT ON "daily4km".daily FOR EACH ROW 
EXECUTE PROCEDURE daily_insert_trigger();

create table daily_summary (
 x integer,
y integer,
ymd date,
year integer,
month integer,
day integer,
doy integer,
Tx float,
Tn float,
PCP float,
ETo float,
RF boolean
);

CREATE OR REPLACE FUNCTION daily_summary_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
CASE NEW.y
WHEN 000 THEN insert into "daily4km".daily_summary000 VALUES (NEW.*);
WHEN 001 THEN insert into "daily4km".daily_summary001 VALUES (NEW.*);
WHEN 002 THEN insert into "daily4km".daily_summary002 VALUES (NEW.*);
WHEN 003 THEN insert into "daily4km".daily_summary003 VALUES (NEW.*);
WHEN 004 THEN insert into "daily4km".daily_summary004 VALUES (NEW.*);
WHEN 005 THEN insert into "daily4km".daily_summary005 VALUES (NEW.*);
WHEN 006 THEN insert into "daily4km".daily_summary006 VALUES (NEW.*);
WHEN 007 THEN insert into "daily4km".daily_summary007 VALUES (NEW.*);
WHEN 008 THEN insert into "daily4km".daily_summary008 VALUES (NEW.*);
WHEN 009 THEN insert into "daily4km".daily_summary009 VALUES (NEW.*);
WHEN 010 THEN insert into "daily4km".daily_summary010 VALUES (NEW.*);
WHEN 011 THEN insert into "daily4km".daily_summary011 VALUES (NEW.*);
WHEN 012 THEN insert into "daily4km".daily_summary012 VALUES (NEW.*);
WHEN 013 THEN insert into "daily4km".daily_summary013 VALUES (NEW.*);
WHEN 014 THEN insert into "daily4km".daily_summary014 VALUES (NEW.*);
WHEN 015 THEN insert into "daily4km".daily_summary015 VALUES (NEW.*);
WHEN 016 THEN insert into "daily4km".daily_summary016 VALUES (NEW.*);
WHEN 017 THEN insert into "daily4km".daily_summary017 VALUES (NEW.*);
WHEN 018 THEN insert into "daily4km".daily_summary018 VALUES (NEW.*);
WHEN 019 THEN insert into "daily4km".daily_summary019 VALUES (NEW.*);
WHEN 020 THEN insert into "daily4km".daily_summary020 VALUES (NEW.*);
WHEN 021 THEN insert into "daily4km".daily_summary021 VALUES (NEW.*);
WHEN 022 THEN insert into "daily4km".daily_summary022 VALUES (NEW.*);
WHEN 023 THEN insert into "daily4km".daily_summary023 VALUES (NEW.*);
WHEN 024 THEN insert into "daily4km".daily_summary024 VALUES (NEW.*);
WHEN 025 THEN insert into "daily4km".daily_summary025 VALUES (NEW.*);
WHEN 026 THEN insert into "daily4km".daily_summary026 VALUES (NEW.*);
WHEN 027 THEN insert into "daily4km".daily_summary027 VALUES (NEW.*);
WHEN 028 THEN insert into "daily4km".daily_summary028 VALUES (NEW.*);
WHEN 029 THEN insert into "daily4km".daily_summary029 VALUES (NEW.*);
WHEN 030 THEN insert into "daily4km".daily_summary030 VALUES (NEW.*);
WHEN 031 THEN insert into "daily4km".daily_summary031 VALUES (NEW.*);
WHEN 032 THEN insert into "daily4km".daily_summary032 VALUES (NEW.*);
WHEN 033 THEN insert into "daily4km".daily_summary033 VALUES (NEW.*);
WHEN 034 THEN insert into "daily4km".daily_summary034 VALUES (NEW.*);
WHEN 035 THEN insert into "daily4km".daily_summary035 VALUES (NEW.*);
WHEN 036 THEN insert into "daily4km".daily_summary036 VALUES (NEW.*);
WHEN 037 THEN insert into "daily4km".daily_summary037 VALUES (NEW.*);
WHEN 038 THEN insert into "daily4km".daily_summary038 VALUES (NEW.*);
WHEN 039 THEN insert into "daily4km".daily_summary039 VALUES (NEW.*);
WHEN 040 THEN insert into "daily4km".daily_summary040 VALUES (NEW.*);
WHEN 041 THEN insert into "daily4km".daily_summary041 VALUES (NEW.*);
WHEN 042 THEN insert into "daily4km".daily_summary042 VALUES (NEW.*);
WHEN 043 THEN insert into "daily4km".daily_summary043 VALUES (NEW.*);
WHEN 044 THEN insert into "daily4km".daily_summary044 VALUES (NEW.*);
WHEN 045 THEN insert into "daily4km".daily_summary045 VALUES (NEW.*);
WHEN 046 THEN insert into "daily4km".daily_summary046 VALUES (NEW.*);
WHEN 047 THEN insert into "daily4km".daily_summary047 VALUES (NEW.*);
WHEN 048 THEN insert into "daily4km".daily_summary048 VALUES (NEW.*);
WHEN 049 THEN insert into "daily4km".daily_summary049 VALUES (NEW.*);
WHEN 050 THEN insert into "daily4km".daily_summary050 VALUES (NEW.*);
WHEN 051 THEN insert into "daily4km".daily_summary051 VALUES (NEW.*);
WHEN 052 THEN insert into "daily4km".daily_summary052 VALUES (NEW.*);
WHEN 053 THEN insert into "daily4km".daily_summary053 VALUES (NEW.*);
WHEN 054 THEN insert into "daily4km".daily_summary054 VALUES (NEW.*);
WHEN 055 THEN insert into "daily4km".daily_summary055 VALUES (NEW.*);
WHEN 056 THEN insert into "daily4km".daily_summary056 VALUES (NEW.*);
WHEN 057 THEN insert into "daily4km".daily_summary057 VALUES (NEW.*);
WHEN 058 THEN insert into "daily4km".daily_summary058 VALUES (NEW.*);
WHEN 059 THEN insert into "daily4km".daily_summary059 VALUES (NEW.*);
WHEN 060 THEN insert into "daily4km".daily_summary060 VALUES (NEW.*);
WHEN 061 THEN insert into "daily4km".daily_summary061 VALUES (NEW.*);
WHEN 062 THEN insert into "daily4km".daily_summary062 VALUES (NEW.*);
WHEN 063 THEN insert into "daily4km".daily_summary063 VALUES (NEW.*);
WHEN 064 THEN insert into "daily4km".daily_summary064 VALUES (NEW.*);
WHEN 065 THEN insert into "daily4km".daily_summary065 VALUES (NEW.*);
WHEN 066 THEN insert into "daily4km".daily_summary066 VALUES (NEW.*);
WHEN 067 THEN insert into "daily4km".daily_summary067 VALUES (NEW.*);
WHEN 068 THEN insert into "daily4km".daily_summary068 VALUES (NEW.*);
WHEN 069 THEN insert into "daily4km".daily_summary069 VALUES (NEW.*);
WHEN 070 THEN insert into "daily4km".daily_summary070 VALUES (NEW.*);
WHEN 071 THEN insert into "daily4km".daily_summary071 VALUES (NEW.*);
WHEN 072 THEN insert into "daily4km".daily_summary072 VALUES (NEW.*);
WHEN 073 THEN insert into "daily4km".daily_summary073 VALUES (NEW.*);
WHEN 074 THEN insert into "daily4km".daily_summary074 VALUES (NEW.*);
WHEN 075 THEN insert into "daily4km".daily_summary075 VALUES (NEW.*);
WHEN 076 THEN insert into "daily4km".daily_summary076 VALUES (NEW.*);
WHEN 077 THEN insert into "daily4km".daily_summary077 VALUES (NEW.*);
WHEN 078 THEN insert into "daily4km".daily_summary078 VALUES (NEW.*);
WHEN 079 THEN insert into "daily4km".daily_summary079 VALUES (NEW.*);
WHEN 080 THEN insert into "daily4km".daily_summary080 VALUES (NEW.*);
WHEN 081 THEN insert into "daily4km".daily_summary081 VALUES (NEW.*);
WHEN 082 THEN insert into "daily4km".daily_summary082 VALUES (NEW.*);
WHEN 083 THEN insert into "daily4km".daily_summary083 VALUES (NEW.*);
WHEN 084 THEN insert into "daily4km".daily_summary084 VALUES (NEW.*);
WHEN 085 THEN insert into "daily4km".daily_summary085 VALUES (NEW.*);
WHEN 086 THEN insert into "daily4km".daily_summary086 VALUES (NEW.*);
WHEN 087 THEN insert into "daily4km".daily_summary087 VALUES (NEW.*);
WHEN 088 THEN insert into "daily4km".daily_summary088 VALUES (NEW.*);
WHEN 089 THEN insert into "daily4km".daily_summary089 VALUES (NEW.*);
WHEN 090 THEN insert into "daily4km".daily_summary090 VALUES (NEW.*);
WHEN 091 THEN insert into "daily4km".daily_summary091 VALUES (NEW.*);
WHEN 092 THEN insert into "daily4km".daily_summary092 VALUES (NEW.*);
WHEN 093 THEN insert into "daily4km".daily_summary093 VALUES (NEW.*);
WHEN 094 THEN insert into "daily4km".daily_summary094 VALUES (NEW.*);
WHEN 095 THEN insert into "daily4km".daily_summary095 VALUES (NEW.*);
WHEN 096 THEN insert into "daily4km".daily_summary096 VALUES (NEW.*);
WHEN 097 THEN insert into "daily4km".daily_summary097 VALUES (NEW.*);
WHEN 098 THEN insert into "daily4km".daily_summary098 VALUES (NEW.*);
WHEN 099 THEN insert into "daily4km".daily_summary099 VALUES (NEW.*);
WHEN 100 THEN insert into "daily4km".daily_summary100 VALUES (NEW.*);
WHEN 101 THEN insert into "daily4km".daily_summary101 VALUES (NEW.*);
WHEN 102 THEN insert into "daily4km".daily_summary102 VALUES (NEW.*);
WHEN 103 THEN insert into "daily4km".daily_summary103 VALUES (NEW.*);
WHEN 104 THEN insert into "daily4km".daily_summary104 VALUES (NEW.*);
WHEN 105 THEN insert into "daily4km".daily_summary105 VALUES (NEW.*);
WHEN 106 THEN insert into "daily4km".daily_summary106 VALUES (NEW.*);
WHEN 107 THEN insert into "daily4km".daily_summary107 VALUES (NEW.*);
WHEN 108 THEN insert into "daily4km".daily_summary108 VALUES (NEW.*);
WHEN 109 THEN insert into "daily4km".daily_summary109 VALUES (NEW.*);
WHEN 110 THEN insert into "daily4km".daily_summary110 VALUES (NEW.*);
WHEN 111 THEN insert into "daily4km".daily_summary111 VALUES (NEW.*);
WHEN 112 THEN insert into "daily4km".daily_summary112 VALUES (NEW.*);
WHEN 113 THEN insert into "daily4km".daily_summary113 VALUES (NEW.*);
WHEN 114 THEN insert into "daily4km".daily_summary114 VALUES (NEW.*);
WHEN 115 THEN insert into "daily4km".daily_summary115 VALUES (NEW.*);
WHEN 116 THEN insert into "daily4km".daily_summary116 VALUES (NEW.*);
WHEN 117 THEN insert into "daily4km".daily_summary117 VALUES (NEW.*);
WHEN 118 THEN insert into "daily4km".daily_summary118 VALUES (NEW.*);
WHEN 119 THEN insert into "daily4km".daily_summary119 VALUES (NEW.*);
WHEN 120 THEN insert into "daily4km".daily_summary120 VALUES (NEW.*);
WHEN 121 THEN insert into "daily4km".daily_summary121 VALUES (NEW.*);
WHEN 122 THEN insert into "daily4km".daily_summary122 VALUES (NEW.*);
WHEN 123 THEN insert into "daily4km".daily_summary123 VALUES (NEW.*);
WHEN 124 THEN insert into "daily4km".daily_summary124 VALUES (NEW.*);
WHEN 125 THEN insert into "daily4km".daily_summary125 VALUES (NEW.*);
WHEN 126 THEN insert into "daily4km".daily_summary126 VALUES (NEW.*);
WHEN 127 THEN insert into "daily4km".daily_summary127 VALUES (NEW.*);
WHEN 128 THEN insert into "daily4km".daily_summary128 VALUES (NEW.*);
WHEN 129 THEN insert into "daily4km".daily_summary129 VALUES (NEW.*);
WHEN 130 THEN insert into "daily4km".daily_summary130 VALUES (NEW.*);
WHEN 131 THEN insert into "daily4km".daily_summary131 VALUES (NEW.*);
WHEN 132 THEN insert into "daily4km".daily_summary132 VALUES (NEW.*);
WHEN 133 THEN insert into "daily4km".daily_summary133 VALUES (NEW.*);
WHEN 134 THEN insert into "daily4km".daily_summary134 VALUES (NEW.*);
WHEN 135 THEN insert into "daily4km".daily_summary135 VALUES (NEW.*);
WHEN 136 THEN insert into "daily4km".daily_summary136 VALUES (NEW.*);
WHEN 137 THEN insert into "daily4km".daily_summary137 VALUES (NEW.*);
WHEN 138 THEN insert into "daily4km".daily_summary138 VALUES (NEW.*);
WHEN 139 THEN insert into "daily4km".daily_summary139 VALUES (NEW.*);
WHEN 140 THEN insert into "daily4km".daily_summary140 VALUES (NEW.*);
WHEN 141 THEN insert into "daily4km".daily_summary141 VALUES (NEW.*);
WHEN 142 THEN insert into "daily4km".daily_summary142 VALUES (NEW.*);
WHEN 143 THEN insert into "daily4km".daily_summary143 VALUES (NEW.*);
WHEN 144 THEN insert into "daily4km".daily_summary144 VALUES (NEW.*);
WHEN 145 THEN insert into "daily4km".daily_summary145 VALUES (NEW.*);
WHEN 146 THEN insert into "daily4km".daily_summary146 VALUES (NEW.*);
WHEN 147 THEN insert into "daily4km".daily_summary147 VALUES (NEW.*);
WHEN 148 THEN insert into "daily4km".daily_summary148 VALUES (NEW.*);
WHEN 149 THEN insert into "daily4km".daily_summary149 VALUES (NEW.*);
WHEN 150 THEN insert into "daily4km".daily_summary150 VALUES (NEW.*);
WHEN 151 THEN insert into "daily4km".daily_summary151 VALUES (NEW.*);
WHEN 152 THEN insert into "daily4km".daily_summary152 VALUES (NEW.*);
WHEN 153 THEN insert into "daily4km".daily_summary153 VALUES (NEW.*);
WHEN 154 THEN insert into "daily4km".daily_summary154 VALUES (NEW.*);
WHEN 155 THEN insert into "daily4km".daily_summary155 VALUES (NEW.*);
WHEN 156 THEN insert into "daily4km".daily_summary156 VALUES (NEW.*);
WHEN 157 THEN insert into "daily4km".daily_summary157 VALUES (NEW.*);
WHEN 158 THEN insert into "daily4km".daily_summary158 VALUES (NEW.*);
WHEN 159 THEN insert into "daily4km".daily_summary159 VALUES (NEW.*);
WHEN 160 THEN insert into "daily4km".daily_summary160 VALUES (NEW.*);
WHEN 161 THEN insert into "daily4km".daily_summary161 VALUES (NEW.*);
WHEN 162 THEN insert into "daily4km".daily_summary162 VALUES (NEW.*);
WHEN 163 THEN insert into "daily4km".daily_summary163 VALUES (NEW.*);
WHEN 164 THEN insert into "daily4km".daily_summary164 VALUES (NEW.*);
WHEN 165 THEN insert into "daily4km".daily_summary165 VALUES (NEW.*);
WHEN 166 THEN insert into "daily4km".daily_summary166 VALUES (NEW.*);
WHEN 167 THEN insert into "daily4km".daily_summary167 VALUES (NEW.*);
WHEN 168 THEN insert into "daily4km".daily_summary168 VALUES (NEW.*);
WHEN 169 THEN insert into "daily4km".daily_summary169 VALUES (NEW.*);
WHEN 170 THEN insert into "daily4km".daily_summary170 VALUES (NEW.*);
WHEN 171 THEN insert into "daily4km".daily_summary171 VALUES (NEW.*);
WHEN 172 THEN insert into "daily4km".daily_summary172 VALUES (NEW.*);
WHEN 173 THEN insert into "daily4km".daily_summary173 VALUES (NEW.*);
WHEN 174 THEN insert into "daily4km".daily_summary174 VALUES (NEW.*);
WHEN 175 THEN insert into "daily4km".daily_summary175 VALUES (NEW.*);
WHEN 176 THEN insert into "daily4km".daily_summary176 VALUES (NEW.*);
WHEN 177 THEN insert into "daily4km".daily_summary177 VALUES (NEW.*);
WHEN 178 THEN insert into "daily4km".daily_summary178 VALUES (NEW.*);
WHEN 179 THEN insert into "daily4km".daily_summary179 VALUES (NEW.*);
WHEN 180 THEN insert into "daily4km".daily_summary180 VALUES (NEW.*);
WHEN 181 THEN insert into "daily4km".daily_summary181 VALUES (NEW.*);
WHEN 182 THEN insert into "daily4km".daily_summary182 VALUES (NEW.*);
WHEN 183 THEN insert into "daily4km".daily_summary183 VALUES (NEW.*);
WHEN 184 THEN insert into "daily4km".daily_summary184 VALUES (NEW.*);
WHEN 185 THEN insert into "daily4km".daily_summary185 VALUES (NEW.*);
WHEN 186 THEN insert into "daily4km".daily_summary186 VALUES (NEW.*);
WHEN 187 THEN insert into "daily4km".daily_summary187 VALUES (NEW.*);
WHEN 188 THEN insert into "daily4km".daily_summary188 VALUES (NEW.*);
WHEN 189 THEN insert into "daily4km".daily_summary189 VALUES (NEW.*);
WHEN 190 THEN insert into "daily4km".daily_summary190 VALUES (NEW.*);
WHEN 191 THEN insert into "daily4km".daily_summary191 VALUES (NEW.*);
WHEN 192 THEN insert into "daily4km".daily_summary192 VALUES (NEW.*);
WHEN 193 THEN insert into "daily4km".daily_summary193 VALUES (NEW.*);
WHEN 194 THEN insert into "daily4km".daily_summary194 VALUES (NEW.*);
WHEN 195 THEN insert into "daily4km".daily_summary195 VALUES (NEW.*);
WHEN 196 THEN insert into "daily4km".daily_summary196 VALUES (NEW.*);
WHEN 197 THEN insert into "daily4km".daily_summary197 VALUES (NEW.*);
WHEN 198 THEN insert into "daily4km".daily_summary198 VALUES (NEW.*);
WHEN 199 THEN insert into "daily4km".daily_summary199 VALUES (NEW.*);
WHEN 200 THEN insert into "daily4km".daily_summary200 VALUES (NEW.*);
WHEN 201 THEN insert into "daily4km".daily_summary201 VALUES (NEW.*);
WHEN 202 THEN insert into "daily4km".daily_summary202 VALUES (NEW.*);
WHEN 203 THEN insert into "daily4km".daily_summary203 VALUES (NEW.*);
WHEN 204 THEN insert into "daily4km".daily_summary204 VALUES (NEW.*);
WHEN 205 THEN insert into "daily4km".daily_summary205 VALUES (NEW.*);
WHEN 206 THEN insert into "daily4km".daily_summary206 VALUES (NEW.*);
WHEN 207 THEN insert into "daily4km".daily_summary207 VALUES (NEW.*);
WHEN 208 THEN insert into "daily4km".daily_summary208 VALUES (NEW.*);
WHEN 209 THEN insert into "daily4km".daily_summary209 VALUES (NEW.*);
WHEN 210 THEN insert into "daily4km".daily_summary210 VALUES (NEW.*);
WHEN 211 THEN insert into "daily4km".daily_summary211 VALUES (NEW.*);
WHEN 212 THEN insert into "daily4km".daily_summary212 VALUES (NEW.*);
WHEN 213 THEN insert into "daily4km".daily_summary213 VALUES (NEW.*);
WHEN 214 THEN insert into "daily4km".daily_summary214 VALUES (NEW.*);
WHEN 215 THEN insert into "daily4km".daily_summary215 VALUES (NEW.*);
WHEN 216 THEN insert into "daily4km".daily_summary216 VALUES (NEW.*);
WHEN 217 THEN insert into "daily4km".daily_summary217 VALUES (NEW.*);
WHEN 218 THEN insert into "daily4km".daily_summary218 VALUES (NEW.*);
WHEN 219 THEN insert into "daily4km".daily_summary219 VALUES (NEW.*);
WHEN 220 THEN insert into "daily4km".daily_summary220 VALUES (NEW.*);
WHEN 221 THEN insert into "daily4km".daily_summary221 VALUES (NEW.*);
WHEN 222 THEN insert into "daily4km".daily_summary222 VALUES (NEW.*);
WHEN 223 THEN insert into "daily4km".daily_summary223 VALUES (NEW.*);
WHEN 224 THEN insert into "daily4km".daily_summary224 VALUES (NEW.*);
WHEN 225 THEN insert into "daily4km".daily_summary225 VALUES (NEW.*);
WHEN 226 THEN insert into "daily4km".daily_summary226 VALUES (NEW.*);
WHEN 227 THEN insert into "daily4km".daily_summary227 VALUES (NEW.*);
WHEN 228 THEN insert into "daily4km".daily_summary228 VALUES (NEW.*);
WHEN 229 THEN insert into "daily4km".daily_summary229 VALUES (NEW.*);
WHEN 230 THEN insert into "daily4km".daily_summary230 VALUES (NEW.*);
WHEN 231 THEN insert into "daily4km".daily_summary231 VALUES (NEW.*);
WHEN 232 THEN insert into "daily4km".daily_summary232 VALUES (NEW.*);
WHEN 233 THEN insert into "daily4km".daily_summary233 VALUES (NEW.*);
WHEN 234 THEN insert into "daily4km".daily_summary234 VALUES (NEW.*);
WHEN 235 THEN insert into "daily4km".daily_summary235 VALUES (NEW.*);
WHEN 236 THEN insert into "daily4km".daily_summary236 VALUES (NEW.*);
WHEN 237 THEN insert into "daily4km".daily_summary237 VALUES (NEW.*);
WHEN 238 THEN insert into "daily4km".daily_summary238 VALUES (NEW.*);
WHEN 239 THEN insert into "daily4km".daily_summary239 VALUES (NEW.*);
WHEN 240 THEN insert into "daily4km".daily_summary240 VALUES (NEW.*);
WHEN 241 THEN insert into "daily4km".daily_summary241 VALUES (NEW.*);
WHEN 242 THEN insert into "daily4km".daily_summary242 VALUES (NEW.*);
WHEN 243 THEN insert into "daily4km".daily_summary243 VALUES (NEW.*);
WHEN 244 THEN insert into "daily4km".daily_summary244 VALUES (NEW.*);
WHEN 245 THEN insert into "daily4km".daily_summary245 VALUES (NEW.*);
WHEN 246 THEN insert into "daily4km".daily_summary246 VALUES (NEW.*);
WHEN 247 THEN insert into "daily4km".daily_summary247 VALUES (NEW.*);
WHEN 248 THEN insert into "daily4km".daily_summary248 VALUES (NEW.*);
WHEN 249 THEN insert into "daily4km".daily_summary249 VALUES (NEW.*);
WHEN 250 THEN insert into "daily4km".daily_summary250 VALUES (NEW.*);
WHEN 251 THEN insert into "daily4km".daily_summary251 VALUES (NEW.*);
WHEN 252 THEN insert into "daily4km".daily_summary252 VALUES (NEW.*);
WHEN 253 THEN insert into "daily4km".daily_summary253 VALUES (NEW.*);
WHEN 254 THEN insert into "daily4km".daily_summary254 VALUES (NEW.*);
WHEN 255 THEN insert into "daily4km".daily_summary255 VALUES (NEW.*);
WHEN 256 THEN insert into "daily4km".daily_summary256 VALUES (NEW.*);
WHEN 257 THEN insert into "daily4km".daily_summary257 VALUES (NEW.*);
WHEN 258 THEN insert into "daily4km".daily_summary258 VALUES (NEW.*);
WHEN 259 THEN insert into "daily4km".daily_summary259 VALUES (NEW.*);
WHEN 260 THEN insert into "daily4km".daily_summary260 VALUES (NEW.*);
WHEN 261 THEN insert into "daily4km".daily_summary261 VALUES (NEW.*);
WHEN 262 THEN insert into "daily4km".daily_summary262 VALUES (NEW.*);
WHEN 263 THEN insert into "daily4km".daily_summary263 VALUES (NEW.*);
WHEN 264 THEN insert into "daily4km".daily_summary264 VALUES (NEW.*);
WHEN 265 THEN insert into "daily4km".daily_summary265 VALUES (NEW.*);
WHEN 266 THEN insert into "daily4km".daily_summary266 VALUES (NEW.*);
WHEN 267 THEN insert into "daily4km".daily_summary267 VALUES (NEW.*);
WHEN 268 THEN insert into "daily4km".daily_summary268 VALUES (NEW.*);
WHEN 269 THEN insert into "daily4km".daily_summary269 VALUES (NEW.*);
WHEN 270 THEN insert into "daily4km".daily_summary270 VALUES (NEW.*);
WHEN 271 THEN insert into "daily4km".daily_summary271 VALUES (NEW.*);
WHEN 272 THEN insert into "daily4km".daily_summary272 VALUES (NEW.*);
WHEN 273 THEN insert into "daily4km".daily_summary273 VALUES (NEW.*);
WHEN 274 THEN insert into "daily4km".daily_summary274 VALUES (NEW.*);
WHEN 275 THEN insert into "daily4km".daily_summary275 VALUES (NEW.*);
WHEN 276 THEN insert into "daily4km".daily_summary276 VALUES (NEW.*);
WHEN 277 THEN insert into "daily4km".daily_summary277 VALUES (NEW.*);
WHEN 278 THEN insert into "daily4km".daily_summary278 VALUES (NEW.*);
WHEN 279 THEN insert into "daily4km".daily_summary279 VALUES (NEW.*);
WHEN 280 THEN insert into "daily4km".daily_summary280 VALUES (NEW.*);
WHEN 281 THEN insert into "daily4km".daily_summary281 VALUES (NEW.*);
WHEN 282 THEN insert into "daily4km".daily_summary282 VALUES (NEW.*);
WHEN 283 THEN insert into "daily4km".daily_summary283 VALUES (NEW.*);
WHEN 284 THEN insert into "daily4km".daily_summary284 VALUES (NEW.*);
WHEN 285 THEN insert into "daily4km".daily_summary285 VALUES (NEW.*);
WHEN 286 THEN insert into "daily4km".daily_summary286 VALUES (NEW.*);
WHEN 287 THEN insert into "daily4km".daily_summary287 VALUES (NEW.*);
WHEN 288 THEN insert into "daily4km".daily_summary288 VALUES (NEW.*);
WHEN 289 THEN insert into "daily4km".daily_summary289 VALUES (NEW.*);
WHEN 290 THEN insert into "daily4km".daily_summary290 VALUES (NEW.*);
WHEN 291 THEN insert into "daily4km".daily_summary291 VALUES (NEW.*);
WHEN 292 THEN insert into "daily4km".daily_summary292 VALUES (NEW.*);
WHEN 293 THEN insert into "daily4km".daily_summary293 VALUES (NEW.*);
WHEN 294 THEN insert into "daily4km".daily_summary294 VALUES (NEW.*);
WHEN 295 THEN insert into "daily4km".daily_summary295 VALUES (NEW.*);
WHEN 296 THEN insert into "daily4km".daily_summary296 VALUES (NEW.*);
WHEN 297 THEN insert into "daily4km".daily_summary297 VALUES (NEW.*);
WHEN 298 THEN insert into "daily4km".daily_summary298 VALUES (NEW.*);
WHEN 299 THEN insert into "daily4km".daily_summary299 VALUES (NEW.*);
ELSE insert into "daily4km".daily_summary VALUES (NEW.*);
END CASE;
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER insert_daily_summary_trigger
BEFORE INSERT ON "daily4km".daily_summary FOR EACH ROW 
EXECUTE PROCEDURE daily_summary_insert_trigger();

END;
