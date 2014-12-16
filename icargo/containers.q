[QueryGroup="test"] @collection [[
[QueryItem="locations"]
PREFIX : <http://www.icargo.eu/containers/def#>
PREFIX ap: <http://www.icargo.eu/example/id/>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
select  ?s ?o where { ?s a :Location; LogiCO:hasName ?o }

[QueryItem="transportmeans"]
PREFIX : <http://www.icargo.eu/containers/def#>
PREFIX ap: <http://www.icargo.eu/example/id/>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
select ?s ?o where {?s rdf:type LogiCO:TransportMeans. ?s LogiCO:hasName ?o}

[QueryItem="whereis"]
PREFIX : <http://www.icargo.eu/containers/def#>
PREFIX ap: <http://www.icargo.eu/example/id/>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?c ?ld WHERE {?c a :Container. ?l a :Location. ?l LogiCO:hasName ?ld.
{ ?c LogiCO:hasLocation ?l }
UNION
{ ?c LogiCO:isMovedBy ?t. ?t LogiCO:hasLocation ?l}
}

[QueryItem="containers"]
PREFIX : <http://www.icargo.eu/containers/def#>
PREFIX ap: <http://www.icargo.eu/example/id/>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
select ?s ?o where {?s a :Container; LogiCO:hasName ?o}

[QueryItem="entity"]
PREFIX : <http://www.icargo.eu/containers/def#>
PREFIX ap: <http://www.icargo.eu/example/id/>
PREFIX LogiCO: <http://tno-logistics.nl/LogiCO#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?p ?o WHERE 
{ <http://www.icargo.eu/example/id/Container/123> ?p ?o . }
]]
