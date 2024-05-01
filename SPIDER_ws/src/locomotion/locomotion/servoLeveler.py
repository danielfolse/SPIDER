from locomotion.MockDoFSensor import MockDoFSensor
import adafruit_bno055
import math
class ServoLeveler:
    def __init__(self, address, simSensor):
        self.simSensor = simSensor
        if(simSensor is False):
            self.sensor_9DoF = adafruit_bno055.BNO055_I2C(address=address)
        else: 
            self.sensor_9DoF = MockDoFSensor()
    def checkEuler(self):
        #Read orientation values
        heading, pitch, roll = self.sensor_9DoF.euler
        _ ,_ , heading = self.calibrate_orientation()
        return (heading, pitch, roll)
    def calibrate_orientation(self):
        
        # Read quaternion angles from the sensor
        quat_x, quat_y, quat_z, quat_w = self.sensor_9DoF.quaternion
        euler_yaw, euler_pitch, euler_roll = self.sensor_9DoF.euler
        # Calculate heading angle using magnetometer data
        if self.simSensor is True:

            mag_x, mag_y, mag_z = self.sensor_9DoF.magnetic
            heading_rad = math.atan2(mag_y, mag_x)
            heading_deg = math.degrees(heading_rad)

            # Determine offset to calibrate for north as zero
            offset_deg = -heading_deg  # Adjust the sign as needed

            # Apply offset to the yaw angle (z-axis rotation)
            calibrated_euler_yaw = euler_yaw + offset_deg

            # Apply offset to quaternion angles
            calibrated_quat_z = quat_z * math.cos(math.radians(offset_deg / 2))
            calibrated_quat_w = quat_w * math.sin(math.radians(offset_deg / 2))

            return calibrated_quat_z, calibrated_quat_w, calibrated_euler_yaw
        else:
            return quat_z, quat_w, euler_yaw
