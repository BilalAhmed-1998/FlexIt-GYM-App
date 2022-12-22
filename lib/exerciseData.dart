import 'package:flexit_gym/data.dart';

import 'Classes/Exercise.dart';

List<Exercise> exercisesList = [
  Exercise(
    url: 'https://www.youtube.com/watch?v=rxD321l2svE',
    title: 'Barbell Bench Press',
    img: 'assets/images/barbell bench press.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions: "Step 1: Get Into Position"
        "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
        "Step 2: Grip The Bar"
        "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
        "Step 3: Brace Your Body"
        "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
        "Step 4: Lower The Weight"
        "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
        "Step 5: Press The Weight Back Up"
        "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
    tips:
        "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
        " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
        " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
        " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
        " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
  ),
  Exercise(
    url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
    title: 'Squats',
    img: 'assets/images/squats.png',
    equipments: equipments,
    strengthLevel: 1,
    muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions: "Step 1: Stand straight with feet hip-width apart."
        "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
        "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
        "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
        "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
        "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
    tips:
        "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
        "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
        "Stretch your arms out in front of you for added balance during squats.",
  ),
  Exercise(
    title: 'Dips',
    url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
    img: 'assets/images/Calisthenics.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Triceps'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
        "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
        "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
        "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
    tips:
        "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
        "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
        "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
  ),
  Exercise(
    title: 'Machine Fly',
    url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
    img: 'assets/images/machinefly.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Pectoralis'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
        "  2.	Select the weight from the rack."
        "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
        "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
        "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
        "  6.	Repeat for the desired number of reps.",
    tips:
        "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
        "   2.	Make sure not to extend your torso forward when squeezing the weight up."
        "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
        "   4.	Keep your upper arms parallel to the floor.",
  ),
  Exercise(
    title: 'Plank',
    url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
    img: 'assets/images/plank.png',
    equipments: equipments,
    strengthLevel: 4,
    muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
        "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
        "3. Hold for as long as possible.",
    tips: "1.	Make sure to maintain a neutral spine and neck."
        "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
        "3.	Don't sink down into your shoulders."
        "4.	Breathe slow and steady; don't hold your breath.",
  ),
  Exercise(
    title: 'Lunges',
    url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
    img: 'assets/images/lunges.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "1.	Start in a standing position with your feet hip-width apart."
        " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
        " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
        " 4.	Then, forcefully push off from your front leg to return to the starting position.",
    tips:
        "•	Your lead knee should not go past your toes as you lower toward the ground."
        "•	Your rear knee should not touch the ground."
        "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
        "•	Contract your abdominals during the movement to help keep your trunk upright."
        "•	Your feet should stay hip-width apart during the landing and return.",
  ),
  Exercise(
    title: 'Push Ups',
    url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
    img: 'assets/images/pushup.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
        "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
        "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
        "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
    tips:
        "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
        "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
        "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
        "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
        "    •	Look down at the ground during this exercise to avoid straining your neck.",
  ),
  Exercise(
    title: 'Crunches',
    url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
    img: 'assets/images/crunches.png',
    equipments: equipments,
    strengthLevel: 3,
    muscleNames: ['Rectus', 'Abdominis'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
        "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
        "    3.	Inhale and return to the starting position.",
    tips:
        "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
        "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
        "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
  ),
  Exercise(
    title: 'Leg Press',
    url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
    img: 'assets/images/legpress.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions: "1.	Load the machine with the desired weight and take a seat."
        "  2.	Sit down and position your feet on the sled with a shoulder width stance."
        "  3.	Take a deep breath, extend your legs, and unlock the safeties."
        "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
        "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
        "  6.	Repeat for the desired number of repetitions.",
    tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
        "  2.	To emphasize the glutes more, push through the heels."
        "  3.	To emphasize the quads more, push through the balls of the feet."
        "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
        "  5.	Keep your low back flat against the pad throughout the movement."
        "  6.	Maintain a neutral head position by not looking up or down excessively."
        "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
        "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
  ),
  Exercise(
    title: 'Seated Cable Rows',
    url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
    img: 'assets/images/seated cable rows.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Back', 'Forearms'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
        "2.	Grasp the bar with a neutral grip (palms facing in)."
        "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
        "4.	Keeping your body in position, pull the handle into your stomach."
        "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
        "6.	Repeat for desired reps.",
    tips:
        "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
        "    •	Don't let your shoulders hunch over when your arms are extended."
        "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
        "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
  ),
  Exercise(
    title: 'Pull Ups',
    url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
    img: 'assets/images/pull up.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Biceps', 'Triceps', 'Chest'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions:
        "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
        "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
        "  3.	Make sure your hands are a little more than shoulder-width apart."
        "  4.	Press your shoulders down."
        "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
        "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
        "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
        "  8.	As you lower yourself back down, control your release to prevent injury.",
    tips: "Don’t flail your legs"
        "Keep your neck loose"
        "Train your biceps",
  ),
  Exercise(
    title: 'Dead Lift',
    url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
    img: 'assets/images/deadlift.png',
    equipments: equipments,
    strengthLevel: 2,
    muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
    bmiCategory: [
      'Underweight',
      'Intermediate Fitness',
      'Advance Fitness',
      'Calisthenics'
    ],
    instructions: "Step 1: Approach The Bar"
        "Step 2: Grip The Bar"
        "Step 3: Get Into Position"
        "Step 4: Brace Your Body"
        "Step 5: Lift The Weight"
        "Step 6: Lower The Weight"
        "Step 7: Reset Your Form",
    tips: "1. Work out your strongest stance"
        "2. Keep bar as close to your body as possible"
        "3. Check your form before you start the lift: neutral spine, chest up, knees out"
        "4. Complete the lift with a hinging movement — it’s not a squat"
        "5. Do not hyperextend at top of the movement",
  ),
];

Map<String, List<Exercise>> exercises = {
  'Monday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ],
  'Tuesday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ],
  'Wednesday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ],
  'Thursday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ],
  'Friday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ],
  'Saturday': [
    Exercise(
      url: 'https://www.youtube.com/watch?v=rxD321l2svE',
      title: 'Barbell Bench Press',
      img: 'assets/images/barbell bench press.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis', 'Anterior', 'Triceps', 'Biceps', 'Serratus.'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Get Into Position"
          "Lay faceup on a horizontal bench, with your butt on the bench and feet flat on the ground."
          "Step 2: Grip The Bar"
          "Grasp the barbell with an overhand grip wider than shoulder width (typically your ring fingers or pinky fingers will be placed on the rings)."
          "Step 3: Brace Your Body"
          "Tuck your shoulder blades behind your back – this will help keep your elbows from flaring out too much. Also, press on the floor hard with your feet – this will create a slight arch in your back, with your weight of your body resting on the back of your shoulders and your butt."
          "Step 4: Lower The Weight"
          "Inhale, lift up the bar and lower it to the center of your chest, in a controlled movement, maintaining pressure on your feet the entire time. Note that the bar should travel in a slight arc forward, in order to reach the center of your chest."
          "Step 5: Press The Weight Back Up"
          "Once the bar touches your chest, press the weight back up explosively, and exhale at the end of each rep.",
      tips:
      "If you are bench pressing alone, or without someone that you trust to spot you, you should consider using a power rack, instead of the standard bench press equipment."
          " When you bench press in a power rack, the safety arms will catch the barbell if you get stuck and are unable to complete a rep, serving as an important fail-safe when you’re lifting heavy weights"
          " To do this, simply position the safety arms slightly above your chest height when you are lying completely flat on the bench."
          " When you actually come to do your set, you’ll be slightly arching your back, which should position your chest just above the height of the safety pins"
          " This way, you’ll be able bench press with a full range of motion (barbell touching your chest for each rep), without the barbell banging into the safety pins – but if you are unable to complete a rep, you can just lie down completely flat on the bench and let the safety pins catch the weight",
    ),
    Exercise(
      url: 'https://www.youtube.com/watch?v=YaXPRqUwItQ',
      title: 'Squats',
      img: 'assets/images/squats.png',
      equipments: equipments,
      strengthLevel: 1,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Glutes', 'Abdominals', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Stand straight with feet hip-width apart."
          "Stand with your feet apart, slightly wider than your hips, and place your hands on your hips. "
          "Step 2: Tighten your stomach muscles. Standing up tall, gently pull your shoulders back, subtly lift your chest. On an exhale, try to pull your navel into your back to engage your deep abdominal muscles, which keep the spine and pelvis stable. "
          "Step 3: Lower down, as if sitting in an invisible chair.Bend your knees while keeping your upper body as straight as possible, as if you were lowering yourself onto a seat behind you. It is OK to allow your torso to tilt naturally as you squat, just don't collapse your chest or round your shoulders forward. If you're too erect, your hips cannot release properly and you'll put too much strain on your knees. Lower yourself as far as you can without leaning your upper body more than a few inches forward. Go as deep as you can comfortably. If you have knee issues, don't go deeper than a 90-degree angle, with your thighs parallel to the floor."
          "Step 4: Straighten your legs to lift back up.Straighten your legs, being careful not to lock your knees when you reach a standing position. "
          "Step 5: Repeat the movement. Repeat for three sets of 10 to 15 reps.",
      tips:
      "Don't allow your knees to go too far forward. Also, don't let your knees cave inward. Press them outward (almost as if you were pushing out an invisible resistance band) so they stay aligned with your feet as you squat down."
          "Keep your heels glued to the floor as you squat, and then think about driving them into the ground as you rise up to return to the starting position. This will put even more emphasis on your glutes."
          "Stretch your arms out in front of you for added balance during squats.",
    ),
    Exercise(
      title: 'Dips',
      url: 'https://www.youtube.com/watch?v=iEsDnKNejt0',
      img: 'assets/images/Calisthenics.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Triceps'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up"
          "1.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair."
          "2.	Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion."
          "3.	Push yourself back up slowly until your arms are almost straight, and repeat.",
      tips:
      "This exercise can stress the elbow and shoulder joints, so be careful if you have pain in these areas. It's also important to stop doing triceps dips if they create pain or worsen any current pain."
          "If you do have joint pain, you may want to use the push-up exercise to build strength in the triceps and shoulder instead. If you have shoulder problems, you may want to avoid this exercise altogether."
          "Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.",
    ),
    Exercise(
      title: 'Machine Fly',
      url: 'https://www.youtube.com/watch?v=Z57CtFmRMxA',
      img: 'assets/images/machinefly.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoralis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "  1.	You will use the chest fly machine for this workout. Adjust the height of the seat in such a way that when you sit, your arm pads should be at the level of your chest."
          "  2.	Select the weight from the rack."
          "  3.	Sit on the machine, grab the handle, and take the weight off. Here’s your starting position for the exercise."
          "  4.	Slowly bring your forearms together without letting them touch. Keep your body still."
          "  5.	Count till 3 and squeeze the chest muscles, then return to the starting position."
          "  6.	Repeat for the desired number of reps.",
      tips:
      "   1.	Keep your body still throughout the exercise, and do not touch the handles in the center."
          "   2.	Make sure not to extend your torso forward when squeezing the weight up."
          "   3.	Squeeze the chest at the top of the exercise to increase the intensity."
          "   4.	Keep your upper arms parallel to the floor.",
    ),
    Exercise(
      title: 'Plank',
      url: 'https://www.youtube.com/watch?v=kL_NJAkCQBg',
      img: 'assets/images/plank.png',
      equipments: equipments,
      strengthLevel: 4,
      muscleNames: ['Quadriceps', 'Gluteal', 'Buttocks'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1. Get into a push up position, with your elbows under your shoulders and your feet hip-width apart."
          "2. Bend your elbows and rest your weight on your forearms and on your toes, keeping your body in a straight line."
          "3. Hold for as long as possible.",
      tips: "1.	Make sure to maintain a neutral spine and neck."
          "2.	Flex every muscle in your body; with extra emphasis on your abs, lower back and glutes."
          "3.	Don't sink down into your shoulders."
          "4.	Breathe slow and steady; don't hold your breath.",
    ),
    Exercise(
      title: 'Lunges',
      url: 'https://www.youtube.com/watch?v=wrwwXE_x-pQ',
      img: 'assets/images/lunges.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Gluteus', 'Hamstrings', 'Quadriceps', 'Calves'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start in a standing position with your feet hip-width apart."
          " 2.	Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
          " 3.	Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
          " 4.	Then, forcefully push off from your front leg to return to the starting position.",
      tips:
      "•	Your lead knee should not go past your toes as you lower toward the ground."
          "•	Your rear knee should not touch the ground."
          "•	Aim to keep your hips symmetrical (at the same height, without dropping the hip of your back leg or hiking the hip of your front leg)."
          "•	Contract your abdominals during the movement to help keep your trunk upright."
          "•	Your feet should stay hip-width apart during the landing and return.",
    ),
    Exercise(
      title: 'Push Ups',
      url: 'https://www.youtube.com/watch?v=IODxDxX7oi4',
      img: 'assets/images/pushup.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Pectoral', 'Triceps', 'Shoulders'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "To do a push-up you are going to get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Once in this position, here is how you will do a push-up"
          "    1.	Contract your abs and tighten your core by pulling your belly button toward your spine."
          "    2.	Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle."
          "    3.	Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.",
      tips:
      "•	Perform pushups on a yoga mat or similar surface instead of a bare floor."
          "    •	Place a folded towel under your knees for extra cushioning when doing kneeling pushups."
          "    •	Place hands directly under shoulders with your fingers pointing directly in front of you to avoid wrist pain."
          "    •	Place palms flat on the floor versus cupping your hands. This avoids straining your hands."
          "    •	Look down at the ground during this exercise to avoid straining your neck.",
    ),
    Exercise(
      title: 'Crunches',
      url: 'https://www.youtube.com/watch?v=5ER5Of4MOPI',
      img: 'assets/images/crunches.png',
      equipments: equipments,
      strengthLevel: 3,
      muscleNames: ['Rectus', 'Abdominis'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale."
          "    2.	Exhale and lift your upper body, keeping your head and neck relaxed."
          "    3.	Inhale and return to the starting position.",
      tips:
      "•	Use your core to raise your upper body. If the movement comes from your head or neck, you’ll increase the risk for injury. "
          "    •	Move in a slow, controlled manner. Rapid movements won’t engage the right muscles."
          "    •	You can place your hands behind your head, but this can strain your neck. It’s best to try this hand placement after you’ve mastered the proper form.",
    ),
    Exercise(
      title: 'Leg Press',
      url: 'https://www.youtube.com/watch?v=4PYXEYqgCqk',
      img: 'assets/images/legpress.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Quadriceps', 'Hamstrings', 'Gluteus'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "1.	Load the machine with the desired weight and take a seat."
          "  2.	Sit down and position your feet on the sled with a shoulder width stance."
          "  3.	Take a deep breath, extend your legs, and unlock the safeties."
          "  4.	Lower the weight under control until the legs are roughly 45 degrees or slightly below."
          "  5.	Drive the weight back to the starting position by extending the knees but don’t forcefully lockout."
          "  6.	Repeat for the desired number of repetitions.",
      tips: "1.	To keep tension on the quads, keep the knees just shy of lockout."
          "  2.	To emphasize the glutes more, push through the heels."
          "  3.	To emphasize the quads more, push through the balls of the feet."
          "  4.	Don’t allow the hips to posteriorly tilt and roll off the pad."
          "  5.	Keep your low back flat against the pad throughout the movement."
          "  6.	Maintain a neutral head position by not looking up or down excessively."
          "  7.	Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary."
          "  8.	Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel.",
    ),
    Exercise(
      title: 'Seated Cable Rows',
      url: 'https://www.youtube.com/watch?v=sP_4vybjVJs',
      img: 'assets/images/seated cable rows.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Back', 'Forearms'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine."
          "2.	Grasp the bar with a neutral grip (palms facing in)."
          "3.	Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position."
          "4.	Keeping your body in position, pull the handle into your stomach."
          "5.	Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position."
          "6.	Repeat for desired reps.",
      tips:
      "•	Your back must remain straight at all times. Your torso should be kept still throughout the entire set."
          "    •	Don't let your shoulders hunch over when your arms are extended."
          "  •	Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back."
          "    •	Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.",
    ),
    Exercise(
      title: 'Pull Ups',
      url: 'https://www.youtube.com/watch?v=jFmCrA6fo78',
      img: 'assets/images/pull up.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Biceps', 'Triceps', 'Chest'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions:
      "1.	Start by positioning yourself under the center of a pullup bar. Reach up and grip the bar with both hands, palms facing away from you. Your arms should be extended straight overhead."
          "2.	Wrap your fingers over the bar and your thumb under the bar so that it’s almost touching your fingertips."
          "  3.	Make sure your hands are a little more than shoulder-width apart."
          "  4.	Press your shoulders down."
          "  5.	Bring your shoulder blades toward each other, as if you are trying to use them to squeeze a lemon."
          "  6.	Lift your feet completely off the floor, crossing your ankles. This is called a “dead hang.”"
          "  7.	Lift your chest slightly and pull. Draw your elbows down to your body until your chin is above the bar."
          "  8.	As you lower yourself back down, control your release to prevent injury.",
      tips: "Don’t flail your legs"
          "Keep your neck loose"
          "Train your biceps",
    ),
    Exercise(
      title: 'Dead Lift',
      url: 'https://www.youtube.com/watch?v=vRKDvt695pg',
      img: 'assets/images/deadlift.png',
      equipments: equipments,
      strengthLevel: 2,
      muscleNames: ['Hamstrings', 'Glutes', 'Quads', 'Back', 'Hips', 'Core'],
      bmiCategory: [
        'Underweight',
        'Intermediate Fitness',
        'Advance Fitness',
        'Calisthenics'
      ],
      instructions: "Step 1: Approach The Bar"
          "Step 2: Grip The Bar"
          "Step 3: Get Into Position"
          "Step 4: Brace Your Body"
          "Step 5: Lift The Weight"
          "Step 6: Lower The Weight"
          "Step 7: Reset Your Form",
      tips: "1. Work out your strongest stance"
          "2. Keep bar as close to your body as possible"
          "3. Check your form before you start the lift: neutral spine, chest up, knees out"
          "4. Complete the lift with a hinging movement — it’s not a squat"
          "5. Do not hyperextend at top of the movement",
    ),

  ]
};


Map <String,dynamic> databaseExerciseCheck = {
  'Monday' : [false,false,false,false,false,false,false,false,false,false,false,false],
  'Tuesday' : [false,false,false,false,false,false,false,false,false,false,false,false],
  'Wednesday' : [false,false,false,false,false,false,false,false,false,false,false,false],
  'Thursday' : [false,false,false,false,false,false,false,false,false,false,false,false],
  'Friday' : [false,false,false,false,false,false,false,false,false,false,false,false],
  'Saturday' : [false,false,false,false,false,false,false,false,false,false,false,false],
};





// Exercise(
// title: 'Lateral Lunges',
// img: 'assets/images/lateral lunges.png',
// equipments: equipments,
// strengthLevel: 2,
// muscleNames: ['Biceps', 'Triceps', 'Chest'],
// bmiCategory: [
// 'Underweight',
// 'Intermediate Fitness',
// 'Advance Fitness',
// 'Calisthenics'
// ],
// instructions: 'DESCRIPTION',
// tips: 'Descriptions',
// ),
