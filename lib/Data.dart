
/* COPY PASTE HERE
{
          'title': '',
          'content': {
            'header': '',
            'description': '',
            'box': ''
          },
          'question': {
            'questionText': '',
            'answers': [
              {'answerText': '', 'score': false},
              {'answerText': '', 'score': false},
              {'answerText': '', 'score': false},
              {'answerText': '', 'score': false},
            ]
          }
        },
 */

class PythonData {
  static List<Map> pythonData = [
    {
      'title': 'Basic Concepts',
      'sections': [
        {
          'title': 'What is Python?',
          'content': {
            'header': 'Welcome to Python!',
            'description': 'Python is a high-level programming language, with applications in numerous areas, including web programming, scripting, scientific computing, and artificial intelligence.'
          },
          'question': {
            'questionText': 'What is Python?',
            'answers': [
              {'answerText': 'Developement environment', 'score': false},
              {'answerText': 'Programming language', 'score': true},
              {'answerText': 'Set of editing tools', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Your First Program',
          'content': {
            'header': 'Your First Program',
            'description': 'Let\'s start off by creating a short program that displays "Hello world!". In Python, we use the print statement to output text:',
            'box': '>>> print(\'Hello world!\')\nHello world!'
          },
          'question': {
            'questionText': 'What is the code that prints \'Hello World!\' ?',
            'answers': [
              {'answerText': 'output Hello World!', 'score': false},
              {'answerText': 'print(\'Hello World!\')', 'score': true},
              {'answerText': 'Print(\'Hello World!\')', 'score': false},
              {'answerText': 'Output Hello World!', 'score': false}
            ]
          },
          'status': false
        },
        {
          'title': 'Simple Operations',
          'content': {
            'header': 'Simple Operations',
            'description': 'Python has the capability of carrying out calculations. Enter a calculation directly into the Python console, and it will output the answer.',
            'box': '>>> 2 + 2\n4\n>>> 5 +4 - 3\n6'
          },
          'question': {
            'questionText': 'What does this code output? \n>>> 1 + 2 + 3',
            'answers': [
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': false},
              {'answerText': '5', 'score': false},
              {'answerText': '6', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Floats',
          'content': {
            'header': 'Floats',
            'description': 'Floats are used in Python to represent numbers that aren\'t integers. Some examples of numbers that are represented as floats are 0.5 and -7.8237591. They can be created directly by entering a number with a decimal point, or by using operations such as division on integers. Extra zeros at the number\'s end are ignored.',
            'box': '>>> 3/4\n0.75\n>>> 9.8765000\n9.8765'
          },
          'question': {
            'questionText': 'Which of these will not be stored as a float?',
            'answers': [
              {'answerText': '7', 'score': true},
              {'answerText': '2/4', 'score': false},
              {'answerText': '7.0', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Numerical Operations',
          'content': {
            'header': 'Exponentiation',
            'description': 'Besides addition, subtraction, multiplication, and division, Python also supports exponentiation, which is the raising of one number to the power of another. This operation is performed using two asterisks.',
            'box': '>>> 2**5\n32\n>>> 9 ** (1/2)\n3.0'
          },
          'question': {
            'questionText': 'What is needed to make this code correct.\n>>> ?**2 = 12',
            'answers': [
              {'answerText': '1', 'score': false},
              {'answerText': '2', 'score': false},
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Strings',
          'content': {
            'header': 'Strings',
            'description': 'If you want to use text in Python, you have to use a string. A string is created by entering text between two single or double quotation marks.When the Python console displays a string, it generally uses single quotes. The delimiter used for a string doesn\'t affect how it behaves in any way.',
            'box': '>>> "Python is fun!"\n\'Python is fun!\'\n>>> \'Always look on the bright side of life\'\n\'Always look on the bright side of life\''
          },
          'question': {
            'questionText': 'What is the code to create a string containing “Hello world”.',
            'answers': [
              {'answerText': '\'Hello world\'', 'score': true},
              {'answerText': '\"Hello world\'', 'score': false},
              {'answerText': '\'Hello world\"', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Simple Input & Output',
          'content': {
            'header': 'Input',
            'description': 'To get input from the user in Python, you can use the intuitively named input function. The function prompts the user for input, and returns what they enter as a string (with the contents automatically escaped).',
            'box': '>>> input(\"Enter something please: \")\nEnter something please: This is what\nthe user enters!\n\'This is what\\nthe user enters!\''
          },
          'question': {
            'questionText': 'What is the keyword to prompt for user input?',
            'answers': [
              {'answerText': 'prompt', 'score': false},
              {'answerText': 'input', 'score': true},
              {'answerText': 'get', 'score': false},
              {'answerText': 'print', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'String Operations',
          'content': {
            'header': 'Concatenation',
            'description': 'As with integers and floats, strings in Python can be added, using a process called concatenation, which can be done on any two strings. When concatenating strings, it doesn\'t matter whether they\'ve been created with single or double quotes.',
            'box': '>>> \"Spam\" + \'eggs\'\n\'Spameggs\'\n>>> print(\"First string\" + \", \" + \"second string\")\nFirst string, second string'
          },
          'question': {
            'questionText': 'What is the missing string?\n>>> \'Hello \' + _____\n\'Hello world\'',
            'answers': [
              {'answerText': 'World', 'score': false},
              {'answerText': ' world', 'score': false},
              {'answerText': 'world', 'score': true},
              {'answerText': ' World', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Type Conversions',
          'content': {
            'header': 'Type Conversions',
            'description': 'In Python, it\'s impossible to complete certain operations due to the types involved. For instance, you can\'t add two strings containing the numbers 2 and 3 together to produce the integer 5, as the operation will be performed on strings, making the result \'23\'. The solution to this is type conversion. In that example, you would use the int function.',
            'box': '>>> \"2\" + \"3\"\n\'23\'\n>>> int("2") + int("3")\n5'
          },
          'question': {
            'questionText': 'What is the output of this code?\n>>> int("3" + "4")',
            'answers': [
              {'answerText': '34', 'score': true},
              {'answerText': '\"7\"', 'score': false},
              {'answerText': '\"34\"', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Variables',
          'content': {
            'header': 'Variables',
            'description': 'Variables play a very important role in most programming languages, and Python is no exception. A variable allows you to store a value by assigning it to a name, which can be used to refer to the value later in the program.To assign a variable, use one equals sign. Unlike most lines of code we\'ve looked at so far, it doesn\'t produce any output at the Python console.',
            'box': '>>> x = 7\n>>> print(x)\n7\n>>> print(x + 3)\n10\n>>> print(x)\n7'
          },
          'question': {
            'questionText': 'What is the output of this code?\n>>> spam = "eggs"\n>>> print(spam * 3)',
            'answers': [
              {'answerText': 'eggseggseggs', 'score': true},
              {'answerText': '\"spamspamspam\"', 'score': false},
              {'answerText': 'spamspamspam', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'In-Place Operators',
          'content': {
            'header': 'In-Place Operators',
            'description': 'In-place operators allow you to write code like \'x = x + 3\' more concisely, as \'x += 3\'.The same thing is possible with other operators such as -, *, / and % as well.',
            'box': '>>> x = 2\n>>> print(x)\n2\n>>> x += 3\n>>> print(x)\n5'
          },
          'question': {
            'questionText': 'What is the output of this code?\n>>> x = 4\n>>> x *= 3\n>>> print(x)',
            'answers': [
              {'answerText': '7', 'score': false},
              {'answerText': '43', 'score': false},
              {'answerText': '12', 'score': true},
              {'answerText': '24', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Using an Editor',
          'content': {
            'header': 'Using an Editor',
            'description': 'So far, we\'ve only used Python with the console, entering and running one line of code at a time.Actual programs are created differently; many lines of code are written in a file, and then executed with the Python interpreter. Each line of code in the file is interpreted as though you entered it one line at a time at the console.',
            'box': 'x = 7\nx = x + 2\nprint(x)'
          },
          'question': {
            'questionText': 'Which lines are executed when a Python file is run?',
            'answers': [
              {'answerText': 'Every line', 'score': true},
              {'answerText': 'The first line only', 'score': false},
              {'answerText': 'The first 100 lines', 'score': false},
            ]
          },
          'status': false
        },
      ]
    },
    {
      'title': 'Control Structure',
      'sections': [
        {
          'title': 'Booleans & Comparisons',
          'content': {
            'header': 'Booleans',
            'description':
            'Another type in Python is the Boolean type. There are two Boolean values: True and False. They can be created by comparing values, for instace by using the equal operator ==.',
            'box': '>>> my_boolean = True\n>>> my_boolean\nTrue\n\n>>> 2 == 3\nFalse\n>>> \'hello\' == \'hello\'\nTrue'
          },
          'question': {
            'questionText': 'What are the two Boolean values?',
            'answers': [
              {'answerText': 'Truth and Falsity', 'score': false},
              {'answerText': 'True and False', 'score': true},
              {'answerText': 'true and false', 'score': false}
            ]
          },
          'status': false
        },
        {
          'title': 'If Statements',
          'content': {
            'header': 'If Statements',
            'description':
            'You can use if statements to run code if a certain condition holds. If an expression evaluates to True, some statements are carried out. Otherwise, they aren\'t carried out. An if statement looks like this:',
            'box': 'if expression: \nstatements'
          },
          'question': {
            'questionText': 'What part of an if statement should be indented?',
            'answers': [
              {'answerText': 'The statements within it', 'score': true},
              {'answerText': 'All of it', 'score': false},
              {'answerText': 'The first line', 'score': false}
            ]
          },
          'status': false
        }
        ,
        {
          'title': 'else Statements',
          'content': {
            'header': 'else Statements',
            'description': 'An else statement follows an if statement, and contains code that is called when the if statement evaluates to False.',
            'box': 'x = 4\nif x == 5: \nprint("Yes")\nelse:\nprint("No")'
          },
          'question': {
            'questionText': 'What is the result of this code?\nif 1 + 1 == 2: \nif 2 * 2 == 8: \nprint("if")\nelse:\nprint("else")',
            'answers': [
              {'answerText': 'else', 'score': true},
              {'answerText': 'if', 'score': false},
              {'answerText': 'ifelse', 'score': false},
              {'answerText': 'No Output', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Boolean Logic',
          'content': {
            'header': 'Boolean Logic',
            'description': 'Boolean logic is used to make more complicated conditions for if statements that rely on more than one condition.',
            'box': '>>> 1 == 1 and 2 == 2\nTrue\n>>> 1 == 1 and 2 == 3\nFalse'
          },
          'question': {
            'questionText': 'What is the result of this code?\nif (1 == 1) and (2 + 2 > 3): \nprint("true")\nelse:\nprint("false")',
            'answers': [
              {'answerText': 'true false', 'score': false},
              {'answerText': 'false', 'score': false},
              {'answerText': 'true', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Operator Precedence',
          'content': {
            'header': 'Operator Precedence',
            'description': 'Operator precedence is a very important concept in programming. It is an extension of the mathematical idea of order of operations (multiplication being performed before addition, etc.) to include other operators, such as those in Boolean logic.',
            'box': '>>> False == False or True\nTrue\n>>> False == (False or True)\nFalse\n>>> (False == False) or True\nTrue'
          },
          'question': {
            'questionText': 'What is the result of this code?\nif 1 + 1 * 3 == 6: \nprint("Yes")\nelse:\nprint("No")',
            'answers': [
              {'answerText': 'No', 'score': true},
              {'answerText': 'Yes', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'while Loops',
          'content': {
            'header': 'while Loops',
            'description': 'An if statement is run once if its condition evaluates to True, and never if it evaluates to False. A while statement is similar, except that it can be run more than once. The statements inside it are repeatedly executed, as long as the condition holds. Once it evaluates to False, the next section of code is executed.',
            'box': 'An if statement is run once if its condition evaluates to True, and never if it evaluates to False. A while statement is similar, except that it can be run more than once. The statements inside it are repeatedly executed, as long as the condition holds. Once it evaluates to False, the next section of code is executed.'
          },
          'question': {
            'questionText': 'How many numbers does this code print?\ni = 3\nwhile i>=0:\nprint(i)\ni = i - 1',
            'answers': [
              {'answerText': '2', 'score': false},
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': true},
              {'answerText': '5', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Lists',
          'content': {
            'header': 'Lists',
            'description': 'Lists are another type of object in Python. They are used to store an indexed list of items. A list is created using square brackets with commas separating items. The certain item in the list can be accessed by using its index in square brackets.',
            'box': 'words = ["Hello", "world", "!"]\nprint(words[0])\nprint(words[1])\nprint(words[2])'
          },
          'question': {
            'questionText': 'What is the result of this code?\nnums = [5, 4, 3, 2, 1]\nprint(nums[1])',
            'answers': [
              {'answerText': '5', 'score': false},
              {'answerText': '4', 'score': true},
              {'answerText': '3', 'score': false},
              {'answerText': '2', 'score': false},
              {'answerText': '1', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'List Operations',
          'content': {
            'header': 'List Operations',
            'description': 'The item at a certain index in a list can be reassigned.',
            'box': 'nums = [7, 7, 7, 7, 7] nums[2] = 5 print(nums)'
          },
          'question': {
            'questionText': 'What is the result of this code?\nnums = [1, 2, 3, 4, 5]\nnums[3] = nums[1]\nprint(nums[3])',
            'answers': [
              {'answerText': '1', 'score': false},
              {'answerText': '2', 'score': true},
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': false},
              {'answerText': '5', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'List Functions',
          'content': {
            'header': 'List Functions',
            'description': 'Another way of altering lists is using the append method. This adds an item to the end of an existing list.',
            'box': 'nums = [1, 2, 3]\nnums.append(4)\nprint(nums)'
          },
          'question': {
            'questionText': 'What is the result of this code?\nwords = ["hello"]\nwords.append("world")\nprint(words[1])',
            'answers': [
              {'answerText': 'hello', 'score': false},
              {'answerText': 'An error occurs', 'score': false},
              {'answerText': 'world', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Range',
          'content': {
            'header': 'Range',
            'description': 'The range function creates a sequential list of numbers. The code below generates a list containing all of the integers, up to 10.',
            'box': 'numbers = list(range(10))\nprint(numbers)'
          },
          'question': {
            'questionText': 'What is the result of this code?\nnums = list(range(5))\nprint(nums[4])',
            'answers': [
              {'answerText': '1', 'score': false},
              {'answerText': '2', 'score': false},
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'For Loops',
          'content': {
            'header': 'Loops',
            'description': 'Sometimes, you need to perform code on each item in a list. This is called iteration, and it can be accomplished with a while loop and a counter variable.',
            'box': 'words = ["hello", "world", "spam", "eggs"]\ncounter = 0\nmax_index = len(words) - 1\n\nwhile counter <= max_index:\nword = words[counter]\nprint(word + "!")\ncounter = counter + 1 '
          },
          'question': {
            'questionText': 'Which construct can be used to iterate through a list?',
            'answers': [
              {'answerText': 'Loops', 'score': true},
              {'answerText': 'Variable assignment', 'score': false},
              {'answerText': 'if statements', 'score': false},
            ]
          },
          'status': false
        }
      ]
    },
    {
      'title': 'Functions & Modules',
      'sections': [
        {
          'title': 'Code Reuse',
          'content': {
            'header': 'Reusing Code',
            'description': 'Code reuse is a very important part of programming in any language. Increasing code size makes it harder to maintain.',
          },
          'question': {
            'questionText': 'Following the DRY principle makes the code:',
            'answers': [
              {'answerText': 'Easier to maintain', 'score': true},
              {'answerText': 'Loop forever', 'score': false},
              {'answerText': 'Bad and repetitive', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Functions',
          'content': {
            'header': 'Functions',
            'description': 'In addition to using pre-defined functions, you can create your own functions by using the def statement.',
            'box': 'def my_func():\nprint("spam")\nprint("spam")\nprint("spam")\n\nmy_func()'
          },
          'question': {
            'questionText': 'Fill in the blanks to define a function named hello:\n ___ hello():\n  print(\"Hi\")',
            'answers': [
              {'answerText': 'function', 'score': false},
              {'answerText': 'f', 'score': false},
              {'answerText': 'def', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Function Arguments',
          'content': {
            'header': 'Arguments',
            'description': 'All the function definitions we\'ve looked at so far have been functions of zero arguments, which are called with empty parentheses.',
            'box': 'def print_with_exclamation(word):\nprint(word + "!")\n\nprint_with_exclamation("spam")'
          },
          'question': {
            'questionText': 'What is the result of this code?\ndef print_double(x): \nprint(2 * x)\n\nprint_double(3)',
            'answers': [
              {'answerText': '2', 'score': false},
              {'answerText': '4', 'score': false},
              {'answerText': '6', 'score': true},
              {'answerText': '8', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Returning from Functions',
          'content': {
            'header': 'Returning from Functions',
            'description': 'ertain functions, such as int or str, return a value that can be used later. To do this for your defined functions, you can use the return statement.',
            'box': 'def max(x, y):\nif x >=y:\nreturn x\nelse:\nreturn y\n\nprint(max(4, 7))\nz = max(8, 5)\nprint(z)'
          },
          'question': {
            'questionText': 'what is the code to return the variable x?',
            'answers': [
              {'answerText': 'pass x', 'score': false},
              {'answerText': 'get x', 'score': false},
              {'answerText': 'return x', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Comments and Docstrings',
          'content': {
            'header': 'Comments',
            'description': 'Comments are annotations to code used to make it easier to understand. They don\'t affect how code is run.',
            'box': 'x = 365\ny = 7\n# this is a comment'
          },
          'question': {
            'questionText': 'What is the comment keyword?',
            'answers': [
              {'answerText': '#', 'score': true},
              {'answerText': '//', 'score': false},
              {'answerText': '/*', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Functions as Objects',
          'content': {
            'header': 'Functions',
            'description': 'Although they are created differently from normal variables, functions are just like any other kind of value.',
            'box': 'def multiply(x, y):\nreturn x * y\n\nprint(operation(4, 7))'
          },
          'question': {
            'questionText': 'What is the output of this code?\ndef shout(word):\nreturn word + "!"\nspeak = shout\noutput = speak("shout")\nprint(output)',
            'answers': [
              {'answerText': 'speak!', 'score': false},
              {'answerText': 'word!', 'score': false},
              {'answerText': 'shout!', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Modules',
          'content': {
            'header': 'Modules',
            'description': 'Modules are pieces of code that other people have written to fulfill common tasks, such as generating random numbers, performing mathematical operations, etc.',
            'box': 'import random\n\nfor i in range(5): \nvalue = random.randint(1, 6)\nprint(value)'
          },
          'question': {
            'questionText': 'Which module is being used in this code?\nimport math\nnum = 10\nprint (math.sqrt(num))',
            'answers': [
              {'answerText': 'num', 'score': false},
              {'answerText': 'math', 'score': true},
              {'answerText': 'sqrt', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'The Standard Library',
          'content': {
            'header': 'The Standard Library',
            'description': 'Some of the modules in the standard library are written in Python, and some are written in C. Most are available on all platforms, but some are Windows or Unix specific.',
            'box': ''
          },
          'question': {
            'questionText': 'What name is given to Python\'s preinstalled modules?',
            'answers': [
              {'answerText': 'The Standar Library', 'score': true},
              {'answerText': 'Unix', 'score': false},
              {'answerText': 'import', 'score': false},
              {'answerText': 'package', 'score': false},
            ]
          },
          'status': false
        },
      ]
    },
    {'title': 'Exceptions & Files',
      'sections': [
        {
          'title': 'Exception Handling',
          'content': {
            'header': 'Exception Handling',
            'description': 'To handle exceptions, and to call code when an exception occurs, you can use a try/except statement.',
            'box': 'try:\n  7 / 0\nexcept ZeroDivisionError:\n  print(\'zero division error\')'
          },
          'question': {
            'questionText': 'What is the output of this code?\ntry:\nvariable = 10\nprint (10 / 2)\nexcept ZeroDivisionError:\nprint("Error")\nprint("Finished")',
            'answers': [
              {'answerText': 'Error Finished', 'score': false},
              {'answerText': '5.0', 'score': false},
              {'answerText': '5.0 Finised', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'finally',
          'content': {
            'header': 'finally',
            'description': 'To ensure some code runs no matter what errors occur, you can use a finally statement. The finally statement is placed at the bottom of a try/except statement.',
            'box': 'try:\nprint("Hello")\nprint(1 / 0)\nexcept ZeroDivisionError: \nprint("Divided by zero")\nfinally:\nprint("This code will run no matter what")'
          },
          'question': {
            'questionText': 'What is the output of this code?\ntry:\nprint(1)\nexcept:\nprint(2)\nfinally:\nprint(3)',
            'answers': [
              {'answerText': '1 3', 'score': true},
              {'answerText': '3', 'score': false},
              {'answerText': '1', 'score': false},
              {'answerText': '1 2 3', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Raising Exceptions',
          'content': {
            'header': 'Raising Exceptions',
            'description': 'You can raise exceptions by using the raise statement.',
            'box': 'print(1)\nraise ValueError\nprint(2)'
          },
          'question': {
            'questionText': 'Which errors occur during the execution of this code?\ntry:\nprint(1 / 0)\nexcept ZeroDivisionError:\nraise ValueError',
            'answers': [
              {'answerText': 'ZeroDivisionError', 'score': false},
              {'answerText': 'none', 'score': false},
              {'answerText': 'ZeroDivisionError and ValueError', 'score': true},
              {'answerText': 'ValueError', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Assertions',
          'content': {
            'header': 'Assertions',
            'description': 'An assertion is a sanity-check that you can turn on or turn off when you have finished testing the program.',
            'box': 'print(1)\nassert 2 + 2 == 4\nprint(2)\nassert 1 + 1 == 3\nprint(3)'
          },
          'question': {
            'questionText': 'What is the highest number printed by this code?\nprint(0)\nassert "h" != "w"\nprint (1)\nassert False\nprint(2)\nassert True\nprint(3)',
            'answers': [
              {'answerText': '1', 'score': true},
              {'answerText': '3', 'score': false},
              {'answerText': '2', 'score': false},
              {'answerText': '4', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Opening Files',
          'content': {
            'header': 'Opening Files',
            'description': 'You can use Python to read and write the contents of files. Text files are the easiest to manipulate. Before a file can be edited, it must be opened, using the open function.',
          },
          'question': {
            'questionText': 'Which function is used to access files?',
            'answers': [
              {'answerText': 'openFile', 'score': false},
              {'answerText': 'read', 'score': false},
              {'answerText': 'open', 'score': true},
              {'answerText': 'close', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Reading Files',
          'content': {
            'header': 'Reading Files',
            'description': 'The contents of a file that has been opened in text mode can be read using the read method.',
            'box': 'file = open("filename.txt", "r")\ncont = file.read()\nprint(cont)\nfile.close()'
          },
          'question': {
            'questionText': 'Which function is used to read files?',
            'answers': [
              {'answerText': 'openFile', 'score': false},
              {'answerText': 'read', 'score': true},
              {'answerText': 'open', 'score': true},
              {'answerText': 'close', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Writing Files',
          'content': {
            'header': 'Writing Files',
            'description': 'To write to files you use the write method, which writes a string to the file.',
            'box': 'file = open("newfile.txt", "w")\nfile.write("This has been written to a file")\nfile.close()\n\nfile = open("newfile.txt", "r")\nprint(file.read())\nfile.close()'
          },
          'question': {
            'questionText': 'Which line of code writes "Hello world!" to a file?',
            'answers': [
              {'answerText': 'write(file, "Hello world!")', 'score': false},
              {'answerText': 'file.write("Hello world!")', 'score': true},
              {'answerText': 'write("Hello world!", file)', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Working with Files',
          'content': {
            'header': 'Working with Files',
            'description': 'It is good practice to avoid wasting resources by making sure that files are always closed after they have been used. One way of doing this is to use try and finally.',
            'box': 'try:\nf = open("filename.txt")\nprint(f.read())\nfinally:\nf.close()'
          },
          'question': {
            'questionText': 'Will the close() function get called in this code?\ntry:\nf = open("filename.txt")\nprint(f.read())\nprint(1 / 0)\nfinally:\nf.close()',
            'answers': [
              {'answerText': 'Yes', 'score': true},
              {'answerText': 'No', 'score': false},
            ]
          },
          'status': false
        },
      ]
    },
    {'title': 'More Types',
      'sections': [
        {
          'title': 'Dictionaries',
          'content': {
            'header': 'Dictionaries',
            'description': 'Dictionaries are data structures used to map arbitrary keys to values. Lists can be thought of as dictionaries with integer keys within a certain range. Dictionaries can be indexed in the same way as lists, using square brackets containing keys.',
            'box': 'ages = {"Dave": 24, "Mary": 42, "John": 58}\nprint(ages["Dave"])\nprint(ages["Mary"])'
          },
          'question': {
            'questionText': 'ages = {"Dave": 24, "Mary": 42, "John": 58} What is the correct code to print out Dave\' age?',
            'answers': [
              {'answerText': 'print(ages[\'Mary\'])', 'score': false},
              {'answerText': 'print(Mary.age)', 'score': false},
              {'answerText': 'print(ages[\'Dave\'])', 'score': true},
              {'answerText': 'print(Dave.age)', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Dictionaries Functions',
          'content': {
            'header': 'Dictionaries',
            'description': 'Just like lists, dictionary keys can be assigned to different values. However, unlike lists, a new dictionary key can also be assigned a value, not just ones that already exist.',
            'box': 'squares = {1: 1, 2: 4, 3: "error", 4: 16,}\nsquares[8] = 64\nsquares[3] = 9\nprint(squares)'
          },
          'question': {
            'questionText': 'What is the result of this code?\nprimes = {1: 2, 2: 3, 4: 7, 7:17}\nprint(primes[primes[4]])',
            'answers': [
              {'answerText': '1', 'score': false},
              {'answerText': '3', 'score': false},
              {'answerText': '4', 'score': false},
              {'answerText': '7', 'score': false},
              {'answerText': '17', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Tuples',
          'content': {
            'header': 'Tuples',
            'description': 'Tuples are very similar to lists, except that they are immutable (they cannot be changed). Also, they are created using parentheses, rather than square brackets.',
            'box': 'words = ("spam", "eggs", "sausages",)'
          },
          'question': {
            'questionText': 'What is the result of this code?\ntuple = (1, (1, 2, 3))\nprint(tuple[1])',
            'answers': [
              {'answerText': '1', 'score': false},
              {'answerText': '((1, 2, 3))', 'score': false},
              {'answerText': '(1, 2, 3)', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'List Slices',
          'content': {
            'header': 'List Slices',
            'description': 'List slices provide a more advanced way of retrieving values from a list. Basic list slicing involves indexing a list with two colon-separated integers. This returns a new list containing all the values in the old list between the indices.',
            'box': 'squares = [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]\nprint(squares[2:6])\nprint(squares[3:8])\nprint(squares[0:1])'
          },
          'question': {
            'questionText': 'What is the result of this code?\nsqs = [0, 1, 4, 9, 16, 25, 36, 49, 64]\nprint(sqs[4:7])',
            'answers': [
              {'answerText': '[25, 36, 49]', 'score': false},
              {'answerText': '[16, 25, 36, 49]', 'score': false},
              {'answerText': '[16, 25, 36]', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'List Comprehensions',
          'content': {
            'header': 'List Comprehensions',
            'description': 'List comprehensions are a useful way of quickly creating lists whose contents obey a simple rule. For example, we can do the following:',
            'box': '# a list comprehension\ncubes = [i**3 for i in range(5)]\n\nprint(cubes)'
          },
          'question': {
            'questionText': 'What does this list comprehension create?\nnums = [i*2 for i in range(10)]',
            'answers': [
              {'answerText': 'A list of all numbers between 0 and 10', 'score': false},
              {'answerText': 'A list of even numbers between 0 and 18', 'score': true},
              {'answerText': 'A list of even numbers between 0 and 10', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'String Formatting',
          'content': {
            'header': 'String Formatting',
            'description': 'String formatting provides a more powerful way to embed non-strings within strings. String formatting uses a string\'s format method to substitute a number of arguments in the string.',
            'box': '# string formatting\nnums = [4, 5, 6]\nmsg = "Numbers: {0} {1} {2}". format(nums[0], nums[1], nums[2])\nprint(msg)'
          },
          'question': {
            'questionText': 'What is the result of this code?\nstr="{c}, {b}, {a}".format(a=5, b=9, c=7)\nprint(str)',
            'answers': [
              {'answerText': '9, 7, 5', 'score': false},
              {'answerText': '5, 9, 7', 'score': false},
              {'answerText': '7, 9, 5', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Useful Functions',
          'content': {
            'header': 'String Functions',
            'description': 'Python contains many useful built-in functions and methods to accomplish common tasks. join - joins a list of strings with another string as a separator. replace - replaces one substring in a string with another.',
          },
          'question': {
            'questionText': 'What is the correct keyword to turn a String into uppercase?',
            'answers': [
              {'answerText': 'uppcase', 'score': false},
              {'answerText': 'uppercase', 'score': false},
              {'answerText': 'upper', 'score': true},
            ]
          },
          'status': false
        },
      ]
    },
    {'title': 'Object-Oriented Programming',
      'sections': [
        {
          'title': 'Inheritance',
          'content': {
            'header': 'Inheritance',
            'description': 'Inheritance provides a way to share functionality between classes. To inherit a class from another class, put the superclass name in parentheses after the class name.',
          },
          'question': {
            'questionText': 'Which piece of code shows a new class Spam inheriting from Egg?',
            'answers': [
              {'answerText': 'class Egg(Spam):', 'score': false},
              {'answerText': 'class Spam(Egg):', 'score': true},
              {'answerText': 'class (Spam)Egg:', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Magic Methods',
          'content': {
            'header': 'Magic Methods',
            'description': 'Magic methods are special methods which have double underscores at the beginning and end of their names. They are also known as dunders.',
          },
          'question': {
            'questionText': 'What is __le__ a magic method for?',
            'answers': [
              {'answerText': 'x <= y', 'score': true},
              {'answerText': 'x < y', 'score': false},
              {'answerText': 'x >= y', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Object Lifecycle',
          'content': {
            'header': 'Object Lifecycle',
            'description': 'The lifecycle of an object is made up of its creation, manipulation, and destruction. The first stage of the life-cycle of an object is the definition of the class to which it belongs. The next stage is the instantiation of an instance, when __init__ is called. Memory is allocated to store the instance. Just before this occurs, the __new__ method of the class is called. This is usually overridden only in special cases.'
          },
          'question': {
            'questionText': 'Which stage corresponds to the __init__ method being called?',
            'answers': [
              {'answerText': 'definition', 'score': false},
              {'answerText': 'instantiation', 'score': true},
              {'answerText': 'destruction', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Data Hiding',
          'content': {
            'header': 'Data Hiding',
            'description': 'A key part of object-oriented programming is encapsulation, which involves packaging of related variables and functions into a single easy-to-use object - an instance of a class. A related concept is data hiding, which states that implementation details of a class should be hidden, and a clean standard interface be presented for those who want to use the class. In other programming languages, this is usually done with private methods and attributes, which block external access to certain methods and attributes in a class.',
          },
          'question': {
            'questionText': 'What is a private method in Python?',
            'answers': [
              {'answerText': 'A method that can\'t be accessed from outside a class', 'score': false},
              {'answerText': 'A method external code is discouraged from using', 'score': true},
              {'answerText': 'A method with double underscores at the beginning and end', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Class Methods & Static Methods',
          'content': {
            'header': 'Class Methods',
            'description': 'Methods of objects we\'ve looked at so far are called by an instance of a class, which is then passed to the self parameter of the method. Class methods are different - they are called by a class, which is passed to the cls parameter of the method.',
            'box': '@classmethod\ndef new_square(cls, side_length):\nreturn cls(side_length, side_length)'
          },
          'question': {
            'questionText': 'Which of these is most likely to be a static method?',
            'answers': [
              {'answerText': 'def spam(x, y):', 'score': true},
              {'answerText': 'def spam(cls, x, y):', 'score': false},
              {'answerText': 'def spam(self, x, y):', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Properties',
          'content': {
            'header': 'Properties',
            'description': 'Properties provide a way of customizing access to instance attributes. They are created by putting the property decorator above a method, which means when the instance attribute with the same name as the method is accessed, the method will be called instead.',
            'box': '@property\ndef pineapple_allowed(self):\nreturn False'
          },
          'question': {
            'questionText': 'What is the keyword to set a property?',
            'answers': [
              {'answerText': 'def', 'score': false},
              {'answerText': 'class', 'score': false},
              {'answerText': 'required', 'score': false},
              {'answerText': 'property', 'score': true},
            ]
          },
          'status': false
        },
      ]
    },
    {'title': 'Regular Expressions',
      'sections': [
        {
          'title': 'Simple Metacharacters',
          'content': {
            'header': 'Metacharacters',
            'description': 'Metacharacters are what make regular expressions more powerful than normal string methods. They allow you to create regular expressions to represent concepts like "one or more repetitions of a vowel".',
          },
          'question': {
            'questionText': 'What would \'....\' match?',
            'answers': [
              {'answerText': 'Strings with four digits only', 'score': false},
              {'answerText': 'Any four character string with no newlines', 'score': true},
              {'answerText': 'Any string with only dots', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Character Classes',
          'content': {
            'header': 'Character Classes',
            'description': 'Character classes provide a way to match only one of a specific set of characters. A character class is created by putting the characters it matches inside square brackets.',
          },
          'question': {
            'questionText': 'What would [abc][def] match?',
            'answers': [
              {'answerText': 'Any three letters out of "abc", then any three from "def"', 'score': false},
              {'answerText': 'Either "abc" or "def"', 'score': false},
              {'answerText': 'Any letter out of "abc", then any out of "def"', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Groups',
          'content': {
            'header': 'Groups',
            'description': 'A group can be created by surrounding part of a regular expression with parentheses. This means that a group can be given as an argument to metacharacters such as * and ?.',
          },
          'question': {
            'questionText': 'What would \'([^aeiou][aeiou][^aeiou])+\' match?',
            'answers': [
              {'answerText': 'A number of repetitions of "aeiou" that is a multiple of three', 'score': false},
              {'answerText': 'Nothing', 'score': false},
              {'answerText': 'One or more repetitions of a non-vowel, a vowel and a non-vowel', 'score': true},
            ]
          },
          'status': false
        },
        {
          'title': 'Special Sequences',
          'content': {
            'header': 'Special Sequences',
            'description': 'There are various special sequences you can use in regular expressions. They are written as a backslash followed by another character.',
            'box': 'pattern = r"(.+) \1"'
          },
          'question': {
            'questionText': 'What would (abc|xyz)\1 match?',
            'answers': [
              {'answerText': '"abc", then "xyz"', 'score': false},
              {'answerText': '"abc" or "xyz", followed by the same thing', 'score': true},
              {'answerText': '"abc" or "xyz", then a "1"', 'score': false},
            ]
          },
          'status': false
        },
        {
          'title': 'Email Extraction',
          'content': {
            'header': 'Email Extraction',
            'description': 'To demonstrate a sample usage of regular expressions, lets create a program to extract email addresses from a string.',
            'box': 'pattern = r"([\w\.-]+)@([\w\.-]+)(\.[\w\.]+)"'
          },
          'question': {
            'questionText': 'In our example, why is the dot character preceded by a backslash?',
            'answers': [
              {'answerText': 'because it is inside square brackets', 'score': false},
              {'answerText': 'to treat it as a character', 'score': true},
              {'answerText': 'it is mandatory', 'score': false},
            ]
          },
          'status': false
        },
      ]
    },
  ];
}
