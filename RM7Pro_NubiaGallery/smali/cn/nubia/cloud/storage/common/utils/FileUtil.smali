.class public Lcn/nubia/cloud/storage/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final separator:Ljava/lang/String; = "/"

.field private static final separatorChar:C = '/'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoRenamePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 111
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 120
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " autoRenamePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lfj"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static genPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "http://"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    .line 35
    aget-char v7, v0, v3

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_3

    add-int/lit8 v4, v5, 0x1

    .line 38
    aput-char v8, v0, v5

    move v5, v4

    move v4, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v5, 0x1

    .line 42
    aput-char v7, v0, v5

    move v5, v4

    move v4, v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    if-le v5, v6, :cond_5

    add-int/lit8 v5, v5, -0x1

    :cond_5
    if-eq v5, v1, :cond_6

    .line 51
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static genPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "name is empty"

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {p0, p1}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDepth(Ljava/lang/String;)I
    .locals 5

    .line 98
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p0, v1

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 75
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 86
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
