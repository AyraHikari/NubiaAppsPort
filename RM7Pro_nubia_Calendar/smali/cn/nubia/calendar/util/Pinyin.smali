.class public Lcn/nubia/calendar/util/Pinyin;
.super Ljava/lang/Object;
.source "Pinyin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCnASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cnStr"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v2, "strBuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 64
    .local v0, "bGBK":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v0, v1

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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v4, 0x0

    .line 14
    .local v4, "t1":[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 16
    array-length v8, v4

    new-array v5, v8, [Ljava/lang/String;

    .line 19
    .local v5, "t2":[Ljava/lang/String;
    new-instance v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 20
    .local v6, "t3":Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 21
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 22
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 23
    const-string v7, ""

    .line 24
    .local v7, "t4":Ljava/lang/String;
    array-length v3, v4

    .line 26
    .local v3, "t0":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 29
    :try_start_0
    aget-char v8, v4, v1

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "str":Ljava/lang/String;
    const-string v8, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 31
    aget-char v8, v4, v1

    invoke-static {v8, v6}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v5

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_0

    const/4 v9, 0x0

    aget-object v2, v5, v9

    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 38
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    .line 42
    .end local v0    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_2
    return-object v7
.end method

.method public static getPinYinAndSrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "t1":[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 75
    array-length v8, v4

    new-array v5, v8, [Ljava/lang/String;

    .line 78
    .local v5, "t2":[Ljava/lang/String;
    new-instance v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 79
    .local v6, "t3":Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 80
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 81
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v6, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 82
    const-string v7, ""

    .line 83
    .local v7, "t4":Ljava/lang/String;
    array-length v3, v4

    .line 85
    .local v3, "t0":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 88
    :try_start_0
    aget-char v8, v4, v1

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "str":Ljava/lang/String;
    const-string v8, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    aget-char v8, v4, v1

    invoke-static {v8, v6}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 91
    goto :goto_1

    .line 95
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 98
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    .line 102
    .end local v0    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_2
    return-object v7
.end method

.method public static getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 46
    const-string v0, ""

    .line 47
    .local v0, "convert":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 50
    .local v3, "word":C
    invoke-static {v3}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "pinyinArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 57
    .end local v2    # "pinyinArray":[Ljava/lang/String;
    .end local v3    # "word":C
    :cond_1
    return-object v0
.end method
