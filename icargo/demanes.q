[QueryGroup="test"] @collection [[
[QueryItem="q1"]
PREFIX : <http://www.icargo.eu/demanes#>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select * where {
	?user a :User .
	
}
]]
