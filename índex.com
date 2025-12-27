<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Joice Lima | Front-End Developer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    :root {
      --primary: #6c4ed9;
      --secondary: #bfa8ff;
      --bg: #0e0e1a;
      --card: #1a1a2e;
      --text: #ffffff;
      --muted: #cfcfe6;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", sans-serif;
    }

    body {
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }

    header {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 40px;
      background: linear-gradient(135deg, #6c4ed9, #3b2a7a);
    }

    header h1 {
      font-size: 3rem;
    }

    header p {
      margin-top: 15px;
      font-size: 1.2rem;
      color: #eeeaff;
    }

    header span {
      color: #ffd6ff;
      font-weight: bold;
    }

    section {
      padding: 80px 10%;
    }

    h2 {
      font-size: 2.2rem;
      margin-bottom: 30px;
      color: var(--secondary);
    }

    .about p {
      max-width: 900px;
      color: var(--muted);
      font-size: 1.05rem;
    }

    .projects {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 30px;
    }

    .project-card {
      background: var(--card);
      padding: 25px;
      border-radius: 15px;
      transition: transform 0.3s ease;
    }

    .project-card:hover {
      transform: translateY(-8px);
    }

    .project-card h3 {
      color: var(--secondary);
      margin-bottom: 10px;
    }

    .project-card p {
      color: var(--muted);
      font-size: 0.95rem;
      margin-bottom: 15px;
    }

    .project-card a {
      text-decoration: none;
      color: #ffd6ff;
      font-weight: bold;
      margin-right: 12px;
    }

    .contact {
      text-align: center;
    }

    .contact a {
      display: inline-block;
      margin: 10px 15px;
      color: var(--secondary);
      text-decoration: none;
      font-size: 1.1rem;
    }

    footer {
      text-align: center;
      padding: 20px;
      background: #0a0a14;
      color: #aaa;
      font-size: 0.9rem;
    }

    @media (max-width: 768px) {
      header h1 {
        font-size: 2.2rem;
      }
    }
  </style>
</head>

<body>

  <!-- HERO -->
  <header>
    <div>
      <h1>Joice Lima</h1>
      <p>
        Front-End Developer <br>
        <span>HTML • CSS • JavaScript • UI Design</span><br>
        Open to Remote & Relocation (Europe)
      </p>
    </div>
  </header>

  <!-- ABOUT -->
  <section class="about">
    <h2>About Me</h2>
    <p>
      Front-End Developer with a technical degree in Systems Development.
      I build modern, responsive and accessible web interfaces with a strong
      focus on user experience. I have hands-on experience developing and
      deploying real-world projects using Vercel.
      Currently open to remote opportunities or relocation within Europe,
      especially Germany and Spain.
    </p>
  </section>

  <!-- PROJECTS -->
  <section>
    <h2>Projects</h2>

    <div class="projects">

      <div class="project-card">
        <h3>FullBelly</h3>
        <p>
          Front-end application for a social project focused on food donation
          and hunger reduction. Developed responsive UI and user interaction.
        </p>
        <a href="https://fullbelly-front.vercel.app" target="_blank">Live Demo</a>
        <a href="https://github.com/Joicexxh/fullbelly-front-" target="_blank">GitHub</a>
      </div>

      <div class="project-card">
        <h3>English with Paul</h3>
        <p>
          Educational website designed to support English learning with a clean,
          friendly and accessible interface.
        </p>
        <a href="https://english-project-green.vercel.app/" target="_blank">Live Demo</a>
        <a href="https://github.com/Joicexxh/englishcompaul" target="_blank">GitHub</a>
      </div>

      <div class="project-card">
        <h3>Colibri Connect</h3>
        <p>
          Web platform created to connect people through digital services.
          Focused on layout structure, responsiveness and usability.
        </p>
        <a href="https://colibriconnectt.vercel.app/" target="_blank">Live Demo</a>
        <a href="https://github.com/Joicexxh/colibriconnectt" target="_blank">GitHub</a>
      </div>

    </div>
  </section>

  <!-- CONTACT -->
  <section class="contact">
    <h2>Contact</h2>
    <a href="https://www.linkedin.com/" target="_blank">LinkedIn</a>
    <a href="https://github.com/Joicexxh" target="_blank">GitHub</a>
    <a href="mailto:joice@email.com">Email</a>
  </section>

  <footer>
    © 2025 • Joice Lima • Front-End Developer
  </footer>

</body>
</html>
