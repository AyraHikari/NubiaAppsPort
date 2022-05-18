.class public Lorg/apache/commons/lang/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "appendToEnd"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 607
    if-nez p0, :cond_0

    .line 608
    const/4 v2, 0x0

    .line 644
    :goto_0
    return-object v2

    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 611
    const-string v2, ""

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 621
    :cond_2
    if-eq p2, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_4

    .line 622
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 625
    :cond_4
    if-ge p2, p1, :cond_5

    .line 626
    move p2, p1

    .line 629
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    .local v1, "result":Ljava/lang/StringBuffer;
    const-string v2, " "

    invoke-static {p0, v2, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 631
    .local v0, "index":I
    if-ne v0, v4, :cond_7

    .line 632
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p2, v2, :cond_6

    .line 635
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 637
    :cond_7
    if-le v0, p2, :cond_8

    .line 638
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 641
    :cond_8
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 276
    if-nez p1, :cond_1

    const/4 v3, -0x1

    .line 277
    .local v3, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez v3, :cond_2

    .line 296
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 276
    .end local v3    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v3, p1

    goto :goto_0

    .line 280
    .restart local v3    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 281
    .local v5, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 282
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 283
    .local v1, "capitalizeNext":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 284
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 286
    .local v2, "ch":C
    invoke-static {v2, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    const/4 v1, 0x1

    .line 283
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    :cond_3
    if-eqz v1, :cond_4

    .line 290
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v1, 0x0

    goto :goto_3

    .line 293
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 296
    .end local v2    # "ch":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 350
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 351
    .local v0, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 355
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 350
    .end local v0    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 354
    .restart local v0    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p0, p1}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 539
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 561
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 542
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-nez v7, :cond_2

    .line 543
    const-string p0, ""

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 546
    .local v6, "strLen":I
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [C

    .line 547
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 548
    .local v2, "count":I
    const/4 v5, 0x1

    .line 549
    .local v5, "lastWasGap":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 550
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 552
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 553
    const/4 v5, 0x1

    move v2, v3

    .line 549
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1

    .line 554
    :cond_3
    if-eqz v5, :cond_5

    .line 555
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput-char v1, v0, v3

    .line 556
    const/4 v5, 0x0

    goto :goto_2

    .line 561
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .restart local v1    # "ch":C
    .restart local p0    # "str":Ljava/lang/String;
    :cond_5
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method private static isDelimiter(C[C)Z
    .locals 3
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    .line 581
    :goto_0
    return v2

    .line 576
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "isize":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 577
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    .line 578
    const/4 v2, 0x1

    goto :goto_0

    .line 576
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 454
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    if-nez v3, :cond_1

    .line 481
    .end local v3    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 457
    .restart local v3    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 459
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 460
    .local v5, "whitespace":Z
    const/4 v1, 0x0

    .line 461
    .local v1, "ch":C
    const/4 v4, 0x0

    .line 463
    .local v4, "tmp":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 464
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 465
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 478
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 479
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 468
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_2

    .line 469
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 470
    if-eqz v5, :cond_4

    .line 471
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    goto :goto_2

    .line 473
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    goto :goto_2

    .line 476
    :cond_5
    move v4, v1

    goto :goto_2

    .line 481
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 406
    if-nez p1, :cond_1

    const/4 v2, -0x1

    .line 407
    .local v2, "delimLen":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_2

    .line 426
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 406
    .end local v2    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    array-length v2, p1

    goto :goto_0

    .line 410
    .restart local v2    # "delimLen":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 411
    .local v4, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 413
    .local v5, "uncapitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 416
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    const/4 v5, 0x1

    .line 413
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 419
    :cond_3
    if-eqz v5, :cond_4

    .line 420
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    const/4 v5, 0x0

    goto :goto_3

    .line 423
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 426
    .end local v1    # "ch":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .prologue
    const/16 v5, 0x20

    .line 164
    if-nez p0, :cond_0

    .line 165
    const/4 v4, 0x0

    .line 215
    :goto_0
    return-object v4

    .line 167
    :cond_0
    if-nez p2, :cond_1

    .line 168
    sget-object p2, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 170
    :cond_1
    const/4 v4, 0x1

    if-ge p1, v4, :cond_2

    .line 171
    const/4 p1, 0x1

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    .local v0, "inputLineLength":I
    const/4 v1, 0x0

    .line 175
    .local v1, "offset":I
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 177
    .local v3, "wrappedLine":Ljava/lang/StringBuffer;
    :goto_1
    sub-int v4, v0, v1

    if-le v4, p1, :cond_7

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    goto :goto_1

    .line 182
    :cond_3
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 184
    .local v2, "spaceToWrapAt":I
    if-lt v2, v1, :cond_4

    .line 186
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 192
    :cond_4
    if-eqz p3, :cond_5

    .line 194
    add-int v4, p1, v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/2addr v1, p1

    goto :goto_1

    .line 199
    :cond_5
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 200
    if-ltz v2, :cond_6

    .line 201
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 205
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    move v1, v0

    goto :goto_1

    .line 213
    .end local v2    # "spaceToWrapAt":I
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
