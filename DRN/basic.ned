import inet.node.contract.INetworkNode;
import inet.environment.common.PhysicalEnvironment;
network wirelessB extends wirelessA
{
    parameters:
        @display("bgb=650,500;bgg=100,1,grey95");
    submodules:
        hostR1: <default("WirelessHost")> like INetworkNode {
            @display("p=250,300");
        }
        hostR2: <default("WirelessHost")> like INetworkNode {
            @display("p=150,450");
        }
        hostR3: <default("WirelessHost")> like INetworkNode {
            @display("p=350,450");
        }
        
}


