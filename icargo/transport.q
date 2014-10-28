[QueryGroup="demo"] @collection [[
[QueryItem="test"]
PREFIX : <http://interop.sensorlab.tno.nl/def/transport#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX tu: <http://interop.sensorlab.tno.nl/TruckersUnited/>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX cc: <http://interop.sensorlab.tno.nl/CombinedContainers/>

SELECT DISTINCT * WHERE {
	?s a :Truck ; ?p ?o .

} ORDERBY ?s
]]
