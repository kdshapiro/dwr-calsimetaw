\set ON_ERROR_STOP 1
BEGIN;
drop schema if exists :prismSchema cascade;
create schema :prismSchema;
set search_path=:prismSchema,public;

create table prism (
x integer,
y integer,
year integer,
month integer,
Tx float,
Tn float,
PCP float,
ETo float,
NRF integer
);

CREATE OR REPLACE FUNCTION prism_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
CASE NEW.y
WHEN 000 THEN insert into "prism4km".prism000 VALUES (NEW.*);
WHEN 001 THEN insert into "prism4km".prism001 VALUES (NEW.*);
WHEN 002 THEN insert into "prism4km".prism002 VALUES (NEW.*);
WHEN 003 THEN insert into "prism4km".prism003 VALUES (NEW.*);
WHEN 004 THEN insert into "prism4km".prism004 VALUES (NEW.*);
WHEN 005 THEN insert into "prism4km".prism005 VALUES (NEW.*);
WHEN 006 THEN insert into "prism4km".prism006 VALUES (NEW.*);
WHEN 007 THEN insert into "prism4km".prism007 VALUES (NEW.*);
WHEN 008 THEN insert into "prism4km".prism008 VALUES (NEW.*);
WHEN 009 THEN insert into "prism4km".prism009 VALUES (NEW.*);
WHEN 010 THEN insert into "prism4km".prism010 VALUES (NEW.*);
WHEN 011 THEN insert into "prism4km".prism011 VALUES (NEW.*);
WHEN 012 THEN insert into "prism4km".prism012 VALUES (NEW.*);
WHEN 013 THEN insert into "prism4km".prism013 VALUES (NEW.*);
WHEN 014 THEN insert into "prism4km".prism014 VALUES (NEW.*);
WHEN 015 THEN insert into "prism4km".prism015 VALUES (NEW.*);
WHEN 016 THEN insert into "prism4km".prism016 VALUES (NEW.*);
WHEN 017 THEN insert into "prism4km".prism017 VALUES (NEW.*);
WHEN 018 THEN insert into "prism4km".prism018 VALUES (NEW.*);
WHEN 019 THEN insert into "prism4km".prism019 VALUES (NEW.*);
WHEN 020 THEN insert into "prism4km".prism020 VALUES (NEW.*);
WHEN 021 THEN insert into "prism4km".prism021 VALUES (NEW.*);
WHEN 022 THEN insert into "prism4km".prism022 VALUES (NEW.*);
WHEN 023 THEN insert into "prism4km".prism023 VALUES (NEW.*);
WHEN 024 THEN insert into "prism4km".prism024 VALUES (NEW.*);
WHEN 025 THEN insert into "prism4km".prism025 VALUES (NEW.*);
WHEN 026 THEN insert into "prism4km".prism026 VALUES (NEW.*);
WHEN 027 THEN insert into "prism4km".prism027 VALUES (NEW.*);
WHEN 028 THEN insert into "prism4km".prism028 VALUES (NEW.*);
WHEN 029 THEN insert into "prism4km".prism029 VALUES (NEW.*);
WHEN 030 THEN insert into "prism4km".prism030 VALUES (NEW.*);
WHEN 031 THEN insert into "prism4km".prism031 VALUES (NEW.*);
WHEN 032 THEN insert into "prism4km".prism032 VALUES (NEW.*);
WHEN 033 THEN insert into "prism4km".prism033 VALUES (NEW.*);
WHEN 034 THEN insert into "prism4km".prism034 VALUES (NEW.*);
WHEN 035 THEN insert into "prism4km".prism035 VALUES (NEW.*);
WHEN 036 THEN insert into "prism4km".prism036 VALUES (NEW.*);
WHEN 037 THEN insert into "prism4km".prism037 VALUES (NEW.*);
WHEN 038 THEN insert into "prism4km".prism038 VALUES (NEW.*);
WHEN 039 THEN insert into "prism4km".prism039 VALUES (NEW.*);
WHEN 040 THEN insert into "prism4km".prism040 VALUES (NEW.*);
WHEN 041 THEN insert into "prism4km".prism041 VALUES (NEW.*);
WHEN 042 THEN insert into "prism4km".prism042 VALUES (NEW.*);
WHEN 043 THEN insert into "prism4km".prism043 VALUES (NEW.*);
WHEN 044 THEN insert into "prism4km".prism044 VALUES (NEW.*);
WHEN 045 THEN insert into "prism4km".prism045 VALUES (NEW.*);
WHEN 046 THEN insert into "prism4km".prism046 VALUES (NEW.*);
WHEN 047 THEN insert into "prism4km".prism047 VALUES (NEW.*);
WHEN 048 THEN insert into "prism4km".prism048 VALUES (NEW.*);
WHEN 049 THEN insert into "prism4km".prism049 VALUES (NEW.*);
WHEN 050 THEN insert into "prism4km".prism050 VALUES (NEW.*);
WHEN 051 THEN insert into "prism4km".prism051 VALUES (NEW.*);
WHEN 052 THEN insert into "prism4km".prism052 VALUES (NEW.*);
WHEN 053 THEN insert into "prism4km".prism053 VALUES (NEW.*);
WHEN 054 THEN insert into "prism4km".prism054 VALUES (NEW.*);
WHEN 055 THEN insert into "prism4km".prism055 VALUES (NEW.*);
WHEN 056 THEN insert into "prism4km".prism056 VALUES (NEW.*);
WHEN 057 THEN insert into "prism4km".prism057 VALUES (NEW.*);
WHEN 058 THEN insert into "prism4km".prism058 VALUES (NEW.*);
WHEN 059 THEN insert into "prism4km".prism059 VALUES (NEW.*);
WHEN 060 THEN insert into "prism4km".prism060 VALUES (NEW.*);
WHEN 061 THEN insert into "prism4km".prism061 VALUES (NEW.*);
WHEN 062 THEN insert into "prism4km".prism062 VALUES (NEW.*);
WHEN 063 THEN insert into "prism4km".prism063 VALUES (NEW.*);
WHEN 064 THEN insert into "prism4km".prism064 VALUES (NEW.*);
WHEN 065 THEN insert into "prism4km".prism065 VALUES (NEW.*);
WHEN 066 THEN insert into "prism4km".prism066 VALUES (NEW.*);
WHEN 067 THEN insert into "prism4km".prism067 VALUES (NEW.*);
WHEN 068 THEN insert into "prism4km".prism068 VALUES (NEW.*);
WHEN 069 THEN insert into "prism4km".prism069 VALUES (NEW.*);
WHEN 070 THEN insert into "prism4km".prism070 VALUES (NEW.*);
WHEN 071 THEN insert into "prism4km".prism071 VALUES (NEW.*);
WHEN 072 THEN insert into "prism4km".prism072 VALUES (NEW.*);
WHEN 073 THEN insert into "prism4km".prism073 VALUES (NEW.*);
WHEN 074 THEN insert into "prism4km".prism074 VALUES (NEW.*);
WHEN 075 THEN insert into "prism4km".prism075 VALUES (NEW.*);
WHEN 076 THEN insert into "prism4km".prism076 VALUES (NEW.*);
WHEN 077 THEN insert into "prism4km".prism077 VALUES (NEW.*);
WHEN 078 THEN insert into "prism4km".prism078 VALUES (NEW.*);
WHEN 079 THEN insert into "prism4km".prism079 VALUES (NEW.*);
WHEN 080 THEN insert into "prism4km".prism080 VALUES (NEW.*);
WHEN 081 THEN insert into "prism4km".prism081 VALUES (NEW.*);
WHEN 082 THEN insert into "prism4km".prism082 VALUES (NEW.*);
WHEN 083 THEN insert into "prism4km".prism083 VALUES (NEW.*);
WHEN 084 THEN insert into "prism4km".prism084 VALUES (NEW.*);
WHEN 085 THEN insert into "prism4km".prism085 VALUES (NEW.*);
WHEN 086 THEN insert into "prism4km".prism086 VALUES (NEW.*);
WHEN 087 THEN insert into "prism4km".prism087 VALUES (NEW.*);
WHEN 088 THEN insert into "prism4km".prism088 VALUES (NEW.*);
WHEN 089 THEN insert into "prism4km".prism089 VALUES (NEW.*);
WHEN 090 THEN insert into "prism4km".prism090 VALUES (NEW.*);
WHEN 091 THEN insert into "prism4km".prism091 VALUES (NEW.*);
WHEN 092 THEN insert into "prism4km".prism092 VALUES (NEW.*);
WHEN 093 THEN insert into "prism4km".prism093 VALUES (NEW.*);
WHEN 094 THEN insert into "prism4km".prism094 VALUES (NEW.*);
WHEN 095 THEN insert into "prism4km".prism095 VALUES (NEW.*);
WHEN 096 THEN insert into "prism4km".prism096 VALUES (NEW.*);
WHEN 097 THEN insert into "prism4km".prism097 VALUES (NEW.*);
WHEN 098 THEN insert into "prism4km".prism098 VALUES (NEW.*);
WHEN 099 THEN insert into "prism4km".prism099 VALUES (NEW.*);
WHEN 100 THEN insert into "prism4km".prism100 VALUES (NEW.*);
WHEN 101 THEN insert into "prism4km".prism101 VALUES (NEW.*);
WHEN 102 THEN insert into "prism4km".prism102 VALUES (NEW.*);
WHEN 103 THEN insert into "prism4km".prism103 VALUES (NEW.*);
WHEN 104 THEN insert into "prism4km".prism104 VALUES (NEW.*);
WHEN 105 THEN insert into "prism4km".prism105 VALUES (NEW.*);
WHEN 106 THEN insert into "prism4km".prism106 VALUES (NEW.*);
WHEN 107 THEN insert into "prism4km".prism107 VALUES (NEW.*);
WHEN 108 THEN insert into "prism4km".prism108 VALUES (NEW.*);
WHEN 109 THEN insert into "prism4km".prism109 VALUES (NEW.*);
WHEN 110 THEN insert into "prism4km".prism110 VALUES (NEW.*);
WHEN 111 THEN insert into "prism4km".prism111 VALUES (NEW.*);
WHEN 112 THEN insert into "prism4km".prism112 VALUES (NEW.*);
WHEN 113 THEN insert into "prism4km".prism113 VALUES (NEW.*);
WHEN 114 THEN insert into "prism4km".prism114 VALUES (NEW.*);
WHEN 115 THEN insert into "prism4km".prism115 VALUES (NEW.*);
WHEN 116 THEN insert into "prism4km".prism116 VALUES (NEW.*);
WHEN 117 THEN insert into "prism4km".prism117 VALUES (NEW.*);
WHEN 118 THEN insert into "prism4km".prism118 VALUES (NEW.*);
WHEN 119 THEN insert into "prism4km".prism119 VALUES (NEW.*);
WHEN 120 THEN insert into "prism4km".prism120 VALUES (NEW.*);
WHEN 121 THEN insert into "prism4km".prism121 VALUES (NEW.*);
WHEN 122 THEN insert into "prism4km".prism122 VALUES (NEW.*);
WHEN 123 THEN insert into "prism4km".prism123 VALUES (NEW.*);
WHEN 124 THEN insert into "prism4km".prism124 VALUES (NEW.*);
WHEN 125 THEN insert into "prism4km".prism125 VALUES (NEW.*);
WHEN 126 THEN insert into "prism4km".prism126 VALUES (NEW.*);
WHEN 127 THEN insert into "prism4km".prism127 VALUES (NEW.*);
WHEN 128 THEN insert into "prism4km".prism128 VALUES (NEW.*);
WHEN 129 THEN insert into "prism4km".prism129 VALUES (NEW.*);
WHEN 130 THEN insert into "prism4km".prism130 VALUES (NEW.*);
WHEN 131 THEN insert into "prism4km".prism131 VALUES (NEW.*);
WHEN 132 THEN insert into "prism4km".prism132 VALUES (NEW.*);
WHEN 133 THEN insert into "prism4km".prism133 VALUES (NEW.*);
WHEN 134 THEN insert into "prism4km".prism134 VALUES (NEW.*);
WHEN 135 THEN insert into "prism4km".prism135 VALUES (NEW.*);
WHEN 136 THEN insert into "prism4km".prism136 VALUES (NEW.*);
WHEN 137 THEN insert into "prism4km".prism137 VALUES (NEW.*);
WHEN 138 THEN insert into "prism4km".prism138 VALUES (NEW.*);
WHEN 139 THEN insert into "prism4km".prism139 VALUES (NEW.*);
WHEN 140 THEN insert into "prism4km".prism140 VALUES (NEW.*);
WHEN 141 THEN insert into "prism4km".prism141 VALUES (NEW.*);
WHEN 142 THEN insert into "prism4km".prism142 VALUES (NEW.*);
WHEN 143 THEN insert into "prism4km".prism143 VALUES (NEW.*);
WHEN 144 THEN insert into "prism4km".prism144 VALUES (NEW.*);
WHEN 145 THEN insert into "prism4km".prism145 VALUES (NEW.*);
WHEN 146 THEN insert into "prism4km".prism146 VALUES (NEW.*);
WHEN 147 THEN insert into "prism4km".prism147 VALUES (NEW.*);
WHEN 148 THEN insert into "prism4km".prism148 VALUES (NEW.*);
WHEN 149 THEN insert into "prism4km".prism149 VALUES (NEW.*);
WHEN 150 THEN insert into "prism4km".prism150 VALUES (NEW.*);
WHEN 151 THEN insert into "prism4km".prism151 VALUES (NEW.*);
WHEN 152 THEN insert into "prism4km".prism152 VALUES (NEW.*);
WHEN 153 THEN insert into "prism4km".prism153 VALUES (NEW.*);
WHEN 154 THEN insert into "prism4km".prism154 VALUES (NEW.*);
WHEN 155 THEN insert into "prism4km".prism155 VALUES (NEW.*);
WHEN 156 THEN insert into "prism4km".prism156 VALUES (NEW.*);
WHEN 157 THEN insert into "prism4km".prism157 VALUES (NEW.*);
WHEN 158 THEN insert into "prism4km".prism158 VALUES (NEW.*);
WHEN 159 THEN insert into "prism4km".prism159 VALUES (NEW.*);
WHEN 160 THEN insert into "prism4km".prism160 VALUES (NEW.*);
WHEN 161 THEN insert into "prism4km".prism161 VALUES (NEW.*);
WHEN 162 THEN insert into "prism4km".prism162 VALUES (NEW.*);
WHEN 163 THEN insert into "prism4km".prism163 VALUES (NEW.*);
WHEN 164 THEN insert into "prism4km".prism164 VALUES (NEW.*);
WHEN 165 THEN insert into "prism4km".prism165 VALUES (NEW.*);
WHEN 166 THEN insert into "prism4km".prism166 VALUES (NEW.*);
WHEN 167 THEN insert into "prism4km".prism167 VALUES (NEW.*);
WHEN 168 THEN insert into "prism4km".prism168 VALUES (NEW.*);
WHEN 169 THEN insert into "prism4km".prism169 VALUES (NEW.*);
WHEN 170 THEN insert into "prism4km".prism170 VALUES (NEW.*);
WHEN 171 THEN insert into "prism4km".prism171 VALUES (NEW.*);
WHEN 172 THEN insert into "prism4km".prism172 VALUES (NEW.*);
WHEN 173 THEN insert into "prism4km".prism173 VALUES (NEW.*);
WHEN 174 THEN insert into "prism4km".prism174 VALUES (NEW.*);
WHEN 175 THEN insert into "prism4km".prism175 VALUES (NEW.*);
WHEN 176 THEN insert into "prism4km".prism176 VALUES (NEW.*);
WHEN 177 THEN insert into "prism4km".prism177 VALUES (NEW.*);
WHEN 178 THEN insert into "prism4km".prism178 VALUES (NEW.*);
WHEN 179 THEN insert into "prism4km".prism179 VALUES (NEW.*);
WHEN 180 THEN insert into "prism4km".prism180 VALUES (NEW.*);
WHEN 181 THEN insert into "prism4km".prism181 VALUES (NEW.*);
WHEN 182 THEN insert into "prism4km".prism182 VALUES (NEW.*);
WHEN 183 THEN insert into "prism4km".prism183 VALUES (NEW.*);
WHEN 184 THEN insert into "prism4km".prism184 VALUES (NEW.*);
WHEN 185 THEN insert into "prism4km".prism185 VALUES (NEW.*);
WHEN 186 THEN insert into "prism4km".prism186 VALUES (NEW.*);
WHEN 187 THEN insert into "prism4km".prism187 VALUES (NEW.*);
WHEN 188 THEN insert into "prism4km".prism188 VALUES (NEW.*);
WHEN 189 THEN insert into "prism4km".prism189 VALUES (NEW.*);
WHEN 190 THEN insert into "prism4km".prism190 VALUES (NEW.*);
WHEN 191 THEN insert into "prism4km".prism191 VALUES (NEW.*);
WHEN 192 THEN insert into "prism4km".prism192 VALUES (NEW.*);
WHEN 193 THEN insert into "prism4km".prism193 VALUES (NEW.*);
WHEN 194 THEN insert into "prism4km".prism194 VALUES (NEW.*);
WHEN 195 THEN insert into "prism4km".prism195 VALUES (NEW.*);
WHEN 196 THEN insert into "prism4km".prism196 VALUES (NEW.*);
WHEN 197 THEN insert into "prism4km".prism197 VALUES (NEW.*);
WHEN 198 THEN insert into "prism4km".prism198 VALUES (NEW.*);
WHEN 199 THEN insert into "prism4km".prism199 VALUES (NEW.*);
WHEN 200 THEN insert into "prism4km".prism200 VALUES (NEW.*);
WHEN 201 THEN insert into "prism4km".prism201 VALUES (NEW.*);
WHEN 202 THEN insert into "prism4km".prism202 VALUES (NEW.*);
WHEN 203 THEN insert into "prism4km".prism203 VALUES (NEW.*);
WHEN 204 THEN insert into "prism4km".prism204 VALUES (NEW.*);
WHEN 205 THEN insert into "prism4km".prism205 VALUES (NEW.*);
WHEN 206 THEN insert into "prism4km".prism206 VALUES (NEW.*);
WHEN 207 THEN insert into "prism4km".prism207 VALUES (NEW.*);
WHEN 208 THEN insert into "prism4km".prism208 VALUES (NEW.*);
WHEN 209 THEN insert into "prism4km".prism209 VALUES (NEW.*);
WHEN 210 THEN insert into "prism4km".prism210 VALUES (NEW.*);
WHEN 211 THEN insert into "prism4km".prism211 VALUES (NEW.*);
WHEN 212 THEN insert into "prism4km".prism212 VALUES (NEW.*);
WHEN 213 THEN insert into "prism4km".prism213 VALUES (NEW.*);
WHEN 214 THEN insert into "prism4km".prism214 VALUES (NEW.*);
WHEN 215 THEN insert into "prism4km".prism215 VALUES (NEW.*);
WHEN 216 THEN insert into "prism4km".prism216 VALUES (NEW.*);
WHEN 217 THEN insert into "prism4km".prism217 VALUES (NEW.*);
WHEN 218 THEN insert into "prism4km".prism218 VALUES (NEW.*);
WHEN 219 THEN insert into "prism4km".prism219 VALUES (NEW.*);
WHEN 220 THEN insert into "prism4km".prism220 VALUES (NEW.*);
WHEN 221 THEN insert into "prism4km".prism221 VALUES (NEW.*);
WHEN 222 THEN insert into "prism4km".prism222 VALUES (NEW.*);
WHEN 223 THEN insert into "prism4km".prism223 VALUES (NEW.*);
WHEN 224 THEN insert into "prism4km".prism224 VALUES (NEW.*);
WHEN 225 THEN insert into "prism4km".prism225 VALUES (NEW.*);
WHEN 226 THEN insert into "prism4km".prism226 VALUES (NEW.*);
WHEN 227 THEN insert into "prism4km".prism227 VALUES (NEW.*);
WHEN 228 THEN insert into "prism4km".prism228 VALUES (NEW.*);
WHEN 229 THEN insert into "prism4km".prism229 VALUES (NEW.*);
WHEN 230 THEN insert into "prism4km".prism230 VALUES (NEW.*);
WHEN 231 THEN insert into "prism4km".prism231 VALUES (NEW.*);
WHEN 232 THEN insert into "prism4km".prism232 VALUES (NEW.*);
WHEN 233 THEN insert into "prism4km".prism233 VALUES (NEW.*);
WHEN 234 THEN insert into "prism4km".prism234 VALUES (NEW.*);
WHEN 235 THEN insert into "prism4km".prism235 VALUES (NEW.*);
WHEN 236 THEN insert into "prism4km".prism236 VALUES (NEW.*);
WHEN 237 THEN insert into "prism4km".prism237 VALUES (NEW.*);
WHEN 238 THEN insert into "prism4km".prism238 VALUES (NEW.*);
WHEN 239 THEN insert into "prism4km".prism239 VALUES (NEW.*);
WHEN 240 THEN insert into "prism4km".prism240 VALUES (NEW.*);
WHEN 241 THEN insert into "prism4km".prism241 VALUES (NEW.*);
WHEN 242 THEN insert into "prism4km".prism242 VALUES (NEW.*);
WHEN 243 THEN insert into "prism4km".prism243 VALUES (NEW.*);
WHEN 244 THEN insert into "prism4km".prism244 VALUES (NEW.*);
WHEN 245 THEN insert into "prism4km".prism245 VALUES (NEW.*);
WHEN 246 THEN insert into "prism4km".prism246 VALUES (NEW.*);
WHEN 247 THEN insert into "prism4km".prism247 VALUES (NEW.*);
WHEN 248 THEN insert into "prism4km".prism248 VALUES (NEW.*);
WHEN 249 THEN insert into "prism4km".prism249 VALUES (NEW.*);
WHEN 250 THEN insert into "prism4km".prism250 VALUES (NEW.*);
WHEN 251 THEN insert into "prism4km".prism251 VALUES (NEW.*);
WHEN 252 THEN insert into "prism4km".prism252 VALUES (NEW.*);
WHEN 253 THEN insert into "prism4km".prism253 VALUES (NEW.*);
WHEN 254 THEN insert into "prism4km".prism254 VALUES (NEW.*);
WHEN 255 THEN insert into "prism4km".prism255 VALUES (NEW.*);
WHEN 256 THEN insert into "prism4km".prism256 VALUES (NEW.*);
WHEN 257 THEN insert into "prism4km".prism257 VALUES (NEW.*);
WHEN 258 THEN insert into "prism4km".prism258 VALUES (NEW.*);
WHEN 259 THEN insert into "prism4km".prism259 VALUES (NEW.*);
WHEN 260 THEN insert into "prism4km".prism260 VALUES (NEW.*);
WHEN 261 THEN insert into "prism4km".prism261 VALUES (NEW.*);
WHEN 262 THEN insert into "prism4km".prism262 VALUES (NEW.*);
WHEN 263 THEN insert into "prism4km".prism263 VALUES (NEW.*);
WHEN 264 THEN insert into "prism4km".prism264 VALUES (NEW.*);
WHEN 265 THEN insert into "prism4km".prism265 VALUES (NEW.*);
WHEN 266 THEN insert into "prism4km".prism266 VALUES (NEW.*);
WHEN 267 THEN insert into "prism4km".prism267 VALUES (NEW.*);
WHEN 268 THEN insert into "prism4km".prism268 VALUES (NEW.*);
WHEN 269 THEN insert into "prism4km".prism269 VALUES (NEW.*);
WHEN 270 THEN insert into "prism4km".prism270 VALUES (NEW.*);
WHEN 271 THEN insert into "prism4km".prism271 VALUES (NEW.*);
WHEN 272 THEN insert into "prism4km".prism272 VALUES (NEW.*);
WHEN 273 THEN insert into "prism4km".prism273 VALUES (NEW.*);
WHEN 274 THEN insert into "prism4km".prism274 VALUES (NEW.*);
WHEN 275 THEN insert into "prism4km".prism275 VALUES (NEW.*);
WHEN 276 THEN insert into "prism4km".prism276 VALUES (NEW.*);
WHEN 277 THEN insert into "prism4km".prism277 VALUES (NEW.*);
WHEN 278 THEN insert into "prism4km".prism278 VALUES (NEW.*);
WHEN 279 THEN insert into "prism4km".prism279 VALUES (NEW.*);
WHEN 280 THEN insert into "prism4km".prism280 VALUES (NEW.*);
WHEN 281 THEN insert into "prism4km".prism281 VALUES (NEW.*);
WHEN 282 THEN insert into "prism4km".prism282 VALUES (NEW.*);
WHEN 283 THEN insert into "prism4km".prism283 VALUES (NEW.*);
WHEN 284 THEN insert into "prism4km".prism284 VALUES (NEW.*);
WHEN 285 THEN insert into "prism4km".prism285 VALUES (NEW.*);
WHEN 286 THEN insert into "prism4km".prism286 VALUES (NEW.*);
WHEN 287 THEN insert into "prism4km".prism287 VALUES (NEW.*);
WHEN 288 THEN insert into "prism4km".prism288 VALUES (NEW.*);
WHEN 289 THEN insert into "prism4km".prism289 VALUES (NEW.*);
WHEN 290 THEN insert into "prism4km".prism290 VALUES (NEW.*);
WHEN 291 THEN insert into "prism4km".prism291 VALUES (NEW.*);
WHEN 292 THEN insert into "prism4km".prism292 VALUES (NEW.*);
WHEN 293 THEN insert into "prism4km".prism293 VALUES (NEW.*);
WHEN 294 THEN insert into "prism4km".prism294 VALUES (NEW.*);
WHEN 295 THEN insert into "prism4km".prism295 VALUES (NEW.*);
WHEN 296 THEN insert into "prism4km".prism296 VALUES (NEW.*);
WHEN 297 THEN insert into "prism4km".prism297 VALUES (NEW.*);
WHEN 298 THEN insert into "prism4km".prism298 VALUES (NEW.*);
WHEN 299 THEN insert into "prism4km".prism299 VALUES (NEW.*);
ELSE insert into "prism4km".prism VALUES (NEW.*);
END CASE;
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER insert_prism_trigger
BEFORE INSERT ON "prism4km".prism FOR EACH ROW 
EXECUTE PROCEDURE prism_insert_trigger();

END;