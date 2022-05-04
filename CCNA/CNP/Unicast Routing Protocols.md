-> goal of network layer => move datagram from source to destination
-> one destination = unicast routing

-> routers need forwarding tables 
-> routers need forwarding tables to pass packets around

-> distance vector routing -> RIP(Routing Information Protocol)
-> link-state routing -> OSPF(Open Shortest Path First)
-> path-vector routing

-> Internet = internetwork of networks connected by routers
   -> datagram passes through many routers before reaching it's destination
   
-> Internet is divided into autonomous systems (AS) = group of networks and routers under the authority of a single administration
-> Routing inside an autonomous sytem = intra-domain routing = distance-vector(RIP) and link-state(OSPF)
-> Routing between autonomous systems = inter-domain routing = path vector(BGP)

-> Bellman Ford algorithm
-> Distance Vector Routing Algorithm
-> Count to infinity

**Routing tables:**
-> static = manual entries
-> dynamic = updated automatically

Routing protocols = created for dynamic routing tables
-> combo of rules and procedures that allow routers to exchange information
-> can be interior(intradomain routing) or exterior(interdomain routing)

**Distance Vector Routing:**
-> each node constructs a 1D array containing the distance to all other nodes and distributes that vector to immediate neighbours
-> starting assumption is that each node knows the cost of the link to it's immediate neighbours

-> uses Bellman Ford algorithm to find shortest path between routers = creates result synchronously
-> tweaks bellman ford a little 
-> each router executes Bellman ford algo

Problem with distance vector routing:
-> good news propogates quickly, but bad news doesn't
-> several updates before a cost for a broken link is recorded = COUNT TO INFINITY

Two node instability
-> if one node fails, packets keep bouncing between each other, constantly updating ach other = 2-node loop problem
Solutions:
 -> define infinity as 16
      -> disadvantage = can't be used in large systems where hop count might be > 15
 -> split horizon
    -> each node sends only part of it's table to the other nodes
    
-> split horizon and poison reverse

3-node instability
-> does not have a solution

**Routing Information Protocol:**
-> oldest distance-vector routing protocol -> employs hop-count as routing metric
-> hop-count = 0 -> directly connected
-> hop-count = 16 -> unreachable
-> prevents routing loops by implementing a limit on number of hops allowed in a path from source to destination
-> infinity = 16
-> RIP Versions = v1,v2,ng(new generation)
-> timers
   -> update timer
   -> invalid timer(expiration timer)
   -> flush timer
   -> hold-down timer
-> intradomain routing protocol based on distance vector routing

Limitations of RIP
-> county to infinity
-> slow convergence

**Link-State Routing:**
  -> each node has entire network topology
  -> can use Djikstra algorithm
  -> Steps to creating a routing table:
      1. Create state of link by each node = link state packet or LSP
      2. Disseminate LSP to every other router by flooding
      3. Form the shortest path tree for every node
      4. Calculate routing table based on shortest path tree
   ->  
   
   
Link State -> complete topology -> flooding

**Difference between LSR and DVR**
Features: topology : communication type : convergence : routing loops : algorithm : metric : update : scalability : protocol
LSR => complete : flooding : faster(only neighbour updates) : less : Djikstra's algo : cost : triggered, partial : highly scalable : OSPF
DVR => local : exchange(neighbours only) : slower(entire table is shared) : more(count to infinity) : Bellman Ford : hop-count : frequent, periodic : limited : RIP

**OSPF** (Open Shortest Path First)
-> routing protocol for IP networks
-> link state routing algorithm that falls in the group of interior gateway protocol, operating 
within a single autonomous system
-> uses cost(bandwidth,delay and load) as metric
-> better than RIP(uses hop count as metric)
-> reliable for large and complex networks
-> maintains link-state databases
-> state of a given route in the network is the cost and OSPF algorithm allows every router 
to calculate route cost to any destination

-> router interface with OSPF will advertise it's link cost to neighbouring routers through multicast, known as hello procedure

