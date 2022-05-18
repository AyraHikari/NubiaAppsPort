.class public Lcn/nubia/music/utils/Pinyin;
.super Ljava/lang/Object;
.source "Pinyin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCnASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 82
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 22
    array-length v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 25
    new-instance v4, Lnet/sourceforge/pinyin4j/format/b;

    invoke-direct {v4}, Lnet/sourceforge/pinyin4j/format/b;-><init>()V

    .line 26
    sget-object v1, Lnet/sourceforge/pinyin4j/format/a;->b:Lnet/sourceforge/pinyin4j/format/a;

    invoke-virtual {v4, v1}, Lnet/sourceforge/pinyin4j/format/b;->a(Lnet/sourceforge/pinyin4j/format/a;)V

    .line 27
    sget-object v1, Lnet/sourceforge/pinyin4j/format/c;->b:Lnet/sourceforge/pinyin4j/format/c;

    invoke-virtual {v4, v1}, Lnet/sourceforge/pinyin4j/format/b;->a(Lnet/sourceforge/pinyin4j/format/c;)V

    .line 28
    sget-object v1, Lnet/sourceforge/pinyin4j/format/d;->b:Lnet/sourceforge/pinyin4j/format/d;

    invoke-virtual {v4, v1}, Lnet/sourceforge/pinyin4j/format/b;->a(Lnet/sourceforge/pinyin4j/format/d;)V

    .line 29
    const-string v1, ""

    .line 30
    array-length v5, v3

    move-object v2, v1

    move v1, v0

    .line 32
    :goto_0
    if-ge v1, v5, :cond_2

    .line 35
    :try_start_0
    aget-char v0, v3, v1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v6, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    aget-char v6, v3, v1

    invoke-static {v6, v4}, Lnet/sourceforge/pinyin4j/c;->a(CLnet/sourceforge/pinyin4j/format/b;)[Ljava/lang/String;

    move-result-object v6

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    :cond_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 41
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 48
    :cond_2
    return-object v2
.end method

.method public static getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, ""

    move v1, v2

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 62
    invoke-static {v3}, Lnet/sourceforge/pinyin4j/c;->a(C)[Ljava/lang/String;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 69
    :cond_1
    return-object v0
.end method
