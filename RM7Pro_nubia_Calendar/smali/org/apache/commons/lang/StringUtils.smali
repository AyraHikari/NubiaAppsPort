.class public Lorg/apache/commons/lang/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
    .line 5877
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v2, 0x4

    .line 5916
    if-nez p0, :cond_1

    .line 5917
    const/4 p0, 0x0

    .line 5940
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5919
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-ge p2, v2, :cond_2

    .line 5920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5922
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 5926
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5928
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, p2, -0x3

    if-ge v0, v1, :cond_4

    .line 5929
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, -0x3

    sub-int p1, v0, v1

    .line 5931
    :cond_4
    if-gt p1, v2, :cond_5

    .line 5932
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5934
    :cond_5
    const/4 v0, 0x7

    if-ge p2, v0, :cond_6

    .line 5935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5937
    :cond_6
    add-int/lit8 v0, p2, -0x3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 5938
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5940
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 5973
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5990
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5977
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_0

    .line 5981
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, p2, v4

    .line 5982
    .local v3, "targetSting":I
    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    .line 5983
    .local v2, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v1, v4, v5

    .line 5985
    .local v1, "endOffset":I
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 5986
    .local v0, "builder":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5987
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5988
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5990
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static capitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5185
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitaliseAllWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5294
    invoke-static {p0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .line 5169
    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4960
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4988
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4998
    :cond_0
    :goto_0
    return-object p0

    .line 4991
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4992
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 4993
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4996
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4997
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4998
    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    .line 5028
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 5041
    :cond_0
    :goto_0
    return-object p0

    .line 5031
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5032
    const-string p2, " "

    .line 5034
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5035
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 5036
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 5039
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5040
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5041
    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 4320
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4342
    .end local p0    # "str":Ljava/lang/String;
    .local v1, "last":C
    .local v2, "lastIdx":I
    :cond_0
    :goto_0
    return-object p0

    .line 4324
    .end local v1    # "last":C
    .end local v2    # "lastIdx":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4325
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4326
    .local v0, "ch":C
    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_0

    .line 4327
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 4332
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4333
    .restart local v2    # "lastIdx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4335
    .restart local v1    # "last":C
    if-ne v1, v7, :cond_5

    .line 4336
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 4337
    add-int/lit8 v2, v2, -0x1

    .line 4342
    :cond_4
    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4339
    :cond_5
    if-eq v1, v5, :cond_4

    .line 4340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 4372
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 4378
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4375
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4376
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chompLast(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4392
    const-string v0, "\n"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4413
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4409
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4410
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4411
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4504
    if-nez p0, :cond_1

    .line 4505
    const/4 v2, 0x0

    .line 4519
    :cond_0
    :goto_0
    return-object v2

    .line 4507
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4508
    .local v3, "strLen":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 4509
    const-string v2, ""

    goto :goto_0

    .line 4511
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 4512
    .local v1, "lastIdx":I
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4513
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4514
    .local v0, "last":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    .line 4515
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 4516
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static chopNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 4534
    .local v1, "lastIdx":I
    if-gtz v1, :cond_0

    .line 4535
    const-string v2, ""

    .line 4545
    :goto_0
    return-object v2

    .line 4537
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4538
    .local v0, "last":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 4539
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 4540
    add-int/lit8 v1, v1, -0x1

    .line 4545
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 286
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 3120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;C)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    const/4 v0, 0x0

    .line 1241
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1269
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    .line 1474
    if-nez p1, :cond_0

    .line 1475
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/String;[C)Z
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1417
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 1443
    :cond_1
    :goto_0
    return v7

    .line 1420
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1421
    .local v2, "csLength":I
    array-length v6, p1

    .line 1422
    .local v6, "searchLength":I
    add-int/lit8 v1, v2, -0x1

    .line 1423
    .local v1, "csLast":I
    add-int/lit8 v5, v6, -0x1

    .line 1424
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1425
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1426
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1427
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    .line 1428
    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1429
    if-eq v4, v5, :cond_1

    .line 1433
    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1426
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1424
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    .line 1443
    goto :goto_0
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1299
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return v4

    .line 1302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1303
    .local v5, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v5

    .line 1304
    .local v6, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 1305
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 1306
    goto :goto_0

    .line 1304
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .prologue
    .line 1718
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1719
    :cond_0
    const/4 v0, 0x1

    .line 1721
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsNone(Ljava/lang/String;[C)Z
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1666
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    .line 1692
    :cond_1
    :goto_0
    return v7

    .line 1669
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1670
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 1671
    .local v1, "csLast":I
    array-length v6, p1

    .line 1672
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 1673
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1674
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1675
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1676
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    .line 1677
    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1678
    if-eq v4, v5, :cond_1

    .line 1682
    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1675
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1673
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    .line 1692
    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "validChars"    # Ljava/lang/String;

    .prologue
    .line 1635
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1636
    :cond_0
    const/4 v0, 0x0

    .line 1638
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsOnly(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/String;[C)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "valid"    # [C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1600
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1609
    :cond_1
    :goto_0
    return v0

    .line 1603
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1606
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1607
    goto :goto_0

    .line 1609
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfAnyBut(Ljava/lang/String;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static countMatches(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 5319
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5320
    :cond_0
    const/4 v0, 0x0

    .line 5328
    :cond_1
    return v0

    .line 5322
    :cond_2
    const/4 v0, 0x0

    .line 5323
    .local v0, "count":I
    const/4 v1, 0x0

    .line 5324
    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5325
    add-int/lit8 v0, v0, 0x1

    .line 5326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 5729
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 5750
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5686
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 5707
    if-nez p0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3476
    if-nez p0, :cond_0

    .line 3477
    const/4 v0, 0x0

    .line 3479
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " \t\r\n\u0008"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3497
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3511
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3500
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3501
    .local v4, "sz":I
    new-array v0, v4, [C

    .line 3502
    .local v0, "chs":[C
    const/4 v1, 0x0

    .line 3503
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3504
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3505
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 3503
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 3508
    :cond_2
    if-eq v2, v4, :cond_0

    .line 3511
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 6021
    if-nez p0, :cond_0

    .line 6031
    .end local p1    # "str2":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 6024
    .restart local p1    # "str2":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 6025
    goto :goto_0

    .line 6027
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6028
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6029
    const-string p1, ""

    goto :goto_0

    .line 6031
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 6463
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 6504
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6505
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 6511
    :cond_1
    :goto_0
    return v4

    .line 6507
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 6511
    .local v2, "strOffset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static endsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "searchStrings"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6582
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6591
    :cond_0
    :goto_0
    return v2

    .line 6585
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 6586
    aget-object v1, p1, v0

    .line 6587
    .local v1, "searchString":Ljava/lang/String;
    invoke-static {p0, v1}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6588
    const/4 v2, 0x1

    goto :goto_0

    .line 6585
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 6489
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 661
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 686
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4567
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4429
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4430
    .local v0, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4435
    .end local p1    # "sep":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 4432
    .restart local p1    # "sep":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4433
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4435
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public static getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6199
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 6200
    :cond_0
    const-string v1, ""

    .line 6214
    :goto_0
    return-object v1

    .line 6202
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference([Ljava/lang/String;)I

    move-result v0

    .line 6203
    .local v0, "smallestIndexOfDiff":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 6205
    aget-object v1, p0, v2

    if-nez v1, :cond_2

    .line 6206
    const-string v1, ""

    goto :goto_0

    .line 6208
    :cond_2
    aget-object v1, p0, v2

    goto :goto_0

    .line 6209
    :cond_3
    if-nez v0, :cond_4

    .line 6211
    const-string v1, ""

    goto :goto_0

    .line 6214
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 6255
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6256
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6276
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 6277
    .local v6, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 6279
    .local v5, "m":I
    if-nez v6, :cond_2

    move v10, v5

    .line 6328
    :goto_0
    return v10

    .line 6281
    :cond_2
    if-nez v5, :cond_3

    move v10, v6

    .line 6282
    goto :goto_0

    .line 6285
    :cond_3
    if-le v6, v5, :cond_4

    .line 6287
    move-object v9, p0

    .line 6288
    .local v9, "tmp":Ljava/lang/String;
    move-object p0, p1

    .line 6289
    move-object p1, v9

    .line 6290
    move v6, v5

    .line 6291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 6294
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    .line 6295
    .local v7, "p":[I
    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    .line 6306
    .local v2, "d":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v6, :cond_5

    .line 6307
    aput v3, v7, v3

    .line 6306
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6310
    :cond_5
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-gt v4, v5, :cond_8

    .line 6311
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 6312
    .local v8, "t_j":C
    aput v4, v2, v10

    .line 6314
    const/4 v3, 0x1

    :goto_3
    if-gt v3, v6, :cond_7

    .line 6315
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    move v1, v10

    .line 6317
    .local v1, "cost":I
    :goto_4
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    .line 6314
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6315
    .end local v1    # "cost":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    .line 6321
    :cond_7
    move-object v0, v7

    .line 6322
    .local v0, "_d":[I
    move-object v7, v2

    .line 6323
    move-object v2, v0

    .line 6310
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6328
    .end local v0    # "_d":[I
    .end local v8    # "t_j":C
    :cond_8
    aget v10, v7, v6

    goto :goto_0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2360
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    .line 2390
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4471
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4472
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4473
    const-string v1, ""

    .line 4475
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    .line 711
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, -0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .prologue
    .line 743
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, -0x1

    .line 746
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 773
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 774
    :cond_0
    const/4 v0, -0x1

    .line 776
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 886
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 887
    :cond_0
    const/4 v0, -0x1

    .line 893
    :goto_0
    return v0

    .line 890
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    :cond_0
    const/4 v0, -0x1

    .line 1388
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfAny(Ljava/lang/String;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;[C)I
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    .line 1337
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 1359
    :cond_1
    :goto_0
    return v3

    .line 1340
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1341
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 1342
    .local v1, "csLast":I
    array-length v6, p1

    .line 1343
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 1344
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1345
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1346
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1347
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_3

    .line 1348
    if-ge v3, v1, :cond_1

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1350
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_1

    .line 1346
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1344
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    .line 1359
    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 1753
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    .line 1777
    :cond_1
    :goto_0
    return v1

    .line 1756
    :cond_2
    array-length v3, p1

    .line 1759
    .local v3, "sz":I
    const v1, 0x7fffffff

    .line 1761
    .local v1, "ret":I
    const/4 v4, 0x0

    .line 1762
    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 1763
    aget-object v2, p1, v0

    .line 1764
    .local v2, "search":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1762
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1767
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1768
    if-eq v4, v5, :cond_3

    .line 1772
    if-ge v4, v1, :cond_3

    .line 1773
    move v1, v4

    goto :goto_2

    .line 1777
    .end local v2    # "search":Ljava/lang/String;
    :cond_5
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_1

    move v1, v5

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 1554
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v5

    .line 1572
    :cond_1
    :goto_0
    return v3

    .line 1557
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1558
    .local v4, "strLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 1559
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1560
    .local v0, "ch":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_4

    const/4 v2, 0x1

    .line 1561
    .local v2, "chFound":Z
    :goto_2
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v4, :cond_5

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1562
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1563
    .local v1, "ch2":C
    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 1558
    .end local v1    # "ch2":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1560
    .end local v2    # "chFound":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1567
    .restart local v2    # "chFound":Z
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    .end local v0    # "ch":C
    .end local v2    # "chFound":Z
    :cond_6
    move v3, v5

    .line 1572
    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;[C)I
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    .line 1505
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 1528
    :cond_1
    :goto_0
    return v3

    .line 1508
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1509
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 1510
    .local v1, "csLast":I
    array-length v6, p1

    .line 1511
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 1513
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1514
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1515
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_1

    .line 1516
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_4

    .line 1517
    if-ge v3, v1, :cond_3

    if-ge v4, v5, :cond_3

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1518
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_4

    .line 1513
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1515
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    .line 1528
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 6058
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 6073
    :cond_0
    :goto_0
    return v0

    .line 6061
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 6062
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 6065
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 6066
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_5

    .line 6070
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 6073
    goto :goto_0

    .line 6065
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOfDifference([Ljava/lang/String;)I
    .locals 14
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 6108
    if-eqz p0, :cond_0

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2

    :cond_0
    move v8, v11

    .line 6162
    :cond_1
    :goto_0
    return v8

    .line 6111
    :cond_2
    const/4 v1, 0x0

    .line 6112
    .local v1, "anyStringNull":Z
    const/4 v0, 0x1

    .line 6113
    .local v0, "allStringsNull":Z
    array-length v2, p0

    .line 6114
    .local v2, "arrayLen":I
    const v8, 0x7fffffff

    .line 6115
    .local v8, "shortestStrLen":I
    const/4 v7, 0x0

    .line 6120
    .local v7, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 6121
    aget-object v12, p0, v6

    if-nez v12, :cond_3

    .line 6122
    const/4 v1, 0x1

    .line 6123
    const/4 v8, 0x0

    .line 6120
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6125
    :cond_3
    const/4 v0, 0x0

    .line 6126
    aget-object v12, p0, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 6127
    aget-object v12, p0, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 6132
    :cond_4
    if-nez v0, :cond_5

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    :cond_5
    move v8, v11

    .line 6133
    goto :goto_0

    .line 6137
    :cond_6
    if-nez v8, :cond_7

    move v8, v10

    .line 6138
    goto :goto_0

    .line 6142
    :cond_7
    const/4 v5, -0x1

    .line 6143
    .local v5, "firstDiff":I
    const/4 v9, 0x0

    .local v9, "stringPos":I
    :goto_3
    if-ge v9, v8, :cond_9

    .line 6144
    aget-object v12, p0, v10

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6145
    .local v4, "comparisonChar":C
    const/4 v3, 0x1

    .local v3, "arrayPos":I
    :goto_4
    if-ge v3, v2, :cond_8

    .line 6146
    aget-object v12, p0, v3

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_b

    .line 6147
    move v5, v9

    .line 6151
    :cond_8
    if-eq v5, v11, :cond_c

    .line 6156
    .end local v3    # "arrayPos":I
    .end local v4    # "comparisonChar":C
    :cond_9
    if-ne v5, v11, :cond_a

    if-ne v8, v7, :cond_1

    :cond_a
    move v8, v5

    .line 6162
    goto :goto_0

    .line 6145
    .restart local v3    # "arrayPos":I
    .restart local v4    # "comparisonChar":C
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 6143
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    const/4 v7, -0x1

    .line 956
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v7

    .line 974
    :cond_1
    :goto_0
    return v2

    .line 959
    :cond_2
    if-gez p2, :cond_3

    .line 960
    const/4 p2, 0x0

    .line 962
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    .line 963
    .local v6, "endLimit":I
    if-le p2, v6, :cond_4

    move v2, v7

    .line 964
    goto :goto_0

    .line 966
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    .line 967
    goto :goto_0

    .line 969
    :cond_5
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 970
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v7

    .line 974
    goto :goto_0
.end method

.method public static isAllLowerCase(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5624
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5633
    :cond_0
    :goto_0
    return v2

    .line 5627
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5628
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5629
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5633
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5655
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5664
    :cond_0
    :goto_0
    return v2

    .line 5658
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5659
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5660
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5664
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5352
    if-nez p0, :cond_1

    .line 5361
    :cond_0
    :goto_0
    return v2

    .line 5355
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5356
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5357
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5361
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5386
    if-nez p0, :cond_1

    .line 5395
    :cond_0
    :goto_0
    return v2

    .line 5389
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5390
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 5391
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5390
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5395
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5419
    if-nez p0, :cond_1

    .line 5428
    :cond_0
    :goto_0
    return v2

    .line 5422
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5423
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5424
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5428
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5453
    if-nez p0, :cond_1

    .line 5462
    :cond_0
    :goto_0
    return v2

    .line 5456
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5457
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 5458
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5457
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5462
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5491
    if-nez p0, :cond_1

    .line 5500
    :cond_0
    :goto_0
    return v2

    .line 5494
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5495
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5496
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5500
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 241
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 236
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    const/4 v2, 0x0

    goto :goto_0

    .line 236
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5525
    if-nez p0, :cond_1

    .line 5534
    :cond_0
    :goto_0
    return v2

    .line 5528
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5529
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5530
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5534
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5561
    if-nez p0, :cond_1

    .line 5570
    :cond_0
    :goto_0
    return v2

    .line 5564
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5565
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 5566
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5570
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5593
    if-nez p0, :cond_1

    .line 5602
    :cond_0
    :goto_0
    return v2

    .line 5596
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5597
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5598
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5602
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;C)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # C

    .prologue
    .line 3420
    if-nez p0, :cond_0

    .line 3421
    const/4 v0, 0x0

    .line 3423
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 3441
    if-nez p0, :cond_0

    .line 3442
    const/4 v0, 0x0

    .line 3444
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # C

    .prologue
    .line 3332
    if-nez p0, :cond_0

    .line 3333
    const/4 v3, 0x0

    .line 3357
    :goto_0
    return-object v3

    .line 3335
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3336
    const-string v3, ""

    goto :goto_0

    .line 3338
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3339
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3340
    invoke-static {v1}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3344
    :cond_2
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3345
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    if-eqz v1, :cond_3

    .line 3346
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3349
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3350
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3351
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3352
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3353
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 3357
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 3376
    if-nez p0, :cond_0

    .line 3377
    const/4 v3, 0x0

    .line 3402
    :goto_0
    return-object v3

    .line 3379
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3380
    const-string v3, ""

    goto :goto_0

    .line 3382
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3383
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3384
    invoke-static {v1}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3388
    :cond_2
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3389
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    if-eqz v1, :cond_3

    .line 3390
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3393
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3394
    if-eqz p1, :cond_4

    .line 3395
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3397
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3398
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3399
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 3402
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 3144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 3170
    if-nez p0, :cond_0

    .line 3171
    const/4 v0, 0x0

    .line 3174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 3204
    if-nez p0, :cond_0

    .line 3205
    const/4 v3, 0x0

    .line 3223
    :goto_0
    return-object v3

    .line 3207
    :cond_0
    sub-int v1, p3, p2

    .line 3208
    .local v1, "bufSize":I
    if-gtz v1, :cond_1

    .line 3209
    const-string v3, ""

    goto :goto_0

    .line 3212
    :cond_1
    aget-object v3, p0, p2

    if-nez v3, :cond_4

    const/16 v3, 0x10

    :goto_1
    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v1, v3

    .line 3213
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3215
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_5

    .line 3216
    if-le v2, p2, :cond_2

    .line 3217
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3219
    :cond_2
    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 3220
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3215
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3212
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v2    # "i":I
    :cond_4
    aget-object v3, p0, p2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 3223
    .restart local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 3251
    if-nez p0, :cond_0

    .line 3252
    const/4 v0, 0x0

    .line 3254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 3285
    if-nez p0, :cond_0

    .line 3286
    const/4 v3, 0x0

    .line 3312
    :goto_0
    return-object v3

    .line 3288
    :cond_0
    if-nez p1, :cond_1

    .line 3289
    const-string p1, ""

    .line 3294
    :cond_1
    sub-int v1, p3, p2

    .line 3295
    .local v1, "bufSize":I
    if-gtz v1, :cond_2

    .line 3296
    const-string v3, ""

    goto :goto_0

    .line 3299
    :cond_2
    aget-object v3, p0, p2

    if-nez v3, :cond_5

    const/16 v3, 0x10

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    .line 3302
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3304
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 3305
    if-le v2, p2, :cond_3

    .line 3306
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3308
    :cond_3
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 3309
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3304
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3299
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v2    # "i":I
    :cond_5
    aget-object v3, p0, p2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 3312
    .restart local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    .line 999
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, -0x1

    .line 1002
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .prologue
    .line 1033
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const/4 v0, -0x1

    .line 1036
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 1062
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1063
    :cond_0
    const/4 v0, -0x1

    .line 1065
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 1134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1135
    :cond_0
    const/4 v0, -0x1

    .line 1137
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .prologue
    .line 1806
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1807
    :cond_0
    const/4 v1, -0x1

    .line 1822
    :cond_1
    return v1

    .line 1809
    :cond_2
    array-length v3, p1

    .line 1810
    .local v3, "sz":I
    const/4 v1, -0x1

    .line 1811
    .local v1, "ret":I
    const/4 v4, 0x0

    .line 1812
    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1813
    aget-object v2, p1, v0

    .line 1814
    .local v2, "search":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1812
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1818
    if-le v4, v1, :cond_3

    .line 1819
    move v1, v4

    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 1163
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1164
    :cond_0
    const/4 v0, -0x1

    .line 1166
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    const/4 v6, -0x1

    .line 1198
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 1216
    :cond_1
    :goto_0
    return v2

    .line 1201
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 1202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int p2, v0, v1

    .line 1204
    :cond_3
    if-gez p2, :cond_4

    move v2, v6

    .line 1205
    goto :goto_0

    .line 1207
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    .line 1208
    goto :goto_0

    .line 1211
    :cond_5
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 1212
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1211
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move v2, v6

    .line 1216
    goto :goto_0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 1102
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 1962
    if-nez p0, :cond_1

    .line 1963
    const/4 p0, 0x0

    .line 1971
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1965
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 1966
    const-string p0, ""

    goto :goto_0

    .line 1968
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1971
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4830
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4855
    if-nez p0, :cond_1

    .line 4856
    const/4 p0, 0x0

    .line 4865
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4858
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4859
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4862
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4863
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4865
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4892
    if-nez p0, :cond_1

    .line 4893
    const/4 p0, 0x0

    .line 4918
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4895
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4896
    const-string p2, " "

    .line 4898
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4899
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4900
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 4901
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 4904
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4905
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4908
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4909
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4910
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4911
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4913
    :cond_5
    new-array v3, v4, [C

    .line 4914
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4915
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 4916
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4918
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4931
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5115
    if-nez p0, :cond_0

    .line 5116
    const/4 v0, 0x0

    .line 5118
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 5138
    if-nez p0, :cond_0

    .line 5139
    const/4 v0, 0x0

    .line 5141
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .prologue
    .line 2033
    if-nez p0, :cond_0

    .line 2034
    const/4 v0, 0x0

    .line 2045
    :goto_0
    return-object v0

    .line 2036
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2037
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2039
    :cond_2
    if-gez p1, :cond_3

    .line 2040
    const/4 p1, 0x0

    .line 2042
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 2043
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2045
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 6545
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6546
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 6560
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6549
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 6550
    .local v0, "b":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6551
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6552
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6553
    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6554
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 6550
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6557
    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_2

    .line 6560
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .prologue
    const/4 v1, -0x1

    .line 831
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v1

    .line 834
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 835
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 837
    :cond_3
    const/4 v0, 0x0

    .line 838
    .local v0, "found":I
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 840
    .local v1, "index":I
    :cond_4
    if-eqz p3, :cond_5

    .line 841
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 845
    :goto_2
    if-ltz v1, :cond_0

    .line 848
    add-int/lit8 v0, v0, 0x1

    .line 849
    if-lt v0, p2, :cond_4

    goto :goto_0

    .line 843
    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4261
    if-nez p0, :cond_0

    .line 4262
    const/4 v2, 0x0

    .line 4285
    :goto_0
    return-object v2

    .line 4264
    :cond_0
    if-nez p1, :cond_1

    .line 4265
    const-string p1, ""

    .line 4267
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4268
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 4269
    const/4 p2, 0x0

    .line 4271
    :cond_2
    if-le p2, v0, :cond_3

    .line 4272
    move p2, v0

    .line 4274
    :cond_3
    if-gez p3, :cond_4

    .line 4275
    const/4 p3, 0x0

    .line 4277
    :cond_4
    if-le p3, v0, :cond_5

    .line 4278
    move p3, v0

    .line 4280
    :cond_5
    if-le p2, p3, :cond_6

    .line 4281
    move v1, p2

    .line 4282
    .local v1, "temp":I
    move p2, p3

    .line 4283
    move p3, v1

    .line 4285
    .end local v1    # "temp":I
    :cond_6
    new-instance v2, Lorg/apache/commons/lang/text/StrBuilder;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static overlayString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4224
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padding(IC)Ljava/lang/String;
    .locals 5
    .param p0, "repeat"    # I
    .param p1, "padChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 4688
    if-gez p0, :cond_0

    .line 4689
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot pad a negative amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4691
    :cond_0
    new-array v0, p0, [C

    .line 4692
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4693
    aput-char p1, v0, v1

    .line 4692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4695
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static prechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4451
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4452
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4455
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .prologue
    .line 3705
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 3715
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3708
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3709
    .local v0, "chars":[C
    const/4 v2, 0x0

    .line 3710
    .local v2, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 3711
    aget-char v4, v0, v1

    if-eq v4, p1, :cond_2

    .line 3712
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    .line 3710
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3715
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3679
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3682
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3610
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3616
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3613
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3614
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3646
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3652
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3649
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3541
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3547
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3544
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3576
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3582
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3579
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4593
    if-nez p0, :cond_1

    .line 4594
    const/4 p0, 0x0

    .line 4630
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4596
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    .line 4597
    const-string p0, ""

    goto :goto_0

    .line 4599
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4600
    .local v5, "inputLength":I
    if-eq p1, v11, :cond_0

    if-eqz v5, :cond_0

    .line 4603
    if-ne v5, v11, :cond_3

    const/16 v9, 0x2000

    if-gt p1, v9, :cond_3

    .line 4604
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {p1, v9}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4607
    :cond_3
    mul-int v8, v5, p1

    .line 4608
    .local v8, "outputLength":I
    packed-switch v5, :pswitch_data_0

    .line 4626
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v8}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4627
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_6

    .line 4628
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4627
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4610
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v4    # "i":I
    :pswitch_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4611
    .local v1, "ch":C
    new-array v6, v8, [C

    .line 4612
    .local v6, "output1":[C
    add-int/lit8 v4, p1, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 4613
    aput-char v1, v6, v4

    .line 4612
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4615
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4617
    .end local v1    # "ch":C
    .end local v4    # "i":I
    .end local v6    # "output1":[C
    .restart local p0    # "str":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4618
    .local v2, "ch0":C
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4619
    .local v3, "ch1":C
    new-array v7, v8, [C

    .line 4620
    .local v7, "output2":[C
    mul-int/lit8 v9, p1, 0x2

    add-int/lit8 v4, v9, -0x2

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_5

    .line 4621
    aput-char v2, v7, v4

    .line 4622
    add-int/lit8 v9, v4, 0x1

    aput-char v3, v7, v9

    .line 4620
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4624
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4630
    .end local v2    # "ch0":C
    .end local v3    # "ch1":C
    .end local v7    # "output2":[C
    .restart local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    .line 4655
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4656
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4660
    :goto_0
    return-object v1

    .line 4659
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4660
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 3771
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .prologue
    const/16 v5, 0x40

    const/4 v7, -0x1

    .line 3803
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3825
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3806
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 3807
    .local v4, "start":I
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3808
    .local v1, "end":I
    if-eq v1, v7, :cond_0

    .line 3811
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3812
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    .line 3813
    .local v2, "increase":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 3814
    :cond_2
    if-gez p3, :cond_5

    const/16 v5, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v2, v5

    .line 3815
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3816
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_2
    if-eq v1, v7, :cond_4

    .line 3817
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3818
    add-int v4, v1, v3

    .line 3819
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    .line 3824
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3825
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3814
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_5
    if-gt p3, v5, :cond_3

    move v5, p3

    goto :goto_1

    .line 3822
    .restart local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_6
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .prologue
    .line 4125
    if-nez p0, :cond_0

    .line 4126
    const/4 v0, 0x0

    .line 4128
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .prologue
    .line 4168
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4193
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4171
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 4172
    const-string p2, ""

    .line 4174
    :cond_2
    const/4 v4, 0x0

    .line 4175
    .local v4, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 4176
    .local v5, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 4177
    .local v6, "strLength":I
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4178
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 4179
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4180
    .local v1, "ch":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4181
    .local v3, "index":I
    if-ltz v3, :cond_4

    .line 4182
    const/4 v4, 0x1

    .line 4183
    if-ge v3, v5, :cond_3

    .line 4184
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4178
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4187
    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_2

    .line 4190
    .end local v1    # "ch":C
    .end local v3    # "index":I
    :cond_5
    if-eqz v4, :cond_0

    .line 4191
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3868
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .prologue
    .line 3978
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 4099
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3985
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-gez p4, :cond_2

    .line 3986
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "TimeToLive of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " is less than 0: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3989
    :cond_2
    move-object/from16 v0, p1

    array-length v12, v0

    .line 3990
    .local v12, "searchLength":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 3993
    .local v10, "replacementLength":I
    if-eq v12, v10, :cond_3

    .line 3994
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4001
    :cond_3
    new-array v8, v12, [Z

    .line 4004
    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v15, -0x1

    .line 4005
    .local v15, "textIndex":I
    const/4 v9, -0x1

    .line 4006
    .local v9, "replaceIndex":I
    const/4 v14, -0x1

    .line 4010
    .local v14, "tempIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_8

    .line 4011
    aget-boolean v17, v8, v6

    if-nez v17, :cond_4

    aget-object v17, p1, v6

    if-eqz v17, :cond_4

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    aget-object v17, p2, v6

    if-nez v17, :cond_5

    .line 4010
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4016
    :cond_5
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 4019
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 4020
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_2

    .line 4022
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    if-ge v14, v15, :cond_4

    .line 4023
    :cond_7
    move v15, v14

    .line 4024
    move v9, v6

    goto :goto_2

    .line 4031
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 4035
    const/4 v13, 0x0

    .line 4038
    .local v13, "start":I
    const/4 v7, 0x0

    .line 4041
    .local v7, "increase":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 4042
    aget-object v17, p1, v6

    if-eqz v17, :cond_9

    aget-object v17, p2, v6

    if-nez v17, :cond_a

    .line 4041
    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4045
    :cond_a
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    .line 4046
    .local v5, "greater":I
    if-lez v5, :cond_9

    .line 4047
    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_4

    .line 4051
    .end local v5    # "greater":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4053
    new-instance v4, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4055
    .local v4, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_12

    .line 4057
    move v6, v13

    :goto_5
    if-ge v6, v15, :cond_d

    .line 4058
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4057
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4060
    :cond_d
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4062
    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    .line 4064
    const/4 v15, -0x1

    .line 4065
    const/4 v9, -0x1

    .line 4066
    const/4 v14, -0x1

    .line 4069
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_c

    .line 4070
    aget-boolean v17, v8, v6

    if-nez v17, :cond_e

    aget-object v17, p1, v6

    if-eqz v17, :cond_e

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_e

    aget-object v17, p2, v6

    if-nez v17, :cond_f

    .line 4069
    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4075
    :cond_f
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 4078
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_10

    .line 4079
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_7

    .line 4081
    :cond_10
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    if-ge v14, v15, :cond_e

    .line 4082
    :cond_11
    move v15, v14

    .line 4083
    move v9, v6

    goto :goto_7

    .line 4090
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 4091
    .local v16, "textLength":I
    move v6, v13

    :goto_8
    move/from16 v0, v16

    if-ge v6, v0, :cond_13

    .line 4092
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4091
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 4094
    :cond_13
    invoke-virtual {v4}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4095
    .local v11, "result":Ljava/lang/String;
    if-nez p3, :cond_14

    move-object/from16 p0, v11

    .line 4096
    goto/16 :goto_0

    .line 4099
    :cond_14
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    .line 3919
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3920
    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3919
    .end local v0    # "timeToLive":I
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 3744
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5770
    if-nez p0, :cond_0

    .line 5771
    const/4 v0, 0x0

    .line 5773
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->reverse()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 5796
    if-nez p0, :cond_0

    .line 5797
    const/4 v1, 0x0

    .line 5803
    :goto_0
    return-object v1

    .line 5801
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5802
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5803
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static reverseDelimitedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 5829
    if-nez p0, :cond_0

    .line 5830
    const/4 v1, 0x0

    .line 5839
    :goto_0
    return-object v1

    .line 5834
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5835
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5836
    if-nez p1, :cond_1

    .line 5837
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5839
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 1995
    if-nez p0, :cond_1

    .line 1996
    const/4 p0, 0x0

    .line 2004
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1998
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 1999
    const-string p0, ""

    goto :goto_0

    .line 2001
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2004
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4718
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4743
    if-nez p0, :cond_1

    .line 4744
    const/4 p0, 0x0

    .line 4753
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4746
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4747
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4750
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4751
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4753
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4780
    if-nez p0, :cond_1

    .line 4781
    const/4 p0, 0x0

    .line 4806
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4783
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4784
    const-string p2, " "

    .line 4786
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4787
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4788
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 4789
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 4792
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4793
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4796
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4797
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4798
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4799
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4801
    :cond_5
    new-array v3, v4, [C

    .line 4802
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4803
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 4804
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4806
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2418
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 2446
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 2475
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2509
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3020
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .prologue
    .line 3066
    if-nez p0, :cond_0

    .line 3067
    const/4 v7, 0x0

    .line 3094
    :goto_0
    return-object v7

    .line 3069
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 3070
    sget-object v7, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3072
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3073
    .local v0, "c":[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3074
    .local v2, "list":Ljava/util/List;
    const/4 v5, 0x0

    .line 3075
    .local v5, "tokenStart":I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 3076
    .local v1, "currentType":I
    add-int/lit8 v4, v5, 0x1

    .local v4, "pos":I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 3077
    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 3078
    .local v6, "type":I
    if-ne v6, v1, :cond_2

    .line 3076
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3081
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 3082
    add-int/lit8 v3, v4, -0x1

    .line 3083
    .local v3, "newTokenStart":I
    if-eq v3, v5, :cond_3

    .line 3084
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3085
    move v5, v3

    .line 3091
    .end local v3    # "newTokenStart":I
    :cond_3
    :goto_3
    move v1, v6

    goto :goto_2

    .line 3088
    :cond_4
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3089
    move v5, v4

    goto :goto_3

    .line 3093
    .end local v6    # "type":I
    :cond_5
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3094
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3048
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2536
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2567
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2596
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2629
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2649
    if-nez p0, :cond_0

    .line 2710
    :goto_0
    return-object v6

    .line 2653
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2655
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2656
    sget-object v6, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2659
    :cond_1
    if-eqz p1, :cond_2

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2661
    :cond_2
    invoke-static {p0, v6, p2, p3}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2664
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2666
    .local v4, "separatorLength":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2667
    .local v5, "substrings":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 2668
    .local v3, "numberOfSubstrings":I
    const/4 v0, 0x0

    .line 2669
    .local v0, "beg":I
    const/4 v1, 0x0

    .line 2670
    .local v1, "end":I
    :goto_1
    if-ge v1, v2, :cond_9

    .line 2671
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2673
    const/4 v6, -0x1

    if-le v1, v6, :cond_8

    .line 2674
    if-le v1, v0, :cond_5

    .line 2675
    add-int/lit8 v3, v3, 0x1

    .line 2677
    if-ne v3, p2, :cond_4

    .line 2678
    move v1, v2

    .line 2679
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2683
    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    add-int v0, v1, v4

    goto :goto_1

    .line 2692
    :cond_5
    if-eqz p3, :cond_6

    .line 2693
    add-int/lit8 v3, v3, 0x1

    .line 2694
    if-ne v3, p2, :cond_7

    .line 2695
    move v1, v2

    .line 2696
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    :cond_6
    :goto_2
    add-int v0, v1, v4

    goto :goto_1

    .line 2698
    :cond_7
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2705
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    move v1, v2

    goto :goto_1

    .line 2710
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2739
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 2775
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 2858
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2898
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .prologue
    .line 2793
    if-nez p0, :cond_0

    .line 2794
    const/4 v6, 0x0

    .line 2821
    :goto_0
    return-object v6

    .line 2796
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2797
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2798
    sget-object v6, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2800
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    .local v3, "list":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .line 2802
    .local v5, "start":I
    const/4 v4, 0x0

    .line 2803
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 2804
    .local v1, "lastMatch":Z
    :goto_1
    if-ge v0, v2, :cond_5

    .line 2805
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 2806
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 2807
    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2808
    const/4 v4, 0x0

    .line 2809
    const/4 v1, 0x1

    .line 2811
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 2812
    goto :goto_1

    .line 2814
    :cond_4
    const/4 v1, 0x0

    .line 2815
    const/4 v4, 0x1

    .line 2816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2818
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 2819
    :cond_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2821
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    .line 2920
    if-nez p0, :cond_0

    .line 2921
    const/4 v9, 0x0

    .line 2997
    :goto_0
    return-object v9

    .line 2923
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2924
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2925
    sget-object v9, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2927
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2928
    .local v3, "list":Ljava/util/List;
    const/4 v6, 0x1

    .line 2929
    .local v6, "sizePlus1":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v8, 0x0

    .line 2930
    .local v8, "start":I
    const/4 v4, 0x0

    .line 2931
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 2932
    .local v1, "lastMatch":Z
    if-nez p1, :cond_5

    move v7, v6

    .line 2934
    .end local v6    # "sizePlus1":I
    .local v7, "sizePlus1":I
    :goto_1
    if-ge v0, v2, :cond_10

    .line 2935
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2936
    if-nez v4, :cond_2

    if-eqz p3, :cond_13

    .line 2937
    :cond_2
    const/4 v1, 0x1

    .line 2938
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_3

    .line 2939
    move v0, v2

    .line 2940
    const/4 v1, 0x0

    .line 2942
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2943
    const/4 v4, 0x0

    .line 2945
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2946
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_1

    .line 2948
    :cond_4
    const/4 v1, 0x0

    .line 2949
    const/4 v4, 0x1

    .line 2950
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2952
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 2954
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "sep":C
    move v7, v6

    .line 2955
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_3
    if-ge v0, v2, :cond_9

    .line 2956
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_8

    .line 2957
    if-nez v4, :cond_6

    if-eqz p3, :cond_11

    .line 2958
    :cond_6
    const/4 v1, 0x1

    .line 2959
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_7

    .line 2960
    move v0, v2

    .line 2961
    const/4 v1, 0x0

    .line 2963
    :cond_7
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2964
    const/4 v4, 0x0

    .line 2966
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2967
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_3

    .line 2969
    :cond_8
    const/4 v1, 0x0

    .line 2970
    const/4 v4, 0x1

    .line 2971
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v6, v7

    .line 2994
    .end local v5    # "sep":C
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :goto_5
    if-nez v4, :cond_a

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    .line 2995
    :cond_a
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2997
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    goto/16 :goto_0

    .line 2975
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_6
    if-ge v0, v2, :cond_10

    .line 2976
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_e

    .line 2977
    if-nez v4, :cond_c

    if-eqz p3, :cond_f

    .line 2978
    :cond_c
    const/4 v1, 0x1

    .line 2979
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_d

    .line 2980
    move v0, v2

    .line 2981
    const/4 v1, 0x0

    .line 2983
    :cond_d
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2984
    const/4 v4, 0x0

    .line 2986
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2987
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    .line 2989
    :cond_e
    const/4 v1, 0x0

    .line 2990
    const/4 v4, 0x1

    .line 2991
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_7

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :cond_10
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_5

    .end local v6    # "sizePlus1":I
    .restart local v5    # "sep":C
    .restart local v7    # "sizePlus1":I
    :cond_11
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_4

    .end local v5    # "sep":C
    :cond_12
    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    :cond_13
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto/16 :goto_2
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 6356
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6396
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6397
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 6402
    :cond_1
    :goto_0
    return v2

    .line 6399
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "searchStrings"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6425
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6434
    :cond_0
    :goto_0
    return v2

    .line 6428
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 6429
    aget-object v1, p1, v0

    .line 6430
    .local v1, "searchString":Ljava/lang/String;
    invoke-static {p0, v1}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6431
    const/4 v2, 0x1

    goto :goto_0

    .line 6428
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 6381
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 483
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 484
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 628
    if-eqz p0, :cond_0

    array-length v2, p0

    .local v2, "strsLen":I
    if-nez v2, :cond_2

    .end local v2    # "strsLen":I
    :cond_0
    move-object v1, p0

    .line 635
    :cond_1
    return-object v1

    .line 631
    .restart local v2    # "strsLen":I
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 632
    .local v1, "newArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 633
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 558
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "end":I
    if-nez v0, :cond_1

    .line 573
    .end local v0    # "end":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 562
    .restart local v0    # "end":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 563
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 566
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 570
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 573
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 528
    .end local v1    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 516
    .restart local v1    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 517
    .local v0, "start":I
    if-nez p1, :cond_2

    .line 518
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 521
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 420
    if-nez p0, :cond_0

    .line 424
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 423
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .end local p0    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    .line 1852
    if-nez p0, :cond_0

    .line 1853
    const/4 v0, 0x0

    .line 1868
    :goto_0
    return-object v0

    .line 1857
    :cond_0
    if-gez p1, :cond_1

    .line 1858
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1861
    :cond_1
    if-gez p1, :cond_2

    .line 1862
    const/4 p1, 0x0

    .line 1864
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 1865
    const-string v0, ""

    goto :goto_0

    .line 1868
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1907
    if-nez p0, :cond_0

    .line 1908
    const/4 v0, 0x0

    .line 1936
    :goto_0
    return-object v0

    .line 1912
    :cond_0
    if-gez p2, :cond_1

    .line 1913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 1915
    :cond_1
    if-gez p1, :cond_2

    .line 1916
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1920
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 1921
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 1925
    :cond_3
    if-le p1, p2, :cond_4

    .line 1926
    const-string v0, ""

    goto :goto_0

    .line 1929
    :cond_4
    if-gez p1, :cond_5

    .line 1930
    const/4 p1, 0x0

    .line 1932
    :cond_5
    if-gez p2, :cond_6

    .line 1933
    const/4 p2, 0x0

    .line 1936
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2120
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2130
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2123
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 2124
    const-string p0, ""

    goto :goto_0

    .line 2126
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2127
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2128
    const-string p0, ""

    goto :goto_0

    .line 2130
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2201
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2211
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2204
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    const-string p0, ""

    goto :goto_0

    .line 2207
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2208
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 2209
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 2211
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2078
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2088
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2081
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2082
    const-string p0, ""

    goto :goto_0

    .line 2084
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2085
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2088
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2161
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2168
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2164
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2165
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2168
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2238
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2269
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2279
    :cond_0
    :goto_0
    return-object v2

    .line 2272
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2273
    .local v1, "start":I
    if-eq v1, v4, :cond_0

    .line 2274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2275
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    .line 2276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2305
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-object v7

    .line 2308
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2309
    .local v6, "strLen":I
    if-nez v6, :cond_2

    .line 2310
    sget-object v7, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2312
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2313
    .local v0, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2314
    .local v3, "openLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    .local v2, "list":Ljava/util/List;
    const/4 v4, 0x0

    .line 2316
    .local v4, "pos":I
    :goto_1
    sub-int v8, v6, v0

    if-ge v4, v8, :cond_3

    .line 2317
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 2318
    .local v5, "start":I
    if-gez v5, :cond_4

    .line 2329
    .end local v5    # "start":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2332
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .line 2321
    .restart local v5    # "start":I
    :cond_4
    add-int/2addr v5, v3

    .line 2322
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2323
    .local v1, "end":I
    if-ltz v1, :cond_3

    .line 2326
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    add-int v4, v1, v0

    .line 2328
    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    if-nez v3, :cond_1

    .line 5278
    .end local v3    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5264
    .restart local v3    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 5266
    .local v0, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    .line 5267
    .local v1, "ch":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 5268
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5269
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5270
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 5276
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5271
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5272
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    goto :goto_2

    .line 5273
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5274
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    goto :goto_2

    .line 5278
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 313
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 365
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ts":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static uncapitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5229
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .line 5213
    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5066
    if-nez p0, :cond_0

    .line 5067
    const/4 v0, 0x0

    .line 5069
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 5089
    if-nez p0, :cond_0

    .line 5090
    const/4 v0, 0x0

    .line 5092
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
