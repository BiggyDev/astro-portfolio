FROM node:lts-alpine AS runtime
WORKDIR /app

COPY . .

RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml* ./
RUN pnpm install
RUN pnpm run build

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
CMD ["pnpm", "run", "dev"]
