.class public Lcn/nubia/deskclock/util/Pinyin;
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

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v5, 0x0

    .line 14
    .local v5, "srcArray":[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 15
    array-length v8, v5

    new-array v4, v8, [Ljava/lang/String;

    .line 17
    .local v4, "pinYin":[Ljava/lang/String;
    new-instance v3, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v3}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 18
    .local v3, "out":Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v3, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 19
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v3, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 20
    sget-object v8, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v3, v8}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 21
    const-string v7, ""

    .line 22
    .local v7, "target":Ljava/lang/String;
    array-length v2, v5

    .line 24
    .local v2, "lengthOfSrcArray":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 25
    :try_start_0
    aget-char v8, v5, v1

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 26
    .local v6, "str":Ljava/lang/String;
    const-string v8, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 27
    aget-char v8, v5, v1

    invoke-static {v8, v3}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_0

    const/4 v9, 0x0

    aget-object v6, v4, v9

    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 24
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .restart local v6    # "str":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 33
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    .line 36
    .end local v0    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_2
    return-object v7
.end method

.method public static getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    const-string v0, ""

    .line 41
    .local v0, "convert":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 43
    .local v3, "word":C
    invoke-static {v3}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "pinyinArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 45
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

    .line 41
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
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

    .line 50
    .end local v2    # "pinyinArray":[Ljava/lang/String;
    .end local v3    # "word":C
    :cond_1
    return-object v0
.end method
