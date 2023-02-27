/* contrib/megist/lspgist--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION lspgist" to load this file. \quit

CREATE FUNCTION lspghandler(internal)
RETURNS index_am_handler
AS 'MODULE_PATHNAME'
LANGUAGE C;

-- Access method
CREATE ACCESS METHOD lspgist TYPE INDEX HANDLER lspghandler;
COMMENT ON ACCESS METHOD lspgist IS 'lspgist index access method';