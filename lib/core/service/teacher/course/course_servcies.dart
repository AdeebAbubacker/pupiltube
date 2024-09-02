import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/models/courses/courses_model.dart';
import 'package:uuid/uuid.dart';

class CourseServcies {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<void> createAssessment() async {
    final String assessmentId = const Uuid().v4();

    // Define the assessment map with an array of maps in the "data" field
    final Map<String, dynamic> assessment = {
      "classId": "asasr",
      "updatedAt": Timestamp.now(),
      "data": [
        {
          "title": "Social Science (Chapter 1)",
          "subtitle": "Our Government",
          "content":
              "This chapter introduces the basics of our government, including its formation and structure. It covers how laws are made and the roles of different branches of government. Students will learn about the responsibilities of elected officials and the importance of civic participation. The chapter also explores historical events that shaped the government system. Key terms such as democracy, constitution, and federalism are explained in detail.",
          "videoUrlId": "LMOTSUpR3sQ",
        },
        {
          "title": "Social Science (Chapter 2)",
          "subtitle": "Our Industries",
          "content":
              "This chapter provides an overview of the major industries that drive our economy, such as agriculture, manufacturing, and services. It discusses the role of industries in job creation and economic growth. The chapter highlights the challenges faced by different sectors, including resource management and environmental impact. Students will explore case studies of key industries and understand their global competitiveness. The importance of sustainable practices in industries is also emphasized.",
          "videoUrlId": "MUTYODZlOXE",
        },
        {
          "title": "Social Science (Chapter 3)",
          "subtitle": "Water Resources",
          "content":
              "This chapter explores the significance of water as a vital natural resource. It covers the distribution of water bodies across the country and the need for their conservation. Students will learn about water management techniques and the impact of water scarcity on communities. The chapter also examines the role of government policies in water resource management. Case studies highlight successful water conservation efforts in various regions.",
          "videoUrlId": "SigtPs5t9uE",
        },
        {
          "title": "Social Science (Chapter 4)",
          "subtitle": "Southern Plateau",
          "content":
              "This chapter describes the geography and natural resources of the Southern Plateau. It includes the various states covered by this region and their economic activities. The chapter highlights the cultural diversity and historical significance of the Southern Plateau. Students will learn about the major rivers, mountains, and mineral resources found in this area. The impact of human activities on the environment is also discussed.",
          "videoUrlId": "g9nUa1OuTmo",
        },
        {
          "title": "Social Science (Chapter 5)",
          "subtitle": "Art, Architecture and Culture",
          "content":
              "This chapter delves into the rich cultural heritage of India, focusing on art and architecture. It covers the evolution of various art forms and their significance in society. Students will explore famous monuments, sculptures, and paintings from different periods. The chapter emphasizes the role of culture in shaping national identity. Festivals, music, and dance forms are also discussed to provide a holistic view of India’s cultural landscape.",
          "videoUrlId": "Wr9dp8Dwwk4",
        },
        {
          "title": "Social Science (Chapter 6)",
          "subtitle": "Our Rights and Duties",
          "content":
              "This chapter educates students about the fundamental rights and duties of citizens as outlined in the Constitution. It explains the importance of each right and the responsibilities that come with them. The chapter also covers the role of the judiciary in protecting citizens’ rights. Real-life scenarios are presented to help students understand the practical implications of rights and duties. Discussions include current events that highlight the need for civic awareness.",
          "videoUrlId": "CjiGEY7gUvE",
        },
        {
          "title": "Social Science (Chapter 7)",
          "subtitle": "Agriculture",
          "content":
              "This chapter focuses on the agriculture sector, which is the backbone of India’s economy. It covers different types of farming, major crops grown, and agricultural techniques. The chapter discusses the challenges faced by farmers, including climate change, irrigation issues, and market access. Students will learn about government schemes aimed at supporting the agricultural sector. Case studies of successful farming communities are also included.",
          "videoUrlId": "mxgOgxI8V9k",
        },
        {
          "title": "Social Science (Chapter 8)",
          "subtitle": "Mineral Resources",
          "content":
              "This chapter covers the mineral wealth of India, including major minerals like coal, iron ore, and bauxite. It explains how these resources are extracted and their economic importance. The chapter also discusses the environmental impact of mining and the need for sustainable practices. Students will learn about the distribution of mineral resources across the country. Challenges in the mining industry, such as illegal mining and resource depletion, are highlighted.",
          "videoUrlId": "oYYf4GU3KKM",
        },
        {
          "title": "Social Science (Chapter 9)",
          "subtitle": "Coastal Plains and Islands",
          "content":
              "This chapter describes India’s coastal plains and islands, focusing on their unique geography and biodiversity. It covers the major ports, fishing industries, and tourism opportunities. The chapter highlights the cultural and economic significance of coastal regions. Students will learn about the challenges faced by these areas, including coastal erosion and pollution. Conservation efforts to protect marine life and ecosystems are also discussed.",
          "videoUrlId": "l6dAJ5eHyP4",
        },
        {
          "title": "Social Science (Chapter 10)",
          "subtitle": "Soil",
          "content":
              "This chapter explores the different types of soil found in India and their importance for agriculture. It covers soil formation, properties, and the factors affecting soil fertility. The chapter discusses soil conservation techniques to prevent degradation and erosion. Students will learn about the role of soil in supporting plant life and maintaining ecological balance. The impact of human activities on soil quality is also examined.",
          "videoUrlId": "e0882VcQFfw",
        },
        {
          "title": "Social Science (Chapter 11)",
          "subtitle": "The Northern Plains",
          "content":
              "This chapter provides an overview of the Northern Plains, which are among the most fertile regions in India. It covers the major rivers that support agriculture in this area. The chapter highlights the cultural and historical significance of the Northern Plains. Students will learn about the economic activities, including farming and trade, that thrive in this region. Challenges such as flooding and urbanization are also discussed.",
          "videoUrlId": "88vMeCd3OY4",
        },
        {
          "title": "Social Science (Chapter 12)",
          "subtitle": "Forests and Wildlife of India",
          "content":
              "This chapter focuses on the diverse forests and wildlife found across India. It covers the major types of forests, such as tropical, deciduous, and evergreen, and their ecological importance. The chapter discusses the threats to wildlife, including habitat loss and poaching. Students will learn about conservation efforts, national parks, and wildlife sanctuaries. The role of communities in protecting forests and wildlife is also emphasized.",
          "videoUrlId": "una2ME8KpRs",
        },
        {
          "title": "Social Science (Chapter 13)",
          "subtitle": "Our Country India",
          "content":
              "This chapter provides a comprehensive overview of India, covering its geographical diversity, cultural heritage, and economic landscape. It highlights the unity in diversity that defines the nation. The chapter discusses the different states and union territories, their unique features, and contributions to the country. Students will learn about the challenges and opportunities that India faces as a developing nation. Key aspects of India’s global presence are also covered.",
          "videoUrlId": "D87MbrOjfas",
        },
        {
          "title": "Social Science (Chapter 14)",
          "subtitle": "The Northern Mountains",
          "content":
              "This chapter describes the Northern Mountains, including the majestic Himalayas and their impact on climate, culture, and economy. It covers the significance of mountain passes, valleys, and rivers originating from this region. The chapter highlights the flora and fauna unique to these mountains. Students will learn about the lifestyle of people living in the mountainous regions and the importance of these mountains in Indian mythology and culture.",
          "videoUrlId": "6dNBhOr59xM",
        },
      ],
    };

    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print('No internet connection');
        return;
      }

      // Save the assessment to Firestore
      await _firestore
          .collection('courses')
          .doc("KQdaEMlaQinmVfAr2h05")
          .set(assessment);
      print('Assessment created successfully');

      // Create assessment notification
      try {
        print("Notification triggered");
      } catch (e) {
        print("Notification error: ${e.toString()}");
      }
    } catch (e) {
      print("Error creating assessment: ${e.toString()}");
    }
  }

  Future<Either<int, CoursesModel>> fetchMyCourses(String docId) async {
    try {
      // Check for internet connection
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      // Fetch assessments from Firestore
      final querySnapshot = await _firestore
          .collection('courses')
          .where('classId', isEqualTo: "asasr")
          .get();

      // Check if any documents are returned
      if (querySnapshot.docs.isEmpty) {
        return const Left(2); // No documents found
      }

      // Assuming you want the first document if there are multiple
      final docSnapshot = querySnapshot.docs.first;
      final data = docSnapshot.data();

      // Convert data to CoursesModel
      final createdQuestionBank = CoursesModel.fromMap(data);

      print(createdQuestionBank.data?[12].videoUrlId);
      return Right(createdQuestionBank);
    } catch (e) {
      print('Error fetching courses: $e');
      return const Left(1); // General error
    }
  }
}
