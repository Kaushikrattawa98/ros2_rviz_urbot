# ROS 2 Jazzy Setup for `ros2_rviz_urbot`

This guide provides step-by-step instructions to set up and run the **ros2_rviz_urbot** project using **ROS 2 Jazzy**. It covers repository creation, workspace building, dependency installation, and launching key tools like Gazebo, RViz, and MoveIt.

---

## 1. Prerequisites

### Ensure ROS 2 Jazzy Is Installed
Confirm that **ROS 2 Jazzy** is installed on your system. If not, refer to the [official ROS 2 Jazzy installation guide](https://docs.ros.org/en/jazzy/Installation.html).

### Source ROS 2 Jazzy
Before proceeding, source the ROS 2 Jazzy setup file in every terminal session:

```bash
source /opt/ros/jazzy/setup.bash
```

---

## 2. Clone the Repository

First, create a directory for the project, navigate into it, and then clone the repository:

```bash
mkdir ros2_rviz_urbot
cd ros2_rviz_urbot
git clone https://github.com/Kaushikrattawa98/ros2_rviz_urbot.git
```

---

## 3. Install Dependencies

### Check for Missing Packages
If you encounter missing CMake files or package errors (e.g., `gripper_controllers`), verify the package using:

```bash
rospack list | grep gripper_controllers
```

If not found, install the missing package:

```bash
sudo apt-get install ros-jazzy-gripper-controllers
```

### Use `rosdep` for All Dependencies
To install all required dependencies, run:

```bash
rosdep install --from-paths src --ignore-src -r -y
```

---

## 4. Build the Workspace

Navigate to the project directory and build it using `colcon`:

```bash
cd ros2_rviz_urbot
colcon build
```

---

## 5. Source the Workspace

After building, source the workspace setup file to update environment variables:

```bash
source ~/ros2_rviz_urbot/install/setup.bash
```

---

## 6. Launch the Project

You can launch Gazebo, RViz, and MoveIt using either the launch command or a provided bash script:

### Option 1: Launch Command

```bash
ros2 launch gazebo_custom_cobot custom_cobot.gazebo.launch.py
```

### Option 2: Bash Script

```bash
bash ~/ros2_ws/src/mycobot_ros2/mycobot_bringup/scripts/mycobot_280_gazebo.sh
```

#### Gazebo Simulation

![Gazebo Simulation](attachment:/mnt/data/Screenshot%20from%202025-01-08%2021-46-26.png)

#### RViz Visualization

![RViz Visualization](attachment:/mnt/data/Screenshot%20from%202025-01-08%2021-29-05.png)

---

## Troubleshooting

- **Missing Dependencies**: Re-run `rosdep install` and check for missing packages.
- **Build Errors**: Ensure all dependencies are installed and the correct ROS 2 environment is sourced.
- **Environment Variables**: Double-check that the workspace setup file is sourced in the terminal.

---

## Contributors

- Kaushik Rattawa ([GitHub Profile](https://github.com/Kaushikrattawa98))
- Mehul Jain ([GitHub Profile](https://github.com/Mj51296))

By following these steps, you can successfully set up and run the `ros2_rviz_urbot` project. For additional support, refer to the [ROS 2 documentation](https://docs.ros.org/) or raise issues in the project repository.

