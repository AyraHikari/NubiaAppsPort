.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1598
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1621
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 1421
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1423
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1581
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1583
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1594
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private doPeek()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 464
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 465
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_3

    .line 466
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 551
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 552
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 581
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 584
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 589
    .local v2, "result":I
    if-eqz v2, :cond_14

    .line 603
    .end local v2    # "result":I
    :cond_2
    :goto_1
    return v2

    .line 467
    .end local v0    # "c":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 469
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 470
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 478
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 472
    :sswitch_1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 474
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 480
    .end local v0    # "c":I
    :cond_4
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    if-ne v1, v8, :cond_9

    .line 481
    :cond_5
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 483
    if-ne v1, v8, :cond_6

    .line 484
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 485
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    .line 493
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 487
    :sswitch_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 489
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 496
    .end local v0    # "c":I
    :cond_6
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 497
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 510
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 511
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 512
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 513
    const/16 v2, 0xe

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 499
    :sswitch_6
    const/16 v2, 0xd

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 501
    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 502
    const/16 v2, 0xc

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 504
    :sswitch_8
    if-eq v1, v8, :cond_7

    .line 505
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 507
    :cond_7
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 515
    :cond_8
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 518
    .end local v0    # "c":I
    :cond_9
    if-ne v1, v2, :cond_b

    .line 519
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 521
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 522
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    .line 532
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 526
    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 527
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_a

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 528
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 534
    .end local v0    # "c":I
    :cond_b
    const/4 v6, 0x6

    if-ne v1, v6, :cond_d

    .line 535
    iget-boolean v6, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v6, :cond_c

    .line 536
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 538
    :cond_c
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 539
    :cond_d
    if-ne v1, v5, :cond_f

    .line 540
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 541
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_e

    .line 542
    const/16 v2, 0x11

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 544
    :cond_e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 545
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 547
    .end local v0    # "c":I
    :cond_f
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 548
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 554
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_10

    .line 555
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 561
    :cond_10
    :sswitch_a
    if-eq v1, v4, :cond_11

    if-ne v1, v3, :cond_12

    .line 562
    :cond_11
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 563
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 564
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 566
    :cond_12
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 569
    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 570
    const/16 v2, 0x8

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 572
    :sswitch_c
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_13

    .line 573
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 575
    :cond_13
    const/16 v2, 0x9

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 577
    :sswitch_d
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 579
    :sswitch_e
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 593
    .restart local v2    # "result":I
    :cond_14
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 594
    if-nez v2, :cond_2

    .line 598
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 599
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 602
    :cond_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 603
    const/16 v2, 0xa

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 552
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 470
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 485
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 497
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 522
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1287
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1288
    .local v0, "buffer":[C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1289
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v3, v4, :cond_3

    .line 1290
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1291
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    :goto_0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1298
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v5, v0

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1299
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1302
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v3, :cond_1

    aget-char v3, v0, v2

    const v4, 0xfeff

    if-ne v3, v4, :cond_1

    .line 1303
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1304
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1305
    add-int/lit8 p1, p1, 0x1

    .line 1308
    :cond_1
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, p1, :cond_0

    .line 1309
    const/4 v2, 0x1

    .line 1312
    :cond_2
    return v2

    .line 1293
    .end local v1    # "total":I
    :cond_3
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1320
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    sparse-switch p1, :sswitch_data_0

    .line 774
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 760
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 772
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1339
    .local v0, "buffer":[C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1340
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1342
    .local v3, "l":I
    :goto_0
    if-ne v4, v3, :cond_1

    .line 1343
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1344
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1411
    if-eqz p1, :cond_8

    .line 1412
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1413
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1347
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1348
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1351
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .line 1352
    .local v1, "c":I
    const/16 v7, 0xa

    if-ne v1, v7, :cond_2

    .line 1353
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1354
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1355
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1356
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_2
    const/16 v7, 0x20

    if-eq v1, v7, :cond_9

    const/16 v7, 0xd

    if-eq v1, v7, :cond_9

    const/16 v7, 0x9

    if-ne v1, v7, :cond_3

    move v4, v5

    .line 1357
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1360
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_6

    .line 1361
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1362
    if-ne v5, v3, :cond_4

    .line 1363
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1364
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1365
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1366
    if-nez v2, :cond_4

    move v4, v5

    .line 1415
    .end local v1    # "c":I
    .end local v2    # "charsLoaded":Z
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_1
    return v1

    .line 1371
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1372
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 1373
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 1393
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1376
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_0
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1377
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1378
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1380
    :cond_5
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1381
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1382
    goto/16 :goto_0

    .line 1386
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_1
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1387
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1388
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1389
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1390
    goto/16 :goto_0

    .line 1395
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_6
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    .line 1396
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1402
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1403
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1404
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1405
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1407
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_7
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 1408
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1415
    .end local v1    # "c":I
    :cond_8
    const/4 v1, -0x1

    goto :goto_1

    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_9
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_0

    .line 1373
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1000
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1003
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1005
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 1006
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 1007
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 1009
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 1010
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1011
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1013
    :cond_1
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_3

    .line 1014
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1015
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1016
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1017
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1018
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1019
    move v6, v4

    :cond_2
    :goto_1
    move v5, v4

    .line 1024
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 1020
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_3
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 1021
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1022
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1026
    .end local v2    # "c":I
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_4
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1027
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1028
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1029
    const-string v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1044
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2

    .line 1045
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1089
    :cond_1
    :goto_1
    :sswitch_1
    if-nez v0, :cond_5

    .line 1090
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1095
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1096
    return-object v2

    .line 1068
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1069
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1077
    :cond_3
    if-nez v0, :cond_4

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1081
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1082
    const/4 v1, 0x0

    .line 1083
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1092
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 1045
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 608
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v7, v8

    .line 612
    .local v0, "c":C
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 613
    :cond_0
    const-string v2, "true"

    .line 614
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 615
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 629
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 630
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 631
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 647
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 616
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 617
    :cond_2
    const-string v2, "false"

    .line 618
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 619
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 620
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 621
    :cond_4
    const-string v2, "null"

    .line 622
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 623
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 625
    goto :goto_2

    .line 634
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v1

    aget-char v0, v7, v8

    .line 635
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 636
    goto :goto_2

    .line 630
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    :cond_8
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    .line 641
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    .line 642
    goto :goto_2

    .line 646
    :cond_a
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 647
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 653
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 654
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 656
    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 657
    .local v12, "value":J
    const/4 v8, 0x0

    .line 658
    .local v8, "negative":Z
    const/4 v4, 0x1

    .line 659
    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .line 661
    .local v7, "last":I
    const/4 v5, 0x0

    .line 665
    .local v5, "i":I
    :goto_0
    add-int v14, v9, v5

    if-ne v14, v6, :cond_4

    .line 666
    array-length v14, v2

    if-ne v5, v14, :cond_0

    .line 669
    const/4 v14, 0x0

    .line 749
    .end local v12    # "value":J
    :goto_1
    return v14

    .line 671
    .restart local v12    # "value":J
    :cond_0
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 740
    :cond_1
    const/4 v14, 0x2

    if-ne v7, v14, :cond_17

    if-eqz v4, :cond_17

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_2

    if-eqz v8, :cond_17

    .line 741
    :cond_2
    if-eqz v8, :cond_16

    .end local v12    # "value":J
    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 742
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 743
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 674
    .restart local v12    # "value":J
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 675
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 678
    :cond_4
    add-int v14, v9, v5

    aget-char v3, v2, v14

    .line 679
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 714
    const/16 v14, 0x30

    if-lt v3, v14, :cond_5

    const/16 v14, 0x39

    if-le v3, v14, :cond_d

    .line 715
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 718
    const/4 v14, 0x0

    goto :goto_1

    .line 681
    :sswitch_0
    if-nez v7, :cond_7

    .line 682
    const/4 v8, 0x1

    .line 683
    const/4 v7, 0x1

    .line 664
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 685
    :cond_7
    const/4 v14, 0x5

    if-ne v7, v14, :cond_8

    .line 686
    const/4 v7, 0x6

    .line 687
    goto :goto_3

    .line 689
    :cond_8
    const/4 v14, 0x0

    goto :goto_1

    .line 692
    :sswitch_1
    const/4 v14, 0x5

    if-ne v7, v14, :cond_9

    .line 693
    const/4 v7, 0x6

    .line 694
    goto :goto_3

    .line 696
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 700
    :sswitch_2
    const/4 v14, 0x2

    if-eq v7, v14, :cond_a

    const/4 v14, 0x4

    if-ne v7, v14, :cond_b

    .line 701
    :cond_a
    const/4 v7, 0x5

    .line 702
    goto :goto_3

    .line 704
    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    .line 707
    :sswitch_3
    const/4 v14, 0x2

    if-ne v7, v14, :cond_c

    .line 708
    const/4 v7, 0x3

    .line 709
    goto :goto_3

    .line 711
    :cond_c
    const/4 v14, 0x0

    goto :goto_1

    .line 720
    :cond_d
    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    if-nez v7, :cond_f

    .line 721
    :cond_e
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    .line 722
    const/4 v7, 0x2

    goto :goto_3

    .line 723
    :cond_f
    const/4 v14, 0x2

    if-ne v7, v14, :cond_13

    .line 724
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_10

    .line 725
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 727
    :cond_10
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 728
    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-gtz v14, :cond_11

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-gez v14, :cond_12

    :cond_11
    const/4 v14, 0x1

    :goto_4
    and-int/2addr v4, v14

    .line 730
    move-wide v12, v10

    .line 731
    goto :goto_3

    .line 728
    :cond_12
    const/4 v14, 0x0

    goto :goto_4

    .line 731
    .end local v10    # "newValue":J
    :cond_13
    const/4 v14, 0x3

    if-ne v7, v14, :cond_14

    .line 732
    const/4 v7, 0x4

    goto :goto_3

    .line 733
    :cond_14
    const/4 v14, 0x5

    if-eq v7, v14, :cond_15

    const/4 v14, 0x6

    if-ne v7, v14, :cond_6

    .line 734
    :cond_15
    const/4 v7, 0x7

    goto :goto_3

    .line 741
    .end local v3    # "c":C
    :cond_16
    neg-long v12, v12

    goto/16 :goto_2

    .line 744
    :cond_17
    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    const/4 v14, 0x4

    if-eq v7, v14, :cond_18

    const/4 v14, 0x7

    if-ne v7, v14, :cond_19

    .line 746
    :cond_18
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 747
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 749
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 1267
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 1268
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 1269
    .local v2, "newStack":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 1270
    .local v0, "newPathIndices":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1271
    .local v1, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1273
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1275
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1276
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1278
    .end local v0    # "newPathIndices":[I
    .end local v1    # "newPathNames":[Ljava/lang/String;
    .end local v2    # "newStack":[I
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v3, v4

    .line 1279
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1510
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1511
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1514
    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1515
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v4, v2

    .line 1562
    :goto_1
    return v4

    .line 1517
    :sswitch_0
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_1

    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1518
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1521
    :cond_1
    const/4 v4, 0x0

    .line 1522
    .local v4, "result":C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 1523
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1524
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1525
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1526
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1522
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1527
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1528
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1529
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1530
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1532
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1535
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1

    .line 1539
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_1

    .line 1542
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_1

    .line 1545
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_1

    .line 1548
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_1

    .line 1551
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_1

    .line 1554
    :sswitch_6
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1555
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1515
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1103
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1104
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1106
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1107
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1108
    .local v1, "c":I
    if-ne v1, p1, :cond_1

    .line 1109
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1110
    return-void

    .line 1111
    :cond_1
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    .line 1112
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1113
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1114
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1115
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_2
    :goto_1
    move v4, v3

    .line 1120
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1116
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1117
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1118
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1121
    .end local v1    # "c":I
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_4
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1122
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1123
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1448
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1449
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1450
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1451
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1448
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1454
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1455
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1459
    :cond_3
    const/4 v1, 0x1

    .line 1461
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1433
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1434
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1435
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1441
    .end local v0    # "c":C
    :cond_2
    :goto_0
    return-void

    .line 1437
    .restart local v0    # "c":C
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    :cond_0
    const/4 v0, 0x0

    .line 1129
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1148
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1154
    :goto_1
    return-void

    .line 1152
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1153
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1130
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1571
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1572
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 348
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 353
    return-void

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 379
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 382
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 383
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 384
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 389
    return-void

    .line 386
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1219
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1220
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1221
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1222
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1223
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 361
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 364
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 365
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 371
    return-void

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 397
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 400
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 401
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 402
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 403
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 408
    return-void

    .line 405
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1475
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1476
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1475
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1485
    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1486
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1487
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1497
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 415
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 418
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 851
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 852
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 855
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 856
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 857
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 858
    const/4 v1, 0x1

    .line 862
    :goto_0
    return v1

    .line 859
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 860
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 861
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    .line 864
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 865
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 899
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 900
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 901
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 904
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 905
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 906
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 907
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v2, v4

    .line 931
    :goto_0
    return-wide v2

    .line 910
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 911
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 912
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 922
    :cond_2
    :goto_1
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 923
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 924
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 925
    :cond_3
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 926
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 913
    .end local v2    # "result":D
    :cond_4
    if-eq v0, v4, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 914
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    :goto_2
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    goto :goto_2

    .line 915
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 916
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 917
    :cond_8
    if-eq v0, v8, :cond_2

    .line 918
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 919
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    .restart local v2    # "result":D
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 929
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 930
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x0

    .line 1167
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1168
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1173
    :cond_0
    const/16 v5, 0xf

    if-ne v2, v5, :cond_2

    .line 1174
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v6

    .line 1175
    .local v3, "result":I
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 1176
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1177
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1179
    :cond_1
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1180
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move v4, v3

    .line 1212
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1184
    .end local v4    # "result":I
    :cond_2
    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    .line 1185
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1186
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1202
    :goto_1
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1203
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1204
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1205
    .restart local v3    # "result":I
    int-to-double v6, v3

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_7

    .line 1206
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1207
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1187
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_3
    if-eq v2, v6, :cond_4

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 1188
    :cond_4
    if-ne v2, v6, :cond_5

    const/16 v5, 0x27

    :goto_2
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1190
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1191
    .restart local v3    # "result":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1192
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 1193
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1188
    .end local v4    # "result":I
    :cond_5
    const/16 v5, 0x22

    goto :goto_2

    .line 1198
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1199
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1209
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1210
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1211
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move v4, v3

    .line 1212
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1194
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 945
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 946
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 950
    :cond_0
    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 951
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 952
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 953
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 984
    :goto_0
    return-wide v4

    .line 956
    :cond_1
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 957
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 958
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 974
    :goto_1
    const/16 v3, 0xb

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 975
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 976
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 977
    .local v4, "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_6

    .line 978
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 979
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 959
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_2
    if-eq v2, v6, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 960
    :cond_3
    if-ne v2, v6, :cond_4

    const/16 v3, 0x27

    :goto_2
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 962
    :try_start_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 963
    .restart local v4    # "result":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 964
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 966
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    goto :goto_1

    .line 960
    :cond_4
    const/16 v3, 0x22

    goto :goto_2

    .line 970
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 981
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 982
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 983
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 787
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 791
    :cond_0
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 802
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 803
    return-object v1

    .line 793
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 794
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 795
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 796
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 798
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 799
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 877
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 880
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 881
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 882
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 887
    return-void

    .line 884
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 885
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 816
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 820
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 821
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 839
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 840
    return-object v1

    .line 822
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 823
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 824
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 825
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 826
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 827
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 828
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 829
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 830
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 831
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 832
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 833
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 835
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 426
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 430
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 432
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 457
    :goto_0
    return-object v1

    .line 434
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 436
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 438
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 442
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 445
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 447
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 452
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 455
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 457
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1231
    const/4 v0, 0x0

    .line 1233
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1234
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 1235
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1238
    :cond_1
    if-ne v1, v5, :cond_3

    .line 1239
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    .line 1259
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1260
    if-nez v0, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1263
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string v4, "null"

    aput-object v4, v2, v3

    .line 1264
    return-void

    .line 1241
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1242
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1245
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1247
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1248
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1249
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1250
    :cond_6
    const/16 v2, 0xe

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1251
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 1252
    :cond_8
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1253
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1254
    :cond_a
    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 1255
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1256
    :cond_c
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1257
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1466
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
