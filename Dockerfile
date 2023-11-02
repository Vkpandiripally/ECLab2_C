# Set the base image to use
FROM gcc:latest
# Copy the C program into the container
COPY nfl_scores.c .
# Compile the C program
RUN gcc -o nfl_scores nfl_scores.c
# Set the command to run when the container starts
CMD ["./nfl_scores"]