//
//import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
//import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
//import inet.physicallayer.wireless.unitdisk.UnitDiskRadioMedium;
//import inet.node.inet.WirelessHost;
//import inet.routing.aodv.Aodv;
//import inet.mobility.single.RandomWaypointMobility;
//
//simple DTNProtocol {
//    parameters:
//        int storageCapacity = 10;
//        int maxRetries = 3;
//
//    gates:
//        input upperLayerIn;
//        output upperLayerOut;
//       
//}
//
//module CustomMeshnode extends WirelessHost {
//    parameters:
//        @display("bgb=100,100;bgg=grey95");
//
//    gates:
//        input upperLayerIn; // For external connections
//        output upperLayerOut; // For external connections
//
//    submodules:
//        dtnProtocol: DTNProtocol {
//            @display("p=150,150");
//        }
//        aodv: Aodv {
//            @display("p=200,100");
//        }
//
//    connections:
//        // Internal connections within the node
//        upperLayerOut --> aodv.ipIn;
//        aodv.ipOut --> upperLayerIn;
//        upperLayerOut --> dtnProtocol.upperLayerIn;
//        dtnProtocol.upperLayerOut --> upperLayerIn;
//}
//
//network Meshetwork {
//    parameters:
//        @display("bgb=602.784,911.23206;bgg=100,1,grey95");
//
//    submodules:
//        hostA: CustomMeshNode {
//            @display("p=382.46997,453.83997;");
//        }
//        hostB: CustomMeshNode {
//            @display("p=151.89,499.58997;");
//        }
//        hostC: CustomMeshNode {
//            @display("p=80.64,284.256;");
//        }
//        hostD: CustomMeshNode {
//            @display("p=230.57999,76.85999;");
//        }
//
//        radioMedium: UnitDiskRadioMedium {
//            @display("p=382.46997,281.81998");
//        }
//
//    connections:
//    // Internal connections for the mesh
//    hostA.upperLayerOut --> hostB.upperLayerIn;
//    hostB.upperLayerOut --> hostC.upperLayerIn;
//    hostC.upperLayerOut --> hostD.upperLayerIn;
//    hostD.upperLayerOut --> hostA.upperLayerIn;
//}
//    





//import inet.node.common.ApplicationLayer;
//import inet.node.common.NetworkLayer;
//import inet.node.common.LinkLayer;
//import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
//import inet.physicallayer.wireless.common.Radio;
//import inet.physicallayer.wireless.common.RadioMedium;
//import inet.mobility.single.RandomWaypointMobility;
//import inet.routing.aodv.Aodv;
//
//simple DTNProtocol {
//    parameters:
//        int storageCapacity = 10;
//        int maxRetries = 3;
//    gates:
//        input upperLayerIn;
//        output upperLayerOut;
//        input upperLayerIn;
//        output upperLayerOut;
//}
//
//module MeshNode {
//    submodules:
//        application: ApplicationLayer {
//            @display("p=100,100");
//        }
//        networkLayer: NetworkLayer {
//            @display("p=100,150");
//        }
//        linkLayer: LinkLayer {
//            @display("p=100,200");
//        }
//        wlan: Radio {
//            @display("p=100,250");
//        }
//        mobility: RandomWaypointMobility {
//            @display("p=100,300");
//        }
//    connections allowunconnected:
//        application.upperLayerOut --> networkLayer.upperLayerIn;
//        networkLayer.upperLayerOut --> linkLayer.upperLayerIn;
//        linkLayer.upperLayerOut --> wlan.upperLayerIn;
//        wlan.upperLayerOut --> linkLayer.upperLayerIn;
//        linkLayer.upperLayerOut --> networkLayer.upperLayerIn;
//        networkLayer.upperLayerOut --> application.upperLayerIn;
//}
//
//network MeshNetwork {
//    submodules:
//        hostA: MeshNode {
//            @display("p=100,100");
//        }
//        hostB: MeshNode {
//            @display("p=300,100");
//        }
//        hostC: MeshNode {
//            @display("p=100,300");
//        }
//        hostD: MeshNode {
//            @display("p=300,300");
//        }
//        radioMedium: RadioMedium {
//            @display("p=200,200");
//        }
//        routing: Aodv {
//            @display("p=150,150");
//        }
//        configurator: Ipv4NetworkConfigurator {
//            @display("p=250,150");
//        }
//    connections allowunconnected:
//        // Connect nodes' radios to the radio medium
//        hostA.wlan.radioIn <--> radioMedium.radioIn++;
//        hostB.wlan.radioIn <--> radioMedium.radioIn++;
//        hostC.wlan.radioIn <--> radioMedium.radioIn++;
//        hostD.wlan.radioIn <--> radioMedium.radioIn++;
//}
