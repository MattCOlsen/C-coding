/*
 * Name: Matthew Olsen
 * Lab: Lab 5 State Transition Table Scanner
 * Date: 03/02/19
 */

#ifndef __SCANNER_H
#define __SCANNER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

typedef enum
{
    INVALID_TOKEN = 0,
    NUMBER_TOKEN, //1
    IDENT_TOKEN,  //2
    ASSIGNMENT,   //3
    SEMICOLON,    //4
    LPAREN,       //5
    RPAREN,       //6
    PLUS,         //7
    MINUS,        //8
    MULT,         //9
    DIV,          //10
    MOD,          //11
    REPEAT,
    PRINT,
    END_OF_INPUT_TOKEN
} TOKEN_TYPE;

typedef struct token
{
    TOKEN_TYPE type;
    char *strVal;
} TOKEN;

typedef struct
{
    int numberOfStates;
    int numberOfClasses;
    char **inputSymbolClasses;
    char **table;
} TRANS_TABLE_TYPE;

TRANS_TABLE_TYPE *scanInit();
void updateTypeIfKeyword(TOKEN *token);
int findIndexToClass(TRANS_TABLE_TYPE *transitionTable, char c);
TOKEN* scanner(TRANS_TABLE_TYPE *outputTable);
void freeTransTable(TRANS_TABLE_TYPE **transTable);

void ungetToken(TOKEN **);
void freeToken(TOKEN **);

#define BUF_SIZE 128
#define MAX_LINE_LENGTH 256

#endif