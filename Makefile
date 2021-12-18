DEST_DIR=~

BIN_DIR_NAME=bin
LIB_DIR_NAME=lib

BIN_DIR=${DEST_DIR}/${BIN_DIR_NAME}
LIB_DIR=${DEST_DIR}/${LIB_DIR_NAME}

GIT_OPTIONS=

all:
	bash install.sh \
		"${DEST_DIR}" \
		"${BIN_DIR_NAME}" \
		"${LIB_DIR_NAME}" \
		"${BIN_DIR}" \
		"${LIB_DIR}" \
		"${GIT_OPTIONS}"
