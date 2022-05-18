.class public Lorg/apache/commons/lang/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    if-gtz p1, :cond_0

    .line 113
    const/16 p1, 0x20

    .line 115
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0
.end method

.method private deleteImpl(III)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 1524
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1525
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1526
    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .prologue
    .line 1845
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    .line 1861
    :cond_0
    return-object p0

    .line 1848
    :cond_1
    if-nez p2, :cond_3

    const/4 v5, 0x0

    .line 1849
    .local v5, "replaceLen":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1850
    .local v6, "buf":[C
    move v1, p3

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_0

    if-eqz p5, :cond_0

    .line 1851
    invoke-virtual {p1, v6, v1, p3, p4}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    .line 1852
    .local v3, "removeLen":I
    if-lez v3, :cond_2

    .line 1853
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1854
    sub-int v0, p4, v3

    add-int p4, v0, v5

    .line 1855
    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    .line 1856
    if-lez p5, :cond_2

    .line 1857
    add-int/lit8 p5, p5, -0x1

    .line 1850
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1848
    .end local v1    # "i":I
    .end local v3    # "removeLen":I
    .end local v5    # "replaceLen":I
    .end local v6    # "buf":[C
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "removeLen"    # I
    .param p4, "insertStr"    # Ljava/lang/String;
    .param p5, "insertLen"    # I

    .prologue
    .line 1663
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v1, p3

    add-int v0, v1, p5

    .line 1664
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 1665
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1666
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1667
    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1669
    :cond_0
    if-lez p5, :cond_1

    .line 1670
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1672
    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 693
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 694
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    .line 695
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 735
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 725
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 705
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 715
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 473
    if-nez p1, :cond_1

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 483
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 476
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 477
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 479
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 480
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 481
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 496
    if-nez p1, :cond_1

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 511
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 499
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 500
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 503
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_5
    if-lez p3, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 507
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 508
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 509
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .prologue
    .line 522
    if-nez p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 532
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 525
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 526
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 528
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 529
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 530
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 545
    if-nez p1, :cond_1

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 560
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 548
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 549
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 552
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_5
    if-lez p3, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 556
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 557
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 558
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    .line 571
    if-nez p1, :cond_1

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 581
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 574
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 575
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 577
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 578
    iget-object v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 594
    if-nez p1, :cond_1

    .line 595
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 609
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 597
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 598
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 601
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_5
    if-lez p3, :cond_0

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 605
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 606
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->getChars(II[CI)V

    .line 607
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/16 v3, 0x65

    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 670
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 671
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 672
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 673
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    .line 682
    :goto_0
    return-object p0

    .line 675
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 676
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 677
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 678
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 679
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 680
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .prologue
    .line 620
    if-nez p1, :cond_1

    .line 621
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 630
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 623
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    array-length v1, p1

    .line 624
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 626
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 627
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 643
    if-nez p1, :cond_1

    .line 644
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 658
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 646
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-le p2, v1, :cond_3

    .line 647
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    .line 650
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_5
    if-lez p3, :cond_0

    .line 653
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 654
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 655
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public appendAll(Ljava/util/Collection;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 950
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 952
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 956
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 969
    if-eqz p1, :cond_0

    .line 970
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 974
    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 932
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 934
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1271
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1239
    if-lez p2, :cond_1

    .line 1240
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1241
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "str":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 1243
    const-string v2, ""

    .line 1245
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1246
    .local v3, "strLen":I
    if-lt v3, p2, :cond_3

    .line 1247
    sub-int v4, v3, p2

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1255
    :goto_1
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1257
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strLen":I
    :cond_1
    return-object p0

    .line 1241
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1249
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strLen":I
    :cond_3
    sub-int v1, p2, v3

    .line 1250
    .local v1, "padLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 1251
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1253
    :cond_4
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1318
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    const/4 v6, 0x0

    .line 1286
    if-lez p2, :cond_2

    .line 1287
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1288
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "str":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 1290
    const-string v2, ""

    .line 1292
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1293
    .local v3, "strLen":I
    if-lt v3, p2, :cond_4

    .line 1294
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, p2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1302
    :cond_1
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1304
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strLen":I
    :cond_2
    return-object p0

    .line 1288
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1296
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strLen":I
    :cond_4
    sub-int v1, p2, v3

    .line 1297
    .local v1, "padLen":I
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1299
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 436
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendNull()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 448
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 1217
    if-ltz p1, :cond_0

    .line 1218
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1220
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # C

    .prologue
    .line 1127
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1130
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # C
    .param p2, "defaultIfEmpty"    # C

    .prologue
    .line 1145
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1151
    :goto_0
    return-object p0

    .line 1149
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .prologue
    .line 1202
    if-lez p2, :cond_0

    .line 1203
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1205
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .prologue
    .line 1175
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1176
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1178
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "standard"    # Ljava/lang/String;
    .param p2, "defaultIfEmpty"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 1101
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1104
    :cond_0
    return-object p0

    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 1100
    goto :goto_0
.end method

.method public appendWithSeparators(Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 1011
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1012
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1013
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1014
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1015
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1016
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 1021
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 1035
    if-eqz p1, :cond_1

    .line 1036
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1037
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1039
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 1044
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 989
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 990
    if-nez p2, :cond_0

    const-string p2, ""

    .line 991
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 992
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 993
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 994
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(D)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(F)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 896
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 774
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 800
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 826
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Z)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 852
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 2419
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 2395
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 2444
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 306
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 292
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2588
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrBuilder;

    .line 2589
    .local v0, "clone":Lorg/apache/commons/lang/text/StrBuilder;
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2590
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, v0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2591
    return-object v0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 2082
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2083
    .local v1, "thisBuf":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 2084
    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 2085
    const/4 v2, 0x1

    .line 2088
    :goto_1
    return v2

    .line 2083
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2088
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2098
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang/text/StrMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    const/4 v0, 0x0

    .line 2113
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1538
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1539
    sub-int v0, p2, p1

    .line 1540
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1541
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1543
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 1554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 1555
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 1556
    move v2, v0

    .line 1557
    .local v2, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_1

    .line 1558
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-eq v3, p1, :cond_0

    .line 1562
    :cond_1
    sub-int v1, v0, v2

    .line 1563
    .local v1, "len":I
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1564
    sub-int/2addr v0, v1

    .line 1554
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1594
    if-nez p1, :cond_0

    move v1, v2

    .line 1595
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1596
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1597
    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1598
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1599
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1594
    .end local v0    # "index":I
    .end local v1    # "len":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 1602
    .restart local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 1634
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 340
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 343
    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 344
    return-object p0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 1577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1578
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1579
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1583
    :cond_0
    return-object p0

    .line 1577
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1612
    if-nez p1, :cond_1

    move v1, v2

    .line 1613
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_0

    .line 1614
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1615
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1616
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1619
    .end local v0    # "index":I
    :cond_0
    return-object p0

    .line 1612
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public deleteFirst(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 1648
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1951
    if-nez p1, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v3

    .line 1954
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1955
    .local v1, "len":I
    if-nez v1, :cond_2

    move v3, v4

    .line 1956
    goto :goto_0

    .line 1958
    :cond_2
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v1, v5, :cond_0

    .line 1961
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int v2, v5, v1

    .line 1962
    .local v2, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1963
    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1962
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1967
    goto :goto_0
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 233
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 234
    .local v0, "old":[C
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 235
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2536
    instance-of v0, p1, Lorg/apache/commons/lang/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2537
    check-cast p1, Lorg/apache/commons/lang/text/StrBuilder;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->equals(Lorg/apache/commons/lang/text/StrBuilder;)Z

    move-result v0

    .line 2539
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2512
    if-ne p0, p1, :cond_1

    .line 2525
    :cond_0
    :goto_0
    return v3

    .line 2515
    :cond_1
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v6, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-eq v5, v6, :cond_2

    move v3, v4

    .line 2516
    goto :goto_0

    .line 2518
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2519
    .local v2, "thisBuf":[C
    iget-object v1, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2520
    .local v1, "otherBuf":[C
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 2521
    aget-char v5, v2, v0

    aget-char v6, v1, v0

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 2522
    goto :goto_0

    .line 2520
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 9
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2486
    if-ne p0, p1, :cond_1

    .line 2501
    :cond_0
    :goto_0
    return v5

    .line 2489
    :cond_1
    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v8, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-eq v7, v8, :cond_2

    move v5, v6

    .line 2490
    goto :goto_0

    .line 2492
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2493
    .local v4, "thisBuf":[C
    iget-object v3, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2494
    .local v3, "otherBuf":[C
    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2495
    aget-char v0, v4, v2

    .line 2496
    .local v0, "c1":C
    aget-char v1, v3, v2

    .line 2497
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 2498
    goto :goto_0

    .line 2494
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "destination"    # [C
    .param p4, "destinationIndex"    # I

    .prologue
    .line 409
    if-gez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 412
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 415
    :cond_2
    if-le p1, p2, :cond_3

    .line 416
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    return-void
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 391
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 392
    :cond_0
    new-array p1, v0, [C

    .line 394
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 2548
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2549
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2550
    .local v1, "hash":I
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2551
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2550
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2553
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 2124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2135
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2136
    :cond_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v3, :cond_2

    move v0, v2

    .line 2145
    :cond_1
    :goto_0
    return v0

    .line 2139
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2140
    .local v1, "thisBuf":[C
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 2141
    aget-char v3, v1, v0

    if-eq v3, p1, :cond_1

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2145
    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2171
    if-gez p2, :cond_0

    move p2, v6

    .line 2172
    :cond_0
    if-eqz p1, :cond_1

    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v7, :cond_3

    :cond_1
    move p2, v5

    .line 2196
    .end local p2    # "startIndex":I
    :cond_2
    :goto_0
    return p2

    .line 2175
    .restart local p2    # "startIndex":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2176
    .local v3, "strLen":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    .line 2177
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result p2

    goto :goto_0

    .line 2179
    :cond_4
    if-eqz v3, :cond_2

    .line 2182
    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le v3, v6, :cond_5

    move p2, v5

    .line 2183
    goto :goto_0

    .line 2185
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2186
    .local v4, "thisBuf":[C
    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x1

    .line 2188
    .local v2, "len":I
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_8

    .line 2189
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_7

    .line 2190
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v0, v1

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_6

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2189
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move p2, v0

    .line 2194
    goto :goto_0

    .end local v1    # "j":I
    :cond_8
    move p2, v5

    .line 2196
    goto :goto_0
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 2210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2226
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2227
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_3

    :cond_1
    move v1, v3

    .line 2237
    :cond_2
    :goto_0
    return v1

    .line 2230
    :cond_3
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2231
    .local v2, "len":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2232
    .local v0, "buf":[C
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 2233
    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    .line 2232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 2237
    goto :goto_0
.end method

.method public insert(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1459
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1460
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1462
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1463
    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 1511
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1499
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1475
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 1487
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1332
    if-nez p2, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 1335
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1348
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1349
    if-nez p2, :cond_0

    .line 1350
    iget-object p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 1352
    :cond_0
    if-nez p2, :cond_2

    move v1, v2

    .line 1353
    .local v1, "strLen":I
    :goto_0
    if-lez v1, :cond_1

    .line 1354
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int v0, v3, v1

    .line 1355
    .local v0, "newSize":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1356
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v5, p1, v1

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1358
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1360
    .end local v0    # "newSize":I
    :cond_1
    return-object p0

    .line 1352
    .end local v1    # "strLen":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public insert(IZ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    const/16 v5, 0x65

    .line 1427
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1428
    if-eqz p2, :cond_0

    .line 1429
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1430
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x4

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1431
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    const/16 v2, 0x74

    aput-char v2, v1, p1

    .line 1432
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 1433
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x75

    aput-char v2, v1, p1

    .line 1434
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char v5, v1, v0

    .line 1435
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    move p1, v0

    .line 1446
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_0
    return-object p0

    .line 1437
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1438
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x5

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1439
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x66

    aput-char v2, v1, p1

    .line 1440
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 1441
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x6c

    aput-char v2, v1, p1

    .line 1442
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 1443
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char v5, v1, p1

    .line 1444
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .prologue
    .line 1373
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1374
    if-nez p2, :cond_1

    .line 1375
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 1384
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 1377
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    array-length v0, p2

    .line 1378
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1379
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1380
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1399
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1400
    if-nez p2, :cond_1

    .line 1401
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 1415
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 1403
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-le p3, v0, :cond_3

    .line 1404
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_3
    if-ltz p4, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    .line 1407
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_5
    if-lez p4, :cond_0

    .line 1410
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1411
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1413
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 2248
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2259
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_0

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v2, -0x1

    .line 2260
    :cond_0
    if-gez p2, :cond_2

    move v0, v1

    .line 2268
    :cond_1
    :goto_0
    return v0

    .line 2263
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2264
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_1

    .line 2263
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2268
    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2280
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2294
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    .line 2295
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v0, v3

    .line 2317
    :cond_2
    :goto_0
    return v0

    .line 2298
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2299
    .local v2, "strLen":I
    if-lez v2, :cond_6

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v2, v4, :cond_6

    .line 2300
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 2301
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_0

    .line 2305
    :cond_4
    sub-int v4, p2, v2

    add-int/lit8 v0, v4, 0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 2306
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 2307
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v6, v0, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_5

    .line 2305
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2306
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2314
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_6
    if-nez v2, :cond_7

    move v0, p2

    .line 2315
    goto :goto_0

    :cond_7
    move v0, v3

    .line 2317
    goto :goto_0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 2331
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2347
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    .line 2348
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v2, v3

    .line 2358
    :cond_2
    :goto_0
    return v2

    .line 2351
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2352
    .local v0, "buf":[C
    add-int/lit8 v1, p2, 0x1

    .line 2353
    .local v1, "endIndex":I
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 2354
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v1}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    .line 2353
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 2358
    goto :goto_0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 2013
    if-gtz p1, :cond_0

    .line 2014
    const-string v0, ""

    .line 2018
    :goto_0
    return-object v0

    .line 2015
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2016
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2018
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 2061
    if-gez p1, :cond_0

    .line 2062
    const/4 p1, 0x0

    .line 2064
    :cond_0
    if-lez p2, :cond_1

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_2

    .line 2065
    :cond_1
    const-string v0, ""

    .line 2070
    :goto_0
    return-object v0

    .line 2067
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 2068
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2070
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 247
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 248
    .local v0, "old":[C
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 249
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1686
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1687
    if-nez p3, :cond_0

    const/4 v5, 0x0

    .line 1688
    .local v5, "insertLen":I
    :goto_0
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1689
    return-object p0

    .line 1687
    .end local v5    # "insertLen":I
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .prologue
    .line 1823
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p4

    .line 1824
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .prologue
    .line 1702
    if-eq p1, p2, :cond_1

    .line 1703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1704
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1705
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1741
    if-nez p1, :cond_0

    move v3, v0

    .line 1742
    .local v3, "searchLen":I
    :goto_0
    if-lez v3, :cond_2

    .line 1743
    if-nez p2, :cond_1

    move v5, v0

    .line 1744
    .local v5, "replaceLen":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1745
    .local v1, "index":I
    :goto_2
    if-ltz v1, :cond_2

    .line 1746
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1747
    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 1741
    .end local v1    # "index":I
    .end local v3    # "searchLen":I
    .end local v5    # "replaceLen":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1743
    .restart local v3    # "searchLen":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 1750
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1785
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .prologue
    .line 1721
    if-eq p1, p2, :cond_0

    .line 1722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1723
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1724
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1729
    .end local v0    # "i":I
    :cond_0
    return-object p0

    .line 1722
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1761
    if-nez p1, :cond_1

    move v3, v5

    .line 1762
    .local v3, "searchLen":I
    :goto_0
    if-lez v3, :cond_0

    .line 1763
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1764
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1765
    if-nez p2, :cond_2

    .line 1766
    .local v5, "replaceLen":I
    :goto_1
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1769
    .end local v1    # "index":I
    .end local v5    # "replaceLen":I
    :cond_0
    return-object p0

    .line 1761
    .end local v3    # "searchLen":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1765
    .restart local v1    # "index":I
    .restart local v3    # "searchLen":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public replaceFirst(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1800
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6

    .prologue
    .line 1871
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v5, :cond_1

    .line 1882
    :cond_0
    return-object p0

    .line 1875
    :cond_1
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    div-int/lit8 v1, v5, 0x2

    .line 1876
    .local v1, "half":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1877
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "leftIdx":I
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v5, -0x1

    .local v3, "rightIdx":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1878
    aget-char v4, v0, v2

    .line 1879
    .local v4, "swap":C
    aget-char v5, v0, v3

    aput-char v5, v0, v2

    .line 1880
    aput-char v4, v0, v3

    .line 1877
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 2035
    if-gtz p1, :cond_0

    .line 2036
    const-string v0, ""

    .line 2040
    :goto_0
    return-object v0

    .line 2037
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2038
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2040
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 323
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 326
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 327
    return-object p0
.end method

.method public setLength(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 198
    if-gez p1, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 201
    :cond_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge p1, v3, :cond_2

    .line 202
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 212
    :cond_1
    return-object p0

    .line 203
    :cond_2
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p1, v3, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 205
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 206
    .local v2, "oldEnd":I
    move v1, p1

    .line 207
    .local v1, "newEnd":I
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 208
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 p1, 0x0

    .line 175
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1924
    if-nez p1, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return v2

    .line 1927
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1928
    .local v1, "len":I
    if-nez v1, :cond_2

    move v2, v3

    .line 1929
    goto :goto_0

    .line 1931
    :cond_2
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v1, v4, :cond_0

    .line 1934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1935
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1934
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1939
    goto :goto_0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 1979
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1996
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1997
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v1, :cond_0

    .line 355
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 359
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    new-array v0, v1, [C

    .line 358
    .local v0, "chars":[C
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 373
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 374
    sub-int v1, p2, p1

    .line 375
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 376
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 380
    :goto_0
    return-object v0

    .line 378
    :cond_0
    new-array v0, v1, [C

    .line 379
    .local v0, "chars":[C
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2567
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 2577
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1893
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v3, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-object p0

    .line 1896
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1897
    .local v1, "len":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1898
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 1899
    .local v2, "pos":I
    :goto_1
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    if-gt v3, v4, :cond_2

    .line 1900
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1902
    :cond_2
    :goto_2
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-gt v3, v4, :cond_3

    .line 1903
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1905
    :cond_3
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v1, v3, :cond_4

    .line 1906
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1908
    :cond_4
    if-lez v2, :cond_0

    .line 1909
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2624
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    .line 2625
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2627
    :cond_1
    return-void
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 2605
    if-gez p1, :cond_0

    .line 2606
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2608
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    .line 2609
    iget p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2611
    :cond_1
    if-le p1, p2, :cond_2

    .line 2612
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2614
    :cond_2
    return p2
.end method
