.class public Lcom/android/calculator2/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommas(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    sub-int p1, p2, v1

    .line 56
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_2

    if-eq p2, v1, :cond_2

    const/16 p1, 0x2c

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtensionIgnoring(Ljava/lang/CharSequence;Ljava/lang/CharSequence;C)Ljava/lang/CharSequence;
    .locals 6

    .line 71
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 74
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 77
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v1, :cond_3

    :goto_2
    if-ge v3, v0, :cond_2

    .line 89
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {p0, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    if-eq v3, v0, :cond_5

    .line 83
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
