import rclpy
import subprocess
from rclpy.node import Node

from std_msgs.msg import String


class SubscribeTransfer(Node):

    def __init__(self):
        super().__init__('subscribe_transfer')
        self.subscription = self.create_subscription(
            String,
            'commitCommand',
            self.listener_callback,
            10)
        self.subscription  # prevent unused variable warning

    def listener_callback(self, msg):
        self.get_logger().info('I heard: "%s"' % msg.data)
        rc = subprocess.call("/home/dfolse/SPIDER/Scripts/uploadData.sh")



def main(args=None):
    rclpy.init(args=args)

    subscribe_transfer = SubscribeTransfer()

    rclpy.spin(subscribe_transfer)

    # Destroy the node explicitly
    # (optional - otherwise it will be done automatically
    # when the garbage collector destroys the node object)
    subscribe_transfer.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
