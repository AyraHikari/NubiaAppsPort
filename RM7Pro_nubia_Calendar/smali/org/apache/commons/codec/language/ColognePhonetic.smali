.class public Lorg/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
    }
.end annotation


# static fields
.field private static final PREPROCESS_MAP:[[C

.field static class$java$lang$String:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    return-void

    :array_0
    .array-data 2
        0xc4s
        0x41s
    .end array-data

    :array_1
    .array-data 2
        0xdcs
        0x55s
    .end array-data

    :array_2
    .array-data 2
        0xd6s
        0x4fs
    .end array-data

    :array_3
    .array-data 2
        0xdfs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 2
    .param p0, "arr"    # [C
    .param p1, "key"    # C

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 273
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 274
    const/4 v1, 0x1

    .line 277
    :goto_1
    return v1

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 380
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 400
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 404
    .local v0, "chrs":[C
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 405
    aget-char v3, v0, v1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    .line 406
    const/4 v2, 0x0

    .local v2, "replacement":I
    :goto_1
    sget-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 407
    aget-char v3, v0, v1

    sget-object v4, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_1

    .line 408
    sget-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 404
    .end local v2    # "replacement":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .restart local v2    # "replacement":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    .end local v2    # "replacement":I
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x48

    const/16 v12, 0x30

    const/4 v11, 0x7

    const/16 v10, 0x2f

    const/4 v9, 0x3

    .line 292
    if-nez p1, :cond_0

    .line 293
    const/4 v8, 0x0

    .line 374
    :goto_0
    return-object v8

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    new-instance v6, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, p0, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V

    .line 299
    .local v6, "output":Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
    new-instance v2, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 303
    .local v2, "input":Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
    const/16 v3, 0x2d

    .line 304
    .local v3, "lastChar":C
    const/16 v4, 0x2f

    .line 308
    .local v4, "lastCode":C
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    .line 310
    .local v7, "rightLength":I
    :cond_1
    :goto_1
    if-lez v7, :cond_1c

    .line 311
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v0

    .line 313
    .local v0, "chr":C
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 314
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v5

    .line 319
    .local v5, "nextChar":C
    :goto_2
    new-array v8, v11, [C

    fill-array-data v8, :array_0

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 320
    const/16 v1, 0x30

    .line 367
    .local v1, "code":C
    :goto_3
    const/16 v8, 0x2d

    if-eq v1, v8, :cond_4

    if-eq v4, v1, :cond_2

    if-ne v1, v12, :cond_3

    if-eq v4, v10, :cond_3

    :cond_2
    if-lt v1, v12, :cond_3

    const/16 v8, 0x38

    if-le v1, v8, :cond_4

    .line 368
    :cond_3
    invoke-virtual {v6, v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    .line 371
    :cond_4
    move v3, v0

    .line 372
    move v4, v1

    goto :goto_1

    .line 316
    .end local v1    # "code":C
    .end local v5    # "nextChar":C
    :cond_5
    const/16 v5, 0x2d

    .restart local v5    # "nextChar":C
    goto :goto_2

    .line 321
    :cond_6
    if-eq v0, v13, :cond_7

    const/16 v8, 0x41

    if-lt v0, v8, :cond_7

    const/16 v8, 0x5a

    if-le v0, v8, :cond_8

    .line 322
    :cond_7
    if-eq v4, v10, :cond_1

    .line 325
    const/16 v1, 0x2d

    .restart local v1    # "code":C
    goto :goto_3

    .line 326
    .end local v1    # "code":C
    :cond_8
    const/16 v8, 0x42

    if-eq v0, v8, :cond_9

    const/16 v8, 0x50

    if-ne v0, v8, :cond_a

    if-eq v5, v13, :cond_a

    .line 327
    :cond_9
    const/16 v1, 0x31

    .restart local v1    # "code":C
    goto :goto_3

    .line 328
    .end local v1    # "code":C
    :cond_a
    const/16 v8, 0x44

    if-eq v0, v8, :cond_b

    const/16 v8, 0x54

    if-ne v0, v8, :cond_c

    :cond_b
    new-array v8, v9, [C

    fill-array-data v8, :array_1

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_c

    .line 329
    const/16 v1, 0x32

    .restart local v1    # "code":C
    goto :goto_3

    .line 330
    .end local v1    # "code":C
    :cond_c
    const/4 v8, 0x4

    new-array v8, v8, [C

    fill-array-data v8, :array_2

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 331
    const/16 v1, 0x33

    .restart local v1    # "code":C
    goto :goto_3

    .line 332
    .end local v1    # "code":C
    :cond_d
    new-array v8, v9, [C

    fill-array-data v8, :array_3

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 333
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto :goto_3

    .line 334
    .end local v1    # "code":C
    :cond_e
    const/16 v8, 0x58

    if-ne v0, v8, :cond_f

    new-array v8, v9, [C

    fill-array-data v8, :array_4

    invoke-static {v8, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_f

    .line 335
    const/16 v1, 0x34

    .line 336
    .restart local v1    # "code":C
    const/16 v8, 0x53

    invoke-virtual {v2, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 338
    .end local v1    # "code":C
    :cond_f
    const/16 v8, 0x53

    if-eq v0, v8, :cond_10

    const/16 v8, 0x5a

    if-ne v0, v8, :cond_11

    .line 339
    :cond_10
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 340
    .end local v1    # "code":C
    :cond_11
    const/16 v8, 0x43

    if-ne v0, v8, :cond_16

    .line 341
    if-ne v4, v10, :cond_13

    .line 342
    const/16 v8, 0x9

    new-array v8, v8, [C

    fill-array-data v8, :array_5

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 343
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 345
    .end local v1    # "code":C
    :cond_12
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 348
    .end local v1    # "code":C
    :cond_13
    const/4 v8, 0x2

    new-array v8, v8, [C

    fill-array-data v8, :array_6

    invoke-static {v8, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_14

    new-array v8, v11, [C

    fill-array-data v8, :array_7

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_15

    .line 350
    :cond_14
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 352
    .end local v1    # "code":C
    :cond_15
    const/16 v1, 0x34

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 355
    .end local v1    # "code":C
    :cond_16
    new-array v8, v9, [C

    fill-array-data v8, :array_8

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 356
    const/16 v1, 0x38

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 357
    .end local v1    # "code":C
    :cond_17
    const/16 v8, 0x52

    if-ne v0, v8, :cond_18

    .line 358
    const/16 v1, 0x37

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 359
    .end local v1    # "code":C
    :cond_18
    const/16 v8, 0x4c

    if-ne v0, v8, :cond_19

    .line 360
    const/16 v1, 0x35

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 361
    .end local v1    # "code":C
    :cond_19
    const/16 v8, 0x4d

    if-eq v0, v8, :cond_1a

    const/16 v8, 0x4e

    if-ne v0, v8, :cond_1b

    .line 362
    :cond_1a
    const/16 v1, 0x36

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 364
    .end local v1    # "code":C
    :cond_1b
    move v1, v0

    .restart local v1    # "code":C
    goto/16 :goto_3

    .line 374
    .end local v0    # "chr":C
    .end local v1    # "code":C
    .end local v5    # "nextChar":C
    :cond_1c
    invoke-virtual {v6}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 319
    :array_0
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    .line 328
    nop

    :array_1
    .array-data 2
        0x53s
        0x43s
        0x5as
    .end array-data

    .line 330
    nop

    :array_2
    .array-data 2
        0x57s
        0x46s
        0x50s
        0x56s
    .end array-data

    .line 332
    :array_3
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    .line 334
    nop

    :array_4
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    .line 342
    nop

    :array_5
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    .line 348
    nop

    :array_6
    .array-data 2
        0x53s
        0x5as
    .end array-data

    :array_7
    .array-data 2
        0x41s
        0x48s
        0x4fs
        0x55s
        0x4bs
        0x51s
        0x58s
    .end array-data

    .line 355
    nop

    :array_8
    .array-data 2
        0x54s
        0x44s
        0x58s
    .end array-data
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 378
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 379
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "This method\u2019s parameter was expected to be of the type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    .line 385
    :cond_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
