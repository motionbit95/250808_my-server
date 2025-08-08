<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>AI 너무 좋아!</title>
    <!-- Bootstrap CDN 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
        }
        .chat-box {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .message {
            margin: 10px 0;
            padding: 10px 15px;
            border-radius: 20px;
            max-width: 75%;
            display: inline-block;
            font-size: 16px;
        }
        .user {
            background-color: #d1e7dd;
            align-self: flex-end;
            margin-left: auto;
        }
        .bot {
            background-color: #e2e3e5;
            align-self: flex-start;
            margin-right: auto;
        }
        .chat-container {
            display: flex;
            flex-direction: column;
        }
        .input-group {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="chat-box">
        <h3 class="text-center mb-4">AI 너무 좋아! 🤖</h3>

        <div class="chat-container">
            <% if (request.getAttribute("question") != null) { %>
                <!-- 사용자 질문 -->
                <div class="message user">
                    <strong>나:</strong> <%= request.getAttribute("question") %>
                </div>
            <% } %>

            <% if (request.getAttribute("data") != null) { %>
                <!-- AI 답변 -->
                <div class="message bot">
                    <strong>AI:</strong> <%= request.getAttribute("data") %>
                </div>
            <% } %>
        </div>

        <!-- 입력 폼 -->
        <form method="post" class="mt-3">
            <div class="input-group">
                <input name="question" class="form-control" placeholder="AI에게 물어보세요!" required>
                <button class="btn btn-primary">질문하기</button>
            </div>
        </form>
    </div>
</body>
</html>
