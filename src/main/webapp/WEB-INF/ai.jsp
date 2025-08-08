<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>AI 너무 좋아!</title>

    <!-- Open Graph 메타 태그 -->
    <meta property="og:title" content="250808 AI 챗봇 실습 🤖" />
    <meta property="og:description" content="AI에게 무엇이든 물어보세요. 실시간 채팅처럼 대화해보세요!" />
    <meta property="og:url" content="https://two50808-my-server.onrender.com/ai" />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        @font-face {
            font-family: 'Ownglyph_ParkDaHyun';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2411-3@1.0/Ownglyph_ParkDaHyun.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            background: linear-gradient(135deg, #e0f7fa, #f0f4ff);
            font-family: 'Ownglyph_ParkDaHyun', sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .chat-box {
            width: 100%;
            max-width: 600px;
            background: #ffffff;
            border-radius: 16px;
            padding: 30px 25px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }

        .chat-box h3 {
            font-size: 1.8rem;
            margin-bottom: 25px;
        }

        .chat-container {
            display: flex;
            flex-direction: column;
            gap: 10px;
            min-height: 150px;
        }

        .message {
            padding: 12px 18px;
            border-radius: 18px;
            font-size: 1rem;
            max-width: 75%;
            word-break: break-word;
        }

        .user {
            background-color: #d1e7dd;
            align-self: flex-end;
            border-bottom-right-radius: 0;
        }

        .bot {
            background-color: #e2e3e5;
            align-self: flex-start;
            border-bottom-left-radius: 0;
        }

        .input-group input {
            border-radius: 50px 0 0 50px;
            padding: 12px 20px;
            box-shadow: none;
            transition: box-shadow 0.2s;
        }

        .input-group input:focus {
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }

        .input-group .btn {
            border-radius: 0 50px 50px 0;
            padding: 12px 24px;
        }
    </style>
</head>

<body>
    <div class="chat-box">
        <h3 class="text-center">AI에게 질문하세요! 🤖</h3>

        <div class="chat-container">
            <% if (request.getAttribute("question") != null) { %>
                <div class="message user">
                    <strong>나:</strong> <%= request.getAttribute("question") %>
                </div>
            <% } %>

            <% if (request.getAttribute("data") != null) { %>
                <div class="message bot">
                    <strong>AI:</strong> <%= request.getAttribute("data") %>
                </div>
            <% } %>
        </div>

        <form method="post" class="mt-4">
            <div class="input-group">
                <input name="question" class="form-control" placeholder="AI에게 물어보세요!" required>
                <button class="btn btn-primary">질문하기</button>
            </div>
        </form>
    </div>
</body>
</html>
