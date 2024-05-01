import rclpy
from std_msgs.msg import String
from rclpy.node import Node
from spider_interfaces.msg import LocCommands
from spider_interfaces.srv import LocService
from locomotion.locomotionController import LocomotionController


class LocomotionService(Node):

    def __init__(self):
        super().__init__('locomotion_service')

        self.declare_parameter('sim_imu', False)
        self.declare_parameter('sim_driver', False)

        self.sim_imu = self.get_parameter('sim_imu').value
        self.sim_gps = self.get_parameter('sim_driver').value

        self.move_type = "stop"
        self.move_amount = 1
        self.srv = self.create_service(LocService, 'LocService', self.loc_service_callback)
        self.lc = LocomotionController(0x40,0x43,0x41,0x42,0x39, True, True, False)

    def loc_service_callback(self, request, response):
        self.get_logger().info('Incoming request\nmove type: %s move amount: %d delta angle %f' % (request.move_type.data, request.move_amount, request.delta_angle))
        self.lc.serviceSelect(request.move_type.data, request.move_amount, request.delta_angle)
        response.status = String()
        response.status.data = 'Great Success!'
        return response


def main(args=None):
    rclpy.init(args=args)

    locomotion_service = LocomotionService()

    rclpy.spin(locomotion_service)

    # Destroy the node explicitly
    # (optional - otherwise it will be done automatically
    # when the garbage collector destroys the node object)
    locomotion_service.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()