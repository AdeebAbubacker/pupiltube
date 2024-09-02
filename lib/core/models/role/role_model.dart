
class RoleSModel {
  final String uid;
  final String email;
  final String
      name; // E.g., 'assessment_created', 'feedback_received', 'review_added'
  final int
      role; // E.g., 'assessment_created', 'feedback_received', 'review_added'

  final String className;
  final String classId;
  RoleSModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.role,
    required this.className,
    required this.classId,
  });

  factory RoleSModel.fromMap(Map<String, dynamic> map) {
    return RoleSModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      role: map['role'] ?? 3,
      className: map['className'] ?? '',
      classId: map['classId'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'role': role,
      'className': className,
      'uid': uid,
      'classId':classId,
    };
  }
}
