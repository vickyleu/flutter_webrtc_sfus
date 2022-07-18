import 'package:get_boilerplate/src/pages/home/home_page.dart';
import 'package:socket_io_client/src/socket.dart';

class SocketEmit {
  final Socket? socket;
  SocketEmit(this.socket);

  sendSdpForBroadcase(String sdp) {
    socket?.emit('SEND-CSS', {'sdp': sdp});
  }

  sendSdpForReceive(String sdp, String socketId) {
    socket?.emit('RECEIVE-CSS', {
      'sdp': sdp,
      'socketId': socketId,
    });
  }
}
