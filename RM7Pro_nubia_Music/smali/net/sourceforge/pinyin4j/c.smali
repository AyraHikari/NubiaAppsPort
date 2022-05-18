.class public Lnet/sourceforge/pinyin4j/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(C)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/c;->b(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(CLnet/sourceforge/pinyin4j/format/b;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sourceforge/pinyin4j/c;->b(CLnet/sourceforge/pinyin4j/format/b;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/sourceforge/pinyin4j/a;->a()Lnet/sourceforge/pinyin4j/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sourceforge/pinyin4j/a;->a(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(CLnet/sourceforge/pinyin4j/format/b;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/c;->b(C)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2, p1}, Lnet/sourceforge/pinyin4j/b;->a(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
