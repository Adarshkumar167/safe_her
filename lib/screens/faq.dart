import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final questions = [
    {
      'question': 'What is SafeHer?',
      'answer':
          'SafeHer is an app that is connected with a safety device designed to enhance women\'s safety. It allows users to access location information, images, audio, and other SOS settings, such as sound on/off and changing mobile numbers.'
    },
    {
      'question': 'How does SafeHer work?',
      'answer':
          'SafeHer works by connecting the user\'s mobile device with a safety device. When the user presses the panic button on the safety device or activates an SOS alert, the app sends an alert message to pre-programmed contacts with the user\'s location, audio, and images. The app also allows users to manage their settings, such as changing mobile numbers and sound settings.'
    },
    {
      'question': 'Is SafeHer safe to use?',
      'answer':
          'Yes, SafeHer is designed to be safe to use and protect user privacy. The app uses encryption technology to secure user data and allows users to control their settings, including the access to location information, audio, and images.'
    },
    {
      'question': 'Can men also use SafeHer?',
      'answer':
          'Yes, men can also use SafeHer for their personal safety. However, the app is designed with women\'s safety concerns in mind and may have features specific to their needs.'
    },
    {
      'question': 'Is it necessary to have a safety device to use SafeHer?',
      'answer':
          'Yes, a safety device is required to use SafeHer. The app is designed to work in tandem with the safety device to provide quick response in emergencies.'
    },
    {
      'question': 'Can users customize their settings in SafeHer?',
      'answer':
          'Yes, users can customize their settings in SafeHer, including sound settings, changing mobile numbers, and managing the contacts to receive the alert messages.'
    },
    {
      'question':
          'How effective is SafeHer in preventing crimes against women?',
      'answer':
          'While SafeHer cannot guarantee complete protection from all types of crimes, it can be an effective tool in deterring attackers and providing quick response in emergencies. It is important to remember that the app is just one aspect of personal safety, and women should also be aware of their surroundings and take other precautionary measures to stay safe.'
    },
    {
      'question': 'Is SafeHer available globally?',
      'answer':
          'SafeHer is currently available in certain regions and countries. It is important to check the availability in your region before downloading the app.'
    },
    {
      'question': 'How can users contact customer support for SafeHer?',
      'answer':
          'Users can contact customer support for SafeHer by sending an email to the support team or through the app\'s customer service portal.'
    },
    {
      'question':
          'What are some helpline numbers that women can call in case of emergency?',
      'answer':
          'There are several helpline numbers that women can call in case of emergency, such as:'
    },
    {
      'question':
          'What are some precautions that women can take to ensure their safety?',
      'answer':
          'Some precautions that women can take to ensure their safety are:'

// Be aware of your surroundings and avoid isolated areas.
// Always inform someone of your whereabouts and travel plans.
// Carry a women safety device or self-defense tool.
// Keep emergency numbers on speed dial.
// Trust your instincts and take action if you feel threatened or uncomfortable.
// Avoid sharing personal information with strangers, especially on social media.
// Be cautious when accepting drinks or food from unknown persons.
// Take self-defense classes to learn basic techniques for protecting yourself.'
    },
    {
      'question': 'What should women do if they experience domestic violence?',
      'answer':
          'If women experience domestic violence, they should seek help immediately by calling the police or helpline numbers such as Women\'s Helpline (181) or Domestic Violence Helpline (181). It is also recommended to reach out to a trusted friend or family member for support and seek professional help from a counselor or therapist.'
    },
    {
      'question':
          'What legal options are available to women who have experienced sexual harassment or assault?',
      'answer':
          'Women who have experienced sexual harassment or assault can seek legal recourse by filing a complaint with the police, filing a case in court, or reaching out to organizations such as the National Commission for Women or local NGOs that offer legal support and counseling services. It is important to document any incidents and gather evidence to support your case.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index]['question'];
                final answer = questions[index]['answer'];
                return ExpansionTile(
                  iconColor: const Color.fromRGBO(37, 43, 57, 1),
                  title: Text(
                    question!,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(37, 43, 57, 1),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        answer!,
                        style: const TextStyle(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ],
                );
              },
            )));
  }
}
