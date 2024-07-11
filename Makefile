MKDIR_P = mkdir -p
BUILD_DIR = bin
OUTPUT = game

all: clean build run

clean:
	@echo "Cleaning..."
	@rm -rf $(BUILD_DIR)

build:
	@echo "Building..."
	@$(MKDIR_P) $(BUILD_DIR)
	@gcc -o $(BUILD_DIR)/$(OUTPUT) main.c -framework OpenGL -framework GLUT

run:
	@echo "Running..."
	@./$(BUILD_DIR)/$(OUTPUT)