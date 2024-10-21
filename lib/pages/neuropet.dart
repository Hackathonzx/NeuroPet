import 'package:jaspr/jaspr.dart';

class Neuropet extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield html([
      head([
        const DomComponent(tag: 'meta', attributes: {'charset': 'utf-8'}),
        const DomComponent(tag: 'meta', attributes: {'name': 'viewport', 'content': 'width=device-width, initial-scale=1.0'}),
        DomComponent(tag: 'title', children: [text('Gaming Dashboard')]),
        script(src: 'https://cdn.tailwindcss.com', []),
        link(rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'),
        link(rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap'),
        DomComponent(tag: 'style', children: [text('''
          body {
            font-family: 'Inter', sans-serif;
            background: radial-gradient(circle, rgba(45, 27, 46, 1) 0%, rgba(58, 31, 63, 1) 100%);
            color: #FFFFFF;
            backdrop-filter: blur(10px);
            transition: background 5s ease;
            margin: 0 auth;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
          }
          
          .container {
            max-width: 1200px;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
          }

          .sidebar, .card, .header, .play-button {
            background: rgba(74, 42, 74, 0.8);
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          }
          
          .highlight {
            background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
          }
          
          .button {
            background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
            color: #2D1B2E;
          }
          
          .button:hover {
            background: linear-gradient(135deg, #D4945A 0%, #C3834F 100%);
          }
          
          .play-button {
            font-size: 2rem;
            padding: 1rem 2rem;
            border-radius: 9999px;
            text-align: center;
            margin: 2rem auto;
          }
          
          @media (max-width: 768px) {
            .play-button {
              font-size: 1.5rem;
              padding: 0.75rem 1.5rem;
            }
            .header {
              flex-direction: column;
              align-items: center;
            }
            .header h1 {
              margin-bottom: 10px;
            }
            .header .flex {
              flex-direction: column;
              align-items: center;
            }
            .header .flex input {
              margin-bottom: 10px;
            }
          }
        ''')]),
        script(src: '/scripts/neuro.js', []),
      ]),
      body(classes: 'container', [
        // Main Content
        div(classes: 'justify-center flex-1 p-6 space-y-6', [

          br(),
          // Header
          div(classes: 'header flex justify-between items-center', [
            h1(classes: 'text-2xl font-bold', [
              span(classes: 'text-yellow-400', [text('NEUROPET')]),
            ]),


            div(classes: 'flex items-center space-x-4', [
              input(classes: 'px-4 py-2 rounded-full bg-gray-700 text-white', attributes: {'placeholder': 'Search', 'type': 'text'}, []),


              // i(classes: 'fas fa-shopping-cart text-xl', []),
              // i(classes: 'fas fa-bell text-xl', []),
              // img(classes: 'w-10 h-10 rounded-full', attributes: {'alt': 'User Avatar'}, src: '/images/avatar.png'),


              div(classes: 'flex flex-row items-center space-x-4', [
                i(classes: 'fas fa-shopping-cart text-xl', []),
                i(classes: 'fas fa-bell text-xl', []),
                img(classes: 'w-10 h-10 rounded-full', attributes: {'alt': 'User Avatar'}, src: '/images/avatar.png'),
              ])

            ]),


          ]),
          // Play Button
          div(classes: 'play-button button', [
            text('Play Now')
          ]),
          // Featured Game
          div(classes: 'card p-6 rounded-lg flex flex-col md:flex-row space-x-0 md:space-x-6', [
            div(classes: 'flex-1', [
              div(classes: 'flex items-center space-x-2 mb-4', [
                span(classes: 'highlight px-2 py-1 rounded-full text-sm', [text('Popular')]),
                i(classes: 'fas fa-gamepad', []),
                i(classes: 'fas fa-users', []),
              ]),
              h2(classes: 'text-3xl font-bold', [text('Neuropet Astro')]),
              p(classes: 'mt-2', [text('Neuropet is a single player space themed decentralized game for everyone! \' first first-person shooter game.')]),
              div(classes: 'flex items-center space-x-4 mt-4', [
                div(classes: 'flex -space-x-2', [
                  img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: '/images/avatar.png'),
                  img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: 'https://placehold.co/30x30'),
                  img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: 'https://placehold.co/30x30'),
                ]),
                div(classes: 'flex items-center space-x-2', [
                  i(classes: 'fas fa-thumbs-up', []),
                  span([text('+53 Reviews')]),
                ]),
              ]),
            ]),
            img(classes: 'w-full md:w-48 h-64 rounded-lg mt-4 md:mt-0', attributes: {'alt': 'Neuropet Astro', 'src': ''}, src: '/images/neuropet.png'),
          ]),
          // New Games
          div([
            h2(classes: 'text-xl font-bold mb-4', [text('New Games')]),
            div(classes: 'flex flex-col md:flex-row space-y-6 md:space-y-0 md:space-x-6', [
              div(classes: 'card p-4 rounded-lg w-full md:w-1/2', [
                img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Neuropet valorant', 'src': 'https://placehold.co/300x200'}, src: '/images/valorant.png'),
                h3(classes: 'text-lg font-bold', [text('Neuropet Valorant')]),
                p(classes: 'mt-2', [text('Is the sequel to neuropet astro 3: Encounter a charming adventure of saving space in a decentralized universe')]),
              ]),
              div(classes: 'card p-4 rounded-lg w-full md:w-1/2', [
                img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Neuropet: spacewhale', 'src': ''}, src: '/images/spacewhale.png'),
                h3(classes: 'text-lg font-bold', [text('Neuropet: spacewhale')]),
              ]),
            ]),
          ]),
          // Last Downloads
          div([
            h2(classes: 'text-xl font-bold mb-4', [text('Statistics')]),
            div(classes: 'card p-4 rounded-lg flex items-center space-x-4', [
              img(classes: 'w-16 h-16 rounded-lg', attributes: {'alt': 'Neuropet 24 Image', 'src': 'https://placehold.co/60x60'}, src: '/images/rocket.png'),
              div(classes: 'flex-1', [
                h3(classes: 'text-lg font-bold', [text('Neuropet 24')]),
                p(classes: 'text-sm', [text('Space simulator')]),
              ]),
              div(classes: 'text-right', [
                p(classes: 'text-sm', [text('1 hour 24 min.')]),
                p(classes: 'text-sm', [text('total played')]),
              ]),
              button(classes: 'button px-4 py-2 rounded-full', [text('Like')]),
            ]),
          ]),
        ]),




      ]),
    ]);
  }
}












































        // // Right Sidebar
        // div(classes: 'w-full md:w-64 p-6 space-y-6', [
        //   // Game List
        //   div(classes: 'space-y-4', [
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4', [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Unravel 2 Image', 'src': 'https://placehold.co/40x40'}, src: 'https://placehold.co/40x40'),
        //       div([
        //         h3(classes: 'text-lg font-bold', [text('Unravel 2')]),
        //         p(classes: 'text-sm', [text('(Standard Edition + Starter Pass)')]),
        //       ]),
        //     ]),
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4', [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Subway Surf Image', 'src': 'https://placehold.co/40x40'}, src: 'https://placehold.co/40x40'),
        //       div([
        //         h3(classes: 'text-lg font-bold', [text('Subway Surf')]),
        //       ]),
        //     ]),
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4', [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Red Dead Redemption 3 Image', 'src': 'https://placehold.co/40x40'}, src: ''),
        //       div([
        //         h3(classes: 'text-lg font-bold', [text('Red Dead Redemption 3')]),
        //         p(classes: 'text-sm', [text('(Premium Pack)')]),
        //       ]),
        //     ]),
        //   ]),
        //   // Statistics
        //   div([
        //     h2(classes: 'text-xl font-bold mb-4', [text('Your Statistic')]),
        //     div(classes: 'card p-6 rounded-lg text-center', [
        //       h3(classes: 'text-3xl font-bold', [text('Total hours')]),
        //       p(classes: 'text-5xl font-bold mt-2', [text('12,340h')]),
        //       div(classes: 'flex justify-around mt-4', [
        //         div(classes: 'text-center', [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2', [text('2,340h')]),
        //         ]),
        //         div(classes: 'text-center', [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2', [text('5,420h')]),
        //         ]),
        //         div(classes: 'text-center', [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2', [text('4,580h')]),
        //         ]),
        //       ]),
        //     ]),
        //   ]),
        // ]),





// import 'package:jaspr/jaspr.dart';

// class Neuropet extends StatelessComponent {
//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield html([
//       head([
//         const DomComponent(tag: 'meta', attributes: {'charset': 'utf-8'}),
//         const DomComponent(tag: 'meta', attributes: {'name': 'viewport', 'content': 'width=device-width, initial-scale=1.0'}),
//         DomComponent(tag: 'title', children: [text('Gaming Dashboard')]),
//         script(src: 'https://cdn.tailwindcss.com', []),
//         link(rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'),
//         link(rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap'),
//         DomComponent(tag: 'style', children: [text('''
//           body {
//             font-family: 'Inter', sans-serif;
//             background: radial-gradient(circle, rgba(45, 27, 46, 1) 0%, rgba(58, 31, 63, 1) 100%);
//             color: #FFFFFF;
//             backdrop-filter: blur(10px);
//             transition: background 5s ease;
//           }
          
//           .sidebar, .card, .header, .play-button {
//             background: rgba(74, 42, 74, 0.8);
//             backdrop-filter: blur(10px);
//             box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
//           }
          
//           .highlight {
//             background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
//           }
          
//           .button {
//             background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
//             color: #2D1B2E;
//           }
          
//           .button:hover {
//             background: linear-gradient(135deg, #D4945A 0%, #C3834F 100%);
//           }
          
//           .play-button {
//             font-size: 2rem;
//             padding: 1rem 2rem;
//             border-radius: 9999px;
//             text-align: center;
//             margin: 2rem auto;
//           }
          
//           @media (max-width: 768px) {
//             .play-button {
//               font-size: 1.5rem;
//               padding: 0.75rem 1.5rem;
//             }
//           }
//         ''')]),
//         script( src: '/scripts/neuro.js', [text('''
      
//         ''')]),
//       ]),
//       body(classes: 'flex flex-col md:flex-row',  [


//         // Main Content
//         div(classes: 'justify-center flex-1 p-6 space-y-6',  [
//           // Header
//           div(classes: 'header flex justify-between items-center',  [
//             h1(classes: 'text-2xl font-bold',  [
//               span(classes: 'text-yellow-400',  [text('NEUROPET')]),
//             ]),
//             div(classes: 'flex items-center space-x-4',  [
//               input(classes: 'px-4 py-2 rounded-full bg-gray-700 text-white', attributes: {'placeholder': 'Search', 'type': 'text'}, []),
//               i(classes: 'fas fa-shopping-cart text-xl', []),
//               i(classes: 'fas fa-bell text-xl', []),
//               img(classes: 'w-10 h-10 rounded-full', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/40x40'}, src: ''),
//             ]),
//           ]),
//           // Play Button
//           div(classes: 'play-button button',  [
//             text('Play Now')
//           ]),
//           // Featured Game
//           div(classes: 'card p-6 rounded-lg flex flex-col md:flex-row space-x-0 md:space-x-6',  [
//             div(classes: 'flex-1',  [
//               div(classes: 'flex items-center space-x-2 mb-4',  [
//                 span(classes: 'highlight px-2 py-1 rounded-full text-sm',  [text('Popular')]),
//                 i(classes: 'fas fa-gamepad', []),
//                 i(classes: 'fas fa-users', []),
//               ]),
//               h2(classes: 'text-3xl font-bold',  [text('Neuropet space theme')]),
//               p(classes: 'mt-2',  [text('Neuropet is a single player space themed decentralized game for everyone! \' first first-person shooter game.')]),
//               div(classes: 'flex items-center space-x-4 mt-4',  [
//                 div(classes: 'flex -space-x-2',  [
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                 ]),
//                 div(classes: 'flex items-center space-x-2',  [
//                   i(classes: 'fas fa-thumbs-up', []),
//                   span([text('+53 Reviews')]),
//                 ]),
//               ]),
//             ]),
//             img(classes: 'w-full md:w-48 h-64 rounded-lg mt-4 md:mt-0', attributes: {'alt': 'Valorant Game Image', 'src': 'https://placehold.co/200x300'}, src: ''),
//           ]),
//           // New Games
//           div( [
//             h2(classes: 'text-xl font-bold mb-4',  [text('New Games')]),
//             div(classes: 'flex flex-col md:flex-row space-y-6 md:space-y-0 md:space-x-6',  [
//               div(classes: 'card p-4 rounded-lg w-full md:w-1/2',  [
//                 img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Uncharted 4 Image', 'src': 'https://placehold.co/300x200'}, src: ''),
//                 h3(classes: 'text-lg font-bold',  [text('Uncharted 4')]),
//                 p(classes: 'mt-2',  [text('Is the sequel to Uncharted 3: Drake\'s Deception and the final installment of Nathan Drake\'s adventures.')]),
//               ]),
//               div(classes: 'card p-4 rounded-lg w-full md:w-1/2',  [
//                 img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Dishonored: Standard Edition Image', 'src': 'https://placehold.co/300x200'}, src: ''),
//                 h3(classes: 'text-lg font-bold',  [text('Dishonored: Standard Edition')]),
//               ]),
//             ]),
//           ]),
//           // Last Downloads
//           div( [
//             h2(classes: 'text-xl font-bold mb-4',  [text('Last Downloads')]),
//             div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
//               img(classes: 'w-16 h-16 rounded-lg', attributes: {'alt': 'FIFA 23 Image', 'src': 'https://placehold.co/60x60'}, src: ''),
//               div(classes: 'flex-1',  [
//                 h3(classes: 'text-lg font-bold',  [text('FIFA 23')]),
//                 p(classes: 'text-sm',  [text('Sports simulator')]),
//               ]),
//               div(classes: 'text-right',  [
//                 p(classes: 'text-sm',  [text('1 hour 23 min.')]),
//                 p(classes: 'text-sm',  [text('265Mb of 1,23Gb')]),
//               ]),
//               button(classes: 'button px-4 py-2 rounded-full',  [text('Pause')]),
//             ]),
//           ]),
//         ]),
//         // Right Sidebar


//       ], ),
//     ]);
//   }
// }




































































        // Sidebar
        // div(classes: 'sidebar w-full md:w-20 flex flex-col items-center py-6 space-y-6',  [
        //   div(classes: 'text-2xl font-bold',  [text('N')]),
        //   div(classes: 'space-y-6',  [
        //     i(classes: 'fas fa-home text-xl', []),
        //     i(classes: 'fas fa-gamepad text-xl', []),
        //     i(classes: 'fas fa-gift text-xl', []),
        //     i(classes: 'fas fa-users text-xl', []),
        //     i(classes: 'fas fa-comment text-xl', []),
        //   ]),
        //   div(classes: 'mt-auto',  [
        //     i(classes: 'fas fa-plus text-xl', []),
        //   ]),
        // ]),


































        // div(classes: 'w-full md:w-64 p-6 space-y-6',  [
        //   // Game List
        //   div(classes: 'space-y-4',  [
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Unravel 2 Image', 'src': 'https://placehold.co/40x40'}, src: ''),
        //       div( [
        //         h3(classes: 'text-lg font-bold',  [text('Unravel 2')]),
        //         p(classes: 'text-sm',  [text('(Standard Edition + Starter Pass)')]),
        //       ]),
        //     ]),
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Subway Surf Image', 'src': 'https://placehold.co/40x40'}, src: ''),
        //       div( [
        //         h3(classes: 'text-lg font-bold',  [text('Subway Surf')]),
        //       ]),
        //     ]),
        //     div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
        //       img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Red Dead Redemption 3 Image', 'src': 'https://placehold.co/40x40'}, src: ''),
        //       div( [
        //         h3(classes: 'text-lg font-bold',  [text('Red Dead Redemption 3')]),
        //         p(classes: 'text-sm',  [text('(Premium Pack)')]),
        //       ]),
        //     ]),
        //   ]),
        //   // Statistics
        //   div( [
        //     h2(classes: 'text-xl font-bold mb-4',  [text('Your Statistic')]),
        //     div(classes: 'card p-6 rounded-lg text-center',  [
        //       h3(classes: 'text-3xl font-bold',  [text('Total hours')]),
        //       p(classes: 'text-5xl font-bold mt-2',  [text('12,340h')]),
        //       div(classes: 'flex justify-around mt-4',  [
        //         div(classes: 'text-center',  [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2',  [text('2,340h')]),
        //         ]),
        //         div(classes: 'text-center',  [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2',  [text('5,420h')]),
        //         ]),
        //         div(classes: 'text-center',  [
        //           i(classes: 'fas fa-gamepad text-2xl', []),
        //           p(classes: 'mt-2',  [text('4,580h')]),
        //         ]),
        //       ]),
        //     ]),
        //   ]),
        // ]),




































// [
//   head([
//     DomComponent(tag: 'meta', children: []),
//     DomComponent(tag: 'meta', children: []),
//     DomComponent(tag: 'title', children: [text('  Gaming Dashboard  ')]),
//     script([], src: 'https://cdn.tailwindcss.com'),
//     link(
//       href:
//         'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css',
//       rel: 'stylesheet'),
//     link(
//       href:
//         'https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap',
//       rel: 'stylesheet'),
//     DomComponent(tag: 'style', children: [
//     text(
//       '  body {       font-family: \'Inter\', sans-serif;       background: linear-gradient(135deg, #2D1B2E 0%, #3A1F3F 100%);       color: #FFFFFF;       animation: backgroundAnimation 10s infinite alternate;     }     @keyframes backgroundAnimation {       0% { background: linear-gradient(135deg, #2D1B2E 0%, #3A1F3F 100%); }       50% { background: linear-gradient(135deg, #3A1F3F 0%, #2D1B2E 100%); }       100% { background: linear-gradient(135deg, #2D1B2E 0%, #3A1F3F 100%); }     }     .sidebar {       background: rgba(58, 31, 63, 0.8);       backdrop-filter: blur(10px);     }     .card {       background: rgba(74, 42, 74, 0.8);       backdrop-filter: blur(10px);     }     .highlight {       background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);     }     .button {       background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);       color: #2D1B2E;     }     .button:hover {       background: linear-gradient(135deg, #D4945A 0%, #C3834F 100%);     }     @media (max-width: 768px) {       .sidebar {         flex-direction: row;         justify-content: space-around;         width: 100%;         height: 60px;       }       .sidebar .mt-auto {         display: none;       }       .sidebar .space-y-6 {         flex-direction: row;         space-y-0;         space-x-6;       }       .flex-1 {         padding: 4px;       }       .card {         flex-direction: column;       }     }  ')
//     ]),
//   ]),
//   body([
//     div([
//     div([text('    N  ')], classes: 'text-2xl font-bold'),
//     div([
//       i([], classes: 'fas fa-home text-xl'),
//       i([], classes: 'fas fa-gamepad text-xl'),
//       i([], classes: 'fas fa-gift text-xl'),
//       i([], classes: 'fas fa-users text-xl'),
//       i([], classes: 'fas fa-comment text-xl'),
//     ], classes: 'space-y-6 md:space-y-0 md:space-x-6'),
//     div([
//       i([], classes: 'fas fa-plus text-xl'),
//     ], classes: 'mt-auto md:mt-0'),
//     ],
//       classes:
//         'sidebar w-full md:w-20 flex flex-col md:flex-row items-center py-6 space-y-6 md:space-y-0 md:space-x-6'),
//     div([
//     div([
//       h1([
//       text('    Good evening,    '),
//       span([text('      NIKITIN    ')],
//         classes: 'text-yellow-400'),
//       ], classes: 'text-2xl font-bold'),
//       div([
//       input([],
//         classes: 'px-4 py-2 rounded-full bg-gray-700 text-white',
//         type: InputType.text,
//         attributes: {'placeholder': 'Search'}),
//       i([], classes: 'fas fa-shopping-cart text-xl'),
//       i([], classes: 'fas fa-bell text-xl'),
//       img(
//         classes: 'w-10 h-10 rounded-full',
//         alt: 'User Avatar',
//         height: 40,
//         src:
//           'https://storage.googleapis.com/a1aa/image/Eq9DOHbgPGJeUirpBTStfgpeiwweKuKdYKrfkD5D4EKr8iFdC.jpg',
//         width: 40),
//       ], classes: 'flex items-center space-x-4'),
//     ], classes: 'flex justify-between items-center'),
//     div([
//       div([
//       div([
//         span([text('      Popular      ')],
//           classes: 'highlight px-2 py-1 rounded-full text-sm'),
//         i([], classes: 'fas fa-gamepad'),
//         i([], classes: 'fas fa-users'),
//       ], classes: 'flex items-center space-x-2 mb-4'),
//       h2([text('      Valorant    ')],
//         classes: 'text-3xl font-bold'),
//       p([
//         text(
//           '      Valorant is a multiplayer computer game developed and published by Riot Games. Valorant is Riot Games\' first first-person shooter game.    ')
//       ], classes: 'mt-2'),
//       div([
//         div([
//         img(
//           classes: 'w-8 h-8 rounded-full border-2 border-gray-700',
//           alt: 'User Avatar',
//           height: 30,
//           src:
//             'https://storage.googleapis.com/a1aa/image/Eq9DOHbgPGJeUirpBTStfgpeiwweKuKdYKrfkD5D4EKr8iFdC.jpg',
//           width: 30),
//         img(
//           classes: 'w-8 h-8 rounded-full border-2 border-gray-700',
//           alt: 'User Avatar',
//           height: 30,
//           src:
//             'https://storage.googleapis.com/a1aa/image/Eq9DOHbgPGJeUirpBTStfgpeiwweKuKdYKrfkD5D4EKr8iFdC.jpg',
//           width: 30),
//         img(
//           classes: 'w-8 h-8 rounded-full border-2 border-gray-700',
//           alt: 'User Avatar',
//           height: 30,
//           src:
//             'https://storage.googleapis.com/a1aa/image/Eq9DOHbgPGJeUirpBTStfgpeiwweKuKdYKrfkD5D4EKr8iFdC.jpg',
//           width: 30),
//         ], classes: 'flex -space-x-2'),
//         div([
//         i([], classes: 'fas fa-thumbs-up'),
//         span([text('        +53 Reviews      ')]),
//         ], classes: 'flex items-center space-x-2'),
//       ], classes: 'flex items-center space-x-4 mt-4'),
//       ], classes: 'flex-1'),
//       img(
//         classes: 'w-full md:w-48 h-64 rounded-lg mt-4 md:mt-0',
//         alt: 'Valorant Game Image',
//         height: 300,
//         src:
//           'https://storage.googleapis.com/a1aa/image/fGsrgyFWQ1yDDS2vc5bSEU4TybKgACOzdNT44IZn6wXxLW0JA.jpg',
//         width: 200),
//     ],
//       classes:
//         'card p-6 rounded-lg flex flex-col md:flex-row space-x-0 md:space-x-6'),
//     div([
//       h2([text('    New Games    ')],
//         classes: 'text-xl font-bold mb-4'),
//       div([
//       div([
//         img(
//           classes: 'w-full h-40 rounded-lg mb-4',
//           alt: 'Uncharted 4 Image',
//           height: 200,
//           src:
//             'https://storage.googleapis.com/a1aa/image/cGfyTnRlzfq8hkYdhebcNHCQ1hOh9vmlfqfnXOv2wK9y7iFdC.jpg',
//           width: 300),
//         h3([text('      Uncharted 4      ')],
//           classes: 'text-lg font-bold'),
//         p([
//         text(
//           '      Is the sequel to Uncharted 3: Drake\'s Deception and the final installment of Nathan Drake\'s adventures.      ')
//         ], classes: 'mt-2'),
//       ], classes: 'card p-4 rounded-lg w-full md:w-1/2'),
//       div([
//         img(
//           classes: 'w-full h-40 rounded-lg mb-4',
//           alt: 'Dishonored: Standard Edition Image',
//           height: 200,
//           src:
//             'https://storage.googleapis.com/a1aa/image/2kznr9QUJF6SK5zgpyOgJu0lV4SsFxRedha5i3lrMeWfuYRnA.jpg',
//           width: 300),
//         h3([text('      Dishonored: Standard Edition      ')],
//           classes: 'text-lg font-bold'),
//       ], classes: 'card p-4 rounded-lg w-full md:w-1/2'),
//       ],
//         classes:
//           'flex flex-col md:flex-row space-y-6 md:space-y-0 md:space-x-6'),
//     ]),
//     div([
//       h2([text('    Last Downloads    ')],
//         classes: 'text-xl font-bold mb-4'),
//       div([
//       img(
//         classes: 'w-16 h-16 rounded-lg',
//         alt: 'FIFA 23 Image',
//         height: 60,
//         src:
//           'https://storage.googleapis.com/a1aa/image/TuAMclz2usYmO9OwU9eDpJWH93fbwxfaXV1kVWkf6CVgeiFdC.jpg',
//         width: 60),
//       div([
//         h3([text('      FIFA 23      ')],
//           classes: 'text-lg font-bold'),
//         p([text('      Sports simulator      ')],
//           classes: 'text-sm'),
//       ], classes: 'flex-1'),
//       div([
//         p([text('      1 hour 23 min.      ')],
//           classes: 'text-sm'),
//         p([text('      265Mb of 1,23Gb      ')],
//           classes: 'text-sm'),
//       ], classes: 'text-right'),
//       button([text('      Pause    ')],
//         classes: 'button px-4 py-2 rounded-full'),
//       ], classes: 'card p-4 rounded-lg flex items-center space-x-4'),
//     ]),
//     ], classes: 'flex-1 p-6 space-y-6'),
//     div([
//     div([
//       div([
//       img(
//         classes: 'w-10 h-10 rounded-lg',
//         alt: 'Unravel 2 Image',
//         height: 40,
//         src:
//           'https://storage.googleapis.com/a1aa/image/UlHt1ehxQOwCYaywAUM6e3AXyFKuTPpiLlqHSOslfYfCeiFdC.jpg',
//         width: 40),
//       div([
//         h3([text('      Unravel 2      ')],
//           classes: 'text-lg font-bold'),
//         p([
//         text('      (Standard Edition + Starter Pass)      ')
//         ], classes: 'text-sm'),
//       ]),
//       ], classes: 'card p-4 rounded-lg flex items-center space-x-4'),
//       div([
//       img(
//         classes: 'w-10 h-10 rounded-lg',
//         alt: 'Subway Surf Image',
//         height: 40,
//         src:
//           'https://storage.googleapis.com/a1aa/image/dv1VXelcH6WtBy7FZ3m6AFaRXg3Jaew4HAXBbxWPj4ePvYRnA.jpg',
//         width: 40),
//       div([
//         h3([text('      Subway Surf      ')],
//           classes: 'text-lg font-bold'),
//       ]),
//       ], classes: 'card p-4 rounded-lg flex items-center space-x-4'),
//       div([
//       img(
//         classes: 'w-10 h-10 rounded-lg',
//         alt: 'Red Dead Redemption 3 Image',
//         height: 40,
//         src:
//           'https://storage.googleapis.com/a1aa/image/rt5IMX4CuAa9DFBtFCunwowK72q8MMgF0bWpmAA6Oo44FL6E.jpg',
//         width: 40),
//       div([
//         h3([text('      Red Dead Redemption 3      ')],
//           classes: 'text-lg font-bold'),
//         p([text('      (Premium Pack)      ')],
//           classes: 'text-sm'),
//       ]),
//       ], classes: 'card p-4 rounded-lg flex items-center space-x-4'),
//     ], classes: 'space-y-4'),
//     div([
//       h2([text('    Your Statistic    ')],
//         classes: 'text-xl font-bold mb-4'),
//       div([
//       h3([text('      Total hours    ')],
//         classes: 'text-3xl font-bold'),
//       p([text('      12,340h    ')],
//         classes: 'text-5xl font-bold mt-2'),
//       div([
//         div([
//         i([], classes: 'fas fa-gamepad text-2xl'),
//         p([text('        2,340h      ')], classes: 'mt-2'),
//         ], classes: 'text-center'),
//         div([
//         i([], classes: 'fas fa-gamepad text-2xl'),
//         p([text('        5,420h      ')], classes: 'mt-2'),
//         ], classes: 'text-center'),
//         div([
//         i([], classes: 'fas fa-gamepad text-2xl'),
//         p([text('        4,580h      ')], classes: 'mt-2'),
//         ], classes: 'text-center'),
//       ], classes: 'flex justify-around mt-4'),
//       ], classes: 'card p-6 rounded-lg text-center'),
//     ]),
//     ], classes: 'w-full md:w-64 p-6 space-y-6'),
//   ], classes: 'flex flex-col md:flex-row')
// ]





















































// import 'package:jaspr/jaspr.dart';

// class Neuropet extends StatelessComponent {
//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield html([
//       head([
//         const DomComponent(tag: 'meta', attributes: {'charset': 'utf-8'}),
//         const DomComponent(tag: 'meta', attributes: {'name': 'viewport', 'content': 'width=device-width, initial-scale=1.0'}),
//         DomComponent(tag: 'title', children: [text('Gaming Dashboard')]),
//         script(src: 'https://cdn.tailwindcss.com', []),
//         link(rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'),
//         link(rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap'),
//         DomComponent(tag: 'style', children: [text('''
//      body {
//   font-family: 'Inter', sans-serif;
//   background: radial-gradient(circle, rgba(45, 27, 46, 1) 0%, rgba(58, 31, 63, 1) 100%);
//   color: #FFFFFF;
//   backdrop-filter: blur(10px);
// }
          
//           .sidebar {
//             background: rgba(58, 31, 63, 0.8);
//             backdrop-filter: blur(10px);
//           }
//           .card {
//             background: rgba(74, 42, 74, 0.8);
//             backdrop-filter: blur(10px);
//           }
//           .highlight {
//             background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
//           }
//           .button {
//             background: linear-gradient(135deg, #E5A663 0%, #D4945A 100%);
//             color: #2D1B2E;
//           }
//           .button:hover {
//             background: linear-gradient(135deg, #D4945A 0%, #C3834F 100%);
//           }
//         ''')]),
//       ]),
//       body(classes: 'flex flex-col md:flex-row',  [
//         // Sidebar
//         div(classes: 'sidebar w-full md:w-20 flex flex-col items-center py-6 space-y-6',  [
//           div(classes: 'text-2xl font-bold',  [text('N')]),
//           div(classes: 'space-y-6',  [
//             i(classes: 'fas fa-home text-xl', []),
//             i(classes: 'fas fa-gamepad text-xl', []),
//             i(classes: 'fas fa-gift text-xl', []),
//             i(classes: 'fas fa-users text-xl', []),
//             i(classes: 'fas fa-comment text-xl', []),
//           ]),
//           div(classes: 'mt-auto',  [
//             i(classes: 'fas fa-plus text-xl', []),
//           ]),
//         ]),
//         // Main Content
//         div(classes: 'flex-1 p-6 space-y-6',  [
//           // Header
//           div(classes: 'flex justify-between items-center',  [
//             h1(classes: 'text-2xl font-bold',  [
//               // text('Good evening, '),
//               span(classes: 'text-yellow-400',  [text('NEUROPET')]),
//             ]),
//             div(classes: 'flex items-center space-x-4',  [
//               input(classes: 'px-4 py-2 rounded-full bg-gray-700 text-white', attributes: {'placeholder': 'Search', 'type': 'text'}, []),
//               i(classes: 'fas fa-shopping-cart text-xl', []),
//               i(classes: 'fas fa-bell text-xl', []),
//               img(classes: 'w-10 h-10 rounded-full', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/40x40'}, src: ''),
//             ]),
//           ]),
//           // Featured Game
//           div(classes: 'card p-6 rounded-lg flex flex-col md:flex-row space-x-0 md:space-x-6',  [
//             div(classes: 'flex-1',  [
//               div(classes: 'flex items-center space-x-2 mb-4',  [
//                 span(classes: 'highlight px-2 py-1 rounded-full text-sm',  [text('Popular')]),
//                 i(classes: 'fas fa-gamepad', []),
//                 i(classes: 'fas fa-users', []),
//               ]),
//               h2(classes: 'text-3xl font-bold',  [text('Neuropet space theme')]),
//               p(classes: 'mt-2',  [text('Neuropet is a single player space themed decentralized game for everyone! \' first first-person shooter game.')]),
//               div(classes: 'flex items-center space-x-4 mt-4',  [
//                 div(classes: 'flex -space-x-2',  [
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                   img(classes: 'w-8 h-8 rounded-full border-2 border-gray-700', attributes: {'alt': 'User Avatar', 'src': 'https://placehold.co/30x30'}, src: ''),
//                 ]),
//                 div(classes: 'flex items-center space-x-2',  [
//                   i(classes: 'fas fa-thumbs-up', []),
//                   span([text('+53 Reviews')]),
//                 ]),
//               ]),
//             ]),
//             img(classes: 'w-full md:w-48 h-64 rounded-lg mt-4 md:mt-0', attributes: {'alt': 'Valorant Game Image', 'src': 'https://placehold.co/200x300'}, src: ''),
//           ]),
//           // New Games
//           div( [
//             h2(classes: 'text-xl font-bold mb-4',  [text('New Games')]),
//             div(classes: 'flex flex-col md:flex-row space-y-6 md:space-y-0 md:space-x-6',  [
//               div(classes: 'card p-4 rounded-lg w-full md:w-1/2',  [
//                 img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Uncharted 4 Image', 'src': 'https://placehold.co/300x200'}, src: ''),
//                 h3(classes: 'text-lg font-bold',  [text('Uncharted 4')]),
//                 p(classes: 'mt-2',  [text('Is the sequel to Uncharted 3: Drake\'s Deception and the final installment of Nathan Drake\'s adventures.')]),
//               ]),
//               div(classes: 'card p-4 rounded-lg w-full md:w-1/2',  [
//                 img(classes: 'w-full h-40 rounded-lg mb-4', attributes: {'alt': 'Dishonored: Standard Edition Image', 'src': 'https://placehold.co/300x200'}, src: ''),
//                 h3(classes: 'text-lg font-bold',  [text('Dishonored: Standard Edition')]),
//               ]),
//             ]),
//           ]),
//           // Last Downloads
//           div( [
//             h2(classes: 'text-xl font-bold mb-4',  [text('Last Downloads')]),
//             div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
//               img(classes: 'w-16 h-16 rounded-lg', attributes: {'alt': 'FIFA 23 Image', 'src': 'https://placehold.co/60x60'}, src: ''),
//               div(classes: 'flex-1',  [
//                 h3(classes: 'text-lg font-bold',  [text('FIFA 23')]),
//                 p(classes: 'text-sm',  [text('Sports simulator')]),
//               ]),
//               div(classes: 'text-right',  [
//                 p(classes: 'text-sm',  [text('1 hour 23 min.')]),
//                 p(classes: 'text-sm',  [text('265Mb of 1,23Gb')]),
//               ]),
//               button(classes: 'button px-4 py-2 rounded-full',  [text('Pause')]),
//             ]),
//           ]),
//         ]),
//         // Right Sidebar
//         div(classes: 'w-full md:w-64 p-6 space-y-6',  [
//           // Game List
//           div(classes: 'space-y-4',  [
//             div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
//               img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Unravel 2 Image', 'src': 'https://placehold.co/40x40'}, src: ''),
//               div( [
//                 h3(classes: 'text-lg font-bold',  [text('Unravel 2')]),
//                 p(classes: 'text-sm',  [text('(Standard Edition + Starter Pass)')]),
//               ]),
//             ]),
//             div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
//               img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Subway Surf Image', 'src': 'https://placehold.co/40x40'}, src: ''),
//               div( [
//                 h3(classes: 'text-lg font-bold',  [text('Subway Surf')]),
//               ]),
//             ]),
//             div(classes: 'card p-4 rounded-lg flex items-center space-x-4',  [
//               img(classes: 'w-10 h-10 rounded-lg', attributes: {'alt': 'Red Dead Redemption 3 Image', 'src': 'https://placehold.co/40x40'}, src: ''),
//               div( [
//                 h3(classes: 'text-lg font-bold',  [text('Red Dead Redemption 3')]),
//                 p(classes: 'text-sm',  [text('(Premium Pack)')]),
//               ]),
//             ]),
//           ]),
//           // Statistics
//           div( [
//             h2(classes: 'text-xl font-bold mb-4',  [text('Your Statistic')]),
//             div(classes: 'card p-6 rounded-lg text-center',  [
//               h3(classes: 'text-3xl font-bold',  [text('Total hours')]),
//               p(classes: 'text-5xl font-bold mt-2',  [text('12,340h')]),
//               div(classes: 'flex justify-around mt-4',  [
//                 div(classes: 'text-center',  [
//                   i(classes: 'fas fa-gamepad text-2xl', []),
//                   p(classes: 'mt-2',  [text('2,340h')]),
//                 ]),
//                 div(classes: 'text-center',  [
//                   i(classes: 'fas fa-gamepad text-2xl', []),
//                   p(classes: 'mt-2',  [text('5,420h')]),
//                 ]),
//                 div(classes: 'text-center',  [
//                   i(classes: 'fas fa-gamepad text-2xl', []),
//                   p(classes: 'mt-2',  [text('4,580h')]),
//                 ]),
//               ]),
//             ]),
//           ]),
//         ]),
//       ], ),
//     ]);
//   }
// }























