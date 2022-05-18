.class public Lorg/apache/commons/lang/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# static fields
.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final ESCAPED_QUOTE:Ljava/lang/String; = "\'\'"

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;

.field private toPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "registry"    # Ljava/util/Map;

    .prologue
    .line 126
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 128
    iput-object p3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "registry"    # Ljava/util/Map;

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "appendTo"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p4, "escapingOn"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x27

    .line 474
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 475
    .local v3, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 476
    .local v0, "c":[C
    if-eqz p4, :cond_2

    aget-char v5, v0, v3

    if-ne v5, v7, :cond_2

    .line 477
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 478
    if-nez p3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-object v4

    .line 478
    :cond_1
    invoke-virtual {p3, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v4

    goto :goto_0

    .line 480
    :cond_2
    move v2, v3

    .line 481
    .local v2, "lastHold":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 482
    if-eqz p4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p3, v0, v2, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 485
    const-string v5, "\'\'"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 486
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 481
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    aget-char v5, v0, v5

    packed-switch v5, :pswitch_data_0

    .line 495
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_2

    .line 491
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 492
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p3, v0, v2, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v4

    goto :goto_0

    .line 498
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unterminated quoted string at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    const/4 v1, 0x0

    .line 520
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 525
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v4, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 303
    move-object v3, p1

    .line 304
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 305
    .local v0, "args":Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 306
    .local v2, "i":I
    if-lez v2, :cond_0

    .line 307
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 308
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/text/FormatFactory;

    .line 311
    .local v1, "factory":Lorg/apache/commons/lang/text/FormatFactory;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-interface {v1, v3, v0, v4}, Lorg/apache/commons/lang/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v4

    .line 315
    .end local v0    # "args":Ljava/lang/String;
    .end local v1    # "factory":Lorg/apache/commons/lang/text/FormatFactory;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "escapingOn"    # Z

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    .line 512
    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "customPatterns"    # Ljava/util/ArrayList;

    .prologue
    const/4 v8, 0x0

    .line 400
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 433
    .end local p1    # "pattern":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 403
    .restart local p1    # "pattern":Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 404
    .local v5, "sb":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 405
    .local v4, "pos":Ljava/text/ParsePosition;
    const/4 v3, -0x1

    .line 406
    .local v3, "fe":I
    const/4 v2, 0x0

    .line 407
    .local v2, "depth":I
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 408
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 409
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 429
    :goto_2
    invoke-virtual {v5, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 430
    invoke-direct {p0, v4}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_1

    .line 411
    :sswitch_0
    invoke-direct {p0, p1, v4, v5, v8}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 414
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 415
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 416
    add-int/lit8 v3, v3, 0x1

    .line 417
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 419
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, "customPattern":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 421
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 426
    .end local v1    # "customPattern":Ljava/lang/String;
    :sswitch_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 433
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .locals 1
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 459
    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 368
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 369
    .local v1, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 370
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 371
    .local v2, "text":I
    const/4 v0, 0x1

    .line 372
    .local v0, "depth":I
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 373
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 372
    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 375
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 376
    goto :goto_1

    .line 378
    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 379
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 384
    :sswitch_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V

    goto :goto_1

    .line 388
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v7, 0x7d

    const/16 v6, 0x2c

    .line 326
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 327
    .local v3, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 328
    new-instance v2, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 329
    .local v2, "result":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    .line 330
    .local v1, "error":Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 331
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 334
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_0

    .line 336
    const/4 v1, 0x1

    .line 330
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 340
    :cond_0
    if-eq v0, v6, :cond_1

    if-ne v0, v7, :cond_2

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 342
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 343
    :catch_0
    move-exception v4

    .line 348
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 349
    :goto_2
    invoke-virtual {v2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 348
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 351
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    .line 352
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid format argument index at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unterminated format element at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 446
    .local v0, "buffer":[C
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CI)I

    move-result v1

    .line 447
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 448
    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 449
    :cond_1
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .locals 21
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 146
    invoke-super/range {p0 .. p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 147
    invoke-super/range {p0 .. p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, "foundFormats":Ljava/util/ArrayList;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v9, "foundDescriptions":Ljava/util/ArrayList;
    new-instance v17, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 154
    .local v17, "stripCustom":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v15, Ljava/text/ParsePosition;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 155
    .local v15, "pos":Ljava/text/ParsePosition;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 156
    .local v4, "c":[C
    const/4 v6, 0x0

    .line 157
    .local v6, "fmtCount":I
    :goto_1
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 158
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    aget-char v18, v4, v18

    sparse-switch v18, :sswitch_data_0

    .line 189
    :cond_2
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    aget-char v18, v4, v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_1

    .line 160
    :sswitch_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 163
    :sswitch_1
    add-int/lit8 v6, v6, 0x1

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 165
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v16

    .line 166
    .local v16, "start":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v12

    .line 167
    .local v12, "index":I
    const/16 v18, 0x7b

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 169
    const/4 v7, 0x0

    .line 170
    .local v7, "format":Ljava/text/Format;
    const/4 v8, 0x0

    .line 171
    .local v8, "formatDescription":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    aget-char v18, v4, v18

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v8

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v7

    .line 175
    if-nez v7, :cond_3

    .line 176
    const/16 v18, 0x2c

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 179
    :cond_3
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    if-nez v7, :cond_4

    const/4 v8, 0x0

    .end local v8    # "formatDescription":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v6, :cond_5

    const/16 v18, 0x1

    :goto_2
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 182
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v6, :cond_6

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 183
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    aget-char v18, v4, v18

    const/16 v19, 0x7d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 184
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "Unreadable format element at position "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 181
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 182
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 193
    .end local v7    # "format":Ljava/text/Format;
    .end local v12    # "index":I
    .end local v16    # "start":I
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-super {v0, v1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 194
    invoke-super/range {p0 .. p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 196
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v14

    .line 199
    .local v14, "origFormats":[Ljava/text/Format;
    const/4 v11, 0x0

    .line 200
    .local v11, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 201
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/Format;

    .line 202
    .local v5, "f":Ljava/text/Format;
    if-eqz v5, :cond_8

    .line 203
    aput-object v5, v14, v11

    .line 200
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 206
    .end local v5    # "f":Ljava/text/Format;
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v14}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    goto/16 :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-ne p1, p0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 270
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 272
    check-cast v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;

    .line 273
    .local v0, "rhs":Lorg/apache/commons/lang/text/ExtendedMessageFormat;
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 274
    goto :goto_0

    .line 276
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object v4, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 277
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 289
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    .line 290
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/commons/lang/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 291
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 292
    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 1
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
