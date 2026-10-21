// AI Service for handling prompts and generating responses
import { GoogleGenerativeAI } from "@google/generative-ai";

const genAI = new GoogleGenerativeAI("YOUR_API_KEY_HERE");

export async function getAiResponse(promptText) {
    try {
        const model = genAI.getGenerativeModel({ model: "gemini-pro" });
        const result = await model.generateContent(promptText);
        const response = await result.response;
        return response.text();
    } catch (error) {
        console.error("AI Generation Error:", error);
        return "Mala sadhya connect hot naiye, punha prayatna kara!";
    }
}
