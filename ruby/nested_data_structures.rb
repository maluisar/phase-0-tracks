gym = {
 pilates: ["reformer","bozu ball","springs"],
 yoga: ["mats","blocks","blankets"],
 cross_training: ["weights, jumping_rope, mats"],
 machine_room: ["bike","eliptic","treadmill"]
}

p gym [:yoga][0]

gym [:machine_room] << "bench-press"

p gym [:machine_room]