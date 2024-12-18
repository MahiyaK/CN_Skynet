//import inet.node.inet.WirelessHost;
//import inet.physicallayer.wireless.common.radio.packetlevel.IRadioMedium;
//import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
//import inet.visualizer.contract.IIntegratedVisualizer;
//
//network WirelessMesh
//{
//    parameters:
//        int rows @prompt("Enter number of rows for the grid") = 3;
//        int cols @prompt("Enter number of columns for the grid") = 3;
//        @display("bgb=800,600;bgg=100,1,grey95");
//
//    submodules:
//        radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium {
//            @display("p=580,275");
//        }
//        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
//            @display("p=700,400");
//        }
//        configurator: Ipv4NetworkConfigurator {
//            @display("p=700,500");
//        }
//        node[rows*cols]: WirelessHost {  // Use WirelessHost as the node type
//            parameters:
//                @display("p=100+index%cols*150,100+index/cols*150");
//        }
//
//    connections allowunconnected:
//        // Create vertical connections
//        for i=0..rows-2, for j=0..cols-1 {
//            node[i*cols+j].wlan[0] <--> radioMedium <--> node[(i+1)*cols+j].wlan[0];
//        }
//
//        // Create horizontal connections
//        for i=0..rows-1, for j=0..cols-2 {
//            node[i*cols+j].wlan[0] <--> radioMedium <--> node[i*cols+(j+1)].wlan[0];
//        }
//}
