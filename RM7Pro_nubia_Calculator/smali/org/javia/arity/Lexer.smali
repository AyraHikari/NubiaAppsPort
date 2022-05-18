.class Lorg/javia/arity/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final ADD:I = 0x1

.field static final CALL:I = 0xb

.field static final COMMA:I = 0xc

.field static final CONST:I = 0xa

.field static final DIV:I = 0x4

.field static final END:I = 0xf

.field private static final END_MARKER:C = '$'

.field static final FACT:I = 0x8

.field static final LPAREN:I = 0xd

.field static final MOD:I = 0x5

.field static final MUL:I = 0x3

.field static final NUMBER:I = 0x9

.field static final PERCENT:I = 0x11

.field static final POWER:I = 0x7

.field static final RPAREN:I = 0xe

.field static final SQRT:I = 0x10

.field static final SUB:I = 0x2

.field static final TOK_ADD:Lorg/javia/arity/Token;

.field static final TOK_COMMA:Lorg/javia/arity/Token;

.field static final TOK_CONST:Lorg/javia/arity/Token;

.field static final TOK_DIV:Lorg/javia/arity/Token;

.field static final TOK_END:Lorg/javia/arity/Token;

.field static final TOK_FACT:Lorg/javia/arity/Token;

.field static final TOK_LPAREN:Lorg/javia/arity/Token;

.field static final TOK_MOD:Lorg/javia/arity/Token;

.field static final TOK_MUL:Lorg/javia/arity/Token;

.field static final TOK_NUMBER:Lorg/javia/arity/Token;

.field static final TOK_PERCENT:Lorg/javia/arity/Token;

.field static final TOK_POWER:Lorg/javia/arity/Token;

.field static final TOK_RPAREN:Lorg/javia/arity/Token;

.field static final TOK_SQRT:Lorg/javia/arity/Token;

.field static final TOK_SUB:Lorg/javia/arity/Token;

.field static final TOK_UMIN:Lorg/javia/arity/Token;

.field static final UMIN:I = 0x6

.field private static final UNICODE_DIV:C = '\u00f7'

.field private static final UNICODE_MINUS:C = '\u2212'

.field private static final UNICODE_MUL:C = '\u00d7'

.field private static final UNICODE_SQRT:C = '\u221a'

.field private static final WHITESPACE:Ljava/lang/String; = " \n\r\t"


# instance fields
.field private exception:Lorg/javia/arity/SyntaxException;

.field private input:[C

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    .line 41
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v4, v3, v4, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    .line 43
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v4, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    .line 44
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v6, 0x6

    invoke-direct {v0, v3, v5, v4, v6}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    .line 45
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v7, 0x7

    invoke-direct {v0, v5, v5, v4, v7}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    .line 47
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v5, 0x9

    invoke-direct {v0, v6, v6, v2, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 49
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v6, 0xa

    invoke-direct {v0, v7, v7, v1, v6}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    .line 51
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v7, 0x8

    const/16 v8, 0xb

    invoke-direct {v0, v7, v7, v3, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    .line 52
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v7, 0xc

    const/16 v8, 0x11

    invoke-direct {v0, v8, v5, v3, v7}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_PERCENT:Lorg/javia/arity/Token;

    .line 54
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v3, 0xd

    const/16 v8, 0x10

    invoke-direct {v0, v8, v6, v2, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    .line 56
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v2, v2, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    .line 57
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1, v8, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 58
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v7, v4, v8, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    .line 59
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v8, v8, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    .line 61
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x14

    invoke-direct {v0, v5, v1, v8, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    .line 62
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v6, v1, v8, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 72
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 77
    iput-object p1, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 98
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 99
    new-array v1, v2, [C

    iput-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    iget-object p1, p0, Lorg/javia/arity/Lexer;->input:[C

    const/16 v1, 0x24

    aput-char v1, p1, v0

    .line 103
    iput v2, p0, Lorg/javia/arity/Lexer;->pos:I

    return-void
.end method


# virtual methods
.method nextToken()Lorg/javia/arity/Token;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    :goto_0
    const-string v0, " \n\r\t"

    .line 107
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v2, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 108
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v3, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v0, v0, v3

    .line 112
    iget v3, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/javia/arity/Lexer;->pos:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :pswitch_0
    iget v4, p0, Lorg/javia/arity/Lexer;->pos:I

    const/16 v5, 0x2212

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/16 v8, 0x5a

    const/16 v9, 0x41

    const/16 v10, 0x7a

    const/16 v11, 0x61

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-gt v13, v0, :cond_1

    if-le v0, v12, :cond_2

    goto :goto_1

    .line 125
    :pswitch_1
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    return-object p0

    .line 124
    :pswitch_2
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    return-object p0

    .line 123
    :pswitch_3
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    return-object p0

    .line 122
    :pswitch_4
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    return-object p0

    .line 121
    :pswitch_5
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    return-object p0

    .line 120
    :pswitch_6
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    return-object p0

    .line 119
    :pswitch_7
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    return-object p0

    .line 117
    :pswitch_8
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_PERCENT:Lorg/javia/arity/Token;

    return-object p0

    .line 116
    :pswitch_9
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    return-object p0

    .line 118
    :pswitch_a
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    return-object p0

    .line 115
    :pswitch_b
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    return-object p0

    :cond_1
    :goto_1
    if-ne v0, v6, :cond_12

    :cond_2
    if-ne v0, v13, :cond_a

    .line 131
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v14, 0x78

    if-ne v1, v14, :cond_3

    const/16 v7, 0x10

    goto :goto_2

    :cond_3
    const/16 v14, 0x62

    if-ne v1, v14, :cond_4

    const/4 v7, 0x2

    goto :goto_2

    :cond_4
    const/16 v14, 0x6f

    if-ne v1, v14, :cond_5

    const/16 v7, 0x8

    :cond_5
    :goto_2
    if-lez v7, :cond_a

    add-int/2addr v4, v2

    .line 136
    :goto_3
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v4, 0x1

    aget-char v0, v0, v4

    if-gt v11, v0, :cond_6

    if-le v0, v10, :cond_8

    :cond_6
    if-gt v9, v0, :cond_7

    if-le v0, v8, :cond_8

    :cond_7
    if-gt v13, v0, :cond_9

    if-le v0, v12, :cond_8

    goto :goto_4

    :cond_8
    move v4, v1

    goto :goto_3

    .line 140
    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v1, -0x3

    sub-int/2addr v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    sub-int/2addr v1, v2

    .line 141
    iput v1, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 143
    :try_start_0
    sget-object v2, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/javia/arity/Lexer;->input:[C

    sub-int/2addr v1, v3

    invoke-static {p0, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_5
    const/16 v1, 0x65

    const/16 v7, 0x45

    if-gt v13, v0, :cond_b

    if-le v0, v12, :cond_e

    :cond_b
    if-eq v0, v6, :cond_e

    if-eq v0, v7, :cond_e

    if-ne v0, v1, :cond_c

    goto :goto_6

    :cond_c
    sub-int/2addr v4, v2

    .line 158
    iput v4, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 159
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v1, "."

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 163
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;

    move-result-object v1

    return-object v1

    .line 165
    :cond_d
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 166
    sget-object v4, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    invoke-virtual {v4, v1, v2}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 169
    :catch_1
    iget-object p0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid number \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    :cond_e
    :goto_6
    if-eq v0, v7, :cond_f

    if-ne v0, v1, :cond_11

    .line 152
    :cond_f
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v0, v0, v4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v0, v0, v4

    if-ne v0, v5, :cond_11

    .line 153
    :cond_10
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    aput-char v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 156
    :cond_11
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v4, 0x1

    aget-char v0, v0, v4

    move v4, v1

    goto :goto_5

    :cond_12
    if-gt v11, v0, :cond_13

    if-le v0, v10, :cond_14

    :cond_13
    if-gt v9, v0, :cond_1c

    if-gt v0, v8, :cond_1c

    .line 174
    :cond_14
    :goto_7
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v5, v4, 0x1

    aget-char v0, v0, v4

    if-gt v11, v0, :cond_15

    if-le v0, v10, :cond_17

    :cond_15
    if-gt v9, v0, :cond_16

    if-le v0, v8, :cond_17

    :cond_16
    if-gt v13, v0, :cond_18

    if-le v0, v12, :cond_17

    goto :goto_8

    :cond_17
    move v4, v5

    goto :goto_7

    :cond_18
    :goto_8
    const/16 v4, 0x27

    if-ne v0, v4, :cond_19

    .line 179
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v4, v5, 0x1

    aget-char v0, v0, v5

    goto :goto_9

    :cond_19
    move v4, v5

    .line 181
    :goto_9
    iget-object v5, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v6, v4, -0x1

    sub-int/2addr v6, v3

    invoke-static {v5, v3, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    :goto_a
    const-string v5, " \n\r\t"

    .line 182
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_1a

    .line 183
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v5, v4, 0x1

    aget-char v0, v0, v4

    move v4, v5

    goto :goto_a

    :cond_1a
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1b

    .line 186
    iput v4, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 187
    new-instance p0, Lorg/javia/arity/Token;

    const/16 v0, 0xb

    invoke-direct {p0, v0, v7, v2, v7}, Lorg/javia/arity/Token;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object p0

    return-object p0

    :cond_1b
    sub-int/2addr v4, v2

    .line 189
    iput v4, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 190
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    invoke-virtual {p0, v3}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 v1, 0x391

    if-lt v0, v1, :cond_1d

    const/16 v1, 0x3a9

    if-le v0, v1, :cond_1f

    :cond_1d
    const/16 v1, 0x3b1

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x3c9

    if-le v0, v1, :cond_1f

    :cond_1e
    const/16 v1, 0x221e

    if-ne v0, v1, :cond_20

    .line 194
    :cond_1f
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object p0

    return-object p0

    :cond_20
    const/16 v1, 0x5e

    if-eq v0, v1, :cond_25

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_24

    const/16 v1, 0xf7

    if-eq v0, v1, :cond_23

    if-eq v0, v5, :cond_22

    const/16 v1, 0x221a

    if-ne v0, v1, :cond_21

    .line 206
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    return-object p0

    .line 208
    :cond_21
    iget-object p0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 204
    :cond_22
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    return-object p0

    .line 202
    :cond_23
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    return-object p0

    .line 200
    :cond_24
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    return-object p0

    .line 198
    :cond_25
    sget-object p0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    iput-object p1, v0, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    const/16 v0, 0x24

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lorg/javia/arity/Lexer;->init(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lorg/javia/arity/TokenConsumer;->start()V

    .line 89
    :cond_0
    iget p1, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 90
    invoke-virtual {p0}, Lorg/javia/arity/Lexer;->nextToken()Lorg/javia/arity/Token;

    move-result-object v0

    .line 91
    iput p1, v0, Lorg/javia/arity/Token;->position:I

    .line 92
    invoke-virtual {p2, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 93
    sget-object p1, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_1
    iget-object p0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const-string p2, "Invalid character \'$\'"

    invoke-virtual {p0, p2, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0
.end method
