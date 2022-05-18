.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 70
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .prologue
    .line 350
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 334
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v0, 0x1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "matches":Z
    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 325
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v0, 0x1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I

    .prologue
    .line 318
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 343
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 367
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x58

    const/16 v12, 0x4b

    const/16 v11, 0x53

    const/16 v10, 0x48

    const/4 v9, 0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "hard":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 85
    :cond_0
    const-string v7, ""

    .line 314
    :goto_0
    return-object v7

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 89
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 92
    :cond_2
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 94
    .local v2, "inwd":[C
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v7, 0x28

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v3, "local":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v0, "code":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    aget-char v7, v2, v7

    sparse-switch v7, :sswitch_data_0

    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 134
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 135
    .local v6, "wdsz":I
    const/4 v4, 0x0

    .line 137
    .local v4, "n":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v8

    if-ge v7, v8, :cond_1f

    if-ge v4, v6, :cond_1f

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 141
    .local v5, "symb":C
    const/16 v7, 0x43

    if-eq v5, v7, :cond_8

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 142
    add-int/lit8 v4, v4, 0x1

    .line 310
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 311
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 101
    .end local v4    # "n":I
    .end local v5    # "symb":C
    .end local v6    # "wdsz":I
    :sswitch_0
    aget-char v7, v2, v9

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_4

    .line 102
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 108
    :sswitch_1
    aget-char v7, v2, v9

    const/16 v8, 0x45

    if-ne v7, v8, :cond_5

    .line 109
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :sswitch_2
    aget-char v7, v2, v9

    const/16 v8, 0x52

    if-ne v7, v8, :cond_6

    .line 116
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_6
    aget-char v7, v2, v9

    if-ne v7, v10, :cond_7

    .line 120
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    const/4 v7, 0x0

    const/16 v8, 0x57

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 123
    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :sswitch_3
    const/4 v7, 0x0

    aput-char v11, v2, v7

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 144
    .restart local v4    # "n":I
    .restart local v5    # "symb":C
    .restart local v6    # "wdsz":I
    :cond_8
    packed-switch v5, :pswitch_data_0

    .line 308
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 146
    :pswitch_0
    if-nez v4, :cond_9

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 151
    :pswitch_1
    const/16 v7, 0x4d

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 155
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 159
    :pswitch_2
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "EIY"

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_9

    .line 164
    :cond_b
    const-string v7, "CIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 165
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 168
    :cond_c
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "EIY"

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d

    .line 170
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 173
    :cond_d
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 175
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 178
    :cond_e
    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 179
    if-nez v4, :cond_f

    const/4 v7, 0x3

    if-lt v6, v7, :cond_f

    const/4 v7, 0x2

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 182
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 184
    :cond_f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 187
    :cond_10
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 191
    :pswitch_3
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_11

    const/16 v7, 0x47

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "EIY"

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_11

    .line 194
    const/16 v7, 0x4a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_4

    .line 196
    :cond_11
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 200
    :pswitch_4
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_9

    .line 204
    :cond_12
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v7, v4, 0x2

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 209
    :cond_13
    if-lez v4, :cond_14

    const-string v7, "GN"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "GNED"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 214
    :cond_14
    const/16 v7, 0x47

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 216
    const/4 v1, 0x1

    .line 220
    :goto_5
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "EIY"

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_16

    if-nez v1, :cond_16

    .line 223
    const/16 v7, 0x4a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 218
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 225
    :cond_16
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 229
    :pswitch_5
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 232
    if-lez v4, :cond_17

    const-string v7, "CSPTG"

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_9

    .line 236
    :cond_17
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 237
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 246
    :pswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 249
    :pswitch_7
    if-lez v4, :cond_18

    .line 250
    const/16 v7, 0x43

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_9

    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 254
    :cond_18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 258
    :pswitch_8
    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 260
    const/16 v7, 0x46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 262
    :cond_19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 266
    :pswitch_9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 269
    :pswitch_a
    const-string v7, "SH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "SIO"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "SIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 272
    :cond_1a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 274
    :cond_1b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 278
    :pswitch_b
    const-string v7, "TIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "TIO"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 280
    :cond_1c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 283
    :cond_1d
    const-string v7, "TCH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 288
    const-string v7, "TH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 289
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 291
    :cond_1e
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 295
    :pswitch_c
    const/16 v7, 0x46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 297
    :pswitch_d
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 303
    :pswitch_e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 306
    :pswitch_f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 314
    .end local v5    # "symb":C
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 144
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .prologue
    .line 405
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
