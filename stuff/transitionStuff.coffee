#oldNodeLocationsForSplines = {} 
#oldSplines = []
#getSplineBeforeMove = (oldSpline) ->
#    newSpline = []
#    for node in oldSpline
#        
#        if oldNodeLocationsForSplines[node.name]?
#            node.x = oldNodeLocationsForSplines[node.name]
#        else
#            node.x = oldNodeLocationsForSplines[node.parent.name]
#        
#        newSpline.push node
#    
#    return line(newSpline)
#
#updateChord = (nodes, links, parentNode) -> 
#
##    parentNode: Object
##        depth: 1
##        name: "ApacheJMeter_ftp.jar"
##        parent: Object
##        type: "jar"
##        x: 64.28571428571429
##        y: 380
#    
#    
#    for spline in splines
#        for node in spline
#            oldNodeLocationsForSplines[node.name] = node.x
#            
#    
#    splines = bundle(links)
#     
##    if stationaryNodeName?
##        transformAttr = $("#node-#{stationaryNodeName.split('$').join('\\$')}").attr("transform")
##        angleBefore = (transformAttr.split(")")[0]).split("(")[1]
##        #first bit returns "rotate(80.656211321", second bit returns the angle
#         
##    svg.selectAll("path.link")
##                    .remove()
#    
#    paths = svg.selectAll("path.link")
#                    .data(links) #for each data enter
#                        
#    paths.enter()
#        .append("svg:path")
#        .attr("class", (d) -> "link source-#{d.source.name.split('$').join('\\$')} target-#{d.target.name.split('$').join('\\$')}")
#        .attr "d", (d, i) -> 
#                            newSpline = []
#                            for node in splines[i]
#                                
#                                newNode = {}
#                                for key, value of node
#                                    newNode[key] = value
#
#                                if oldNodeLocationsForSplines[node.name]?
#                                    newNode.x = oldNodeLocationsForSplines[node.name]
#                                else
#                                    newNode.x = oldNodeLocationsForSplines[node.parent.name]
#
#                                newSpline.push newNode
#
#                            return line(newSpline)
#        
#        
#    paths
#        .transition()
#        .duration(10000)
#        .attr("d", (d, i) ->    line(splines[i]))  
#    
#    oldSplines = splines
#    
#    return
#    
#    
#    
#    svg.selectAll("g.node")
#                    .remove()
#    
#    
#    
#    labels = svg.selectAll("g.node")
#        .data(nodes)
#        .transition()
#        .duration(1000)
#            .attr("transform", (d) -> "rotate(#{(d.x - 90 + rotationOffset)%360})translate(#{d.y})")
#       
#            .select("text")
#                .attr("dx", (d) -> (if ((d.x + rotationOffset)%360) < 180 then 8 else -8))
#                .attr("text-anchor", (d) -> (if ((d.x + rotationOffset)%360) < 180 then "start" else "end"))
#                .attr("transform", (d) -> (if ((d.x + rotationOffset)%360) < 180 then null else "rotate(180)"))
#
#    lastLabels = labels
#    if stationaryNodeName?
#        transformAttr = $("#node-#{stationaryNodeName.split('$').join('\\$')}").attr("transform")
#        angleAfter = (transformAttr.split(")")[0]).split("(")[1]
#        #first bit returns "rotate(80.656211321", second bit returns the angle
#        
#        angleChange = angleBefore - angleAfter
#        rotateDiagram(angleChange)
