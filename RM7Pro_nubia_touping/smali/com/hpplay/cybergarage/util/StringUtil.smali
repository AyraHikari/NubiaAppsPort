.class public final Lcom/hpplay/cybergarage/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-StringUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/hpplay/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findFirstOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/hpplay/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/hpplay/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findLastOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/hpplay/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 50
    if-nez p4, :cond_0

    move v0, v1

    .line 78
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, p2

    .line 55
    :goto_1
    if-lez p4, :cond_2

    .line 56
    if-ge p3, v2, :cond_3

    :cond_1
    move v0, v1

    .line 78
    goto :goto_0

    .line 59
    :cond_2
    if-lt v2, p3, :cond_1

    .line 62
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v4

    move v0, v4

    .line 64
    :goto_2
    if-ge v3, v5, :cond_7

    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 66
    const/4 v8, 0x1

    if-ne p5, v8, :cond_4

    .line 67
    if-ne v6, v7, :cond_6

    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    if-eq v6, v7, :cond_5

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_5
    if-ne v0, v5, :cond_6

    move v0, v2

    .line 73
    goto :goto_0

    .line 64
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 76
    :cond_7
    add-int/2addr v2, p4

    .line 77
    goto :goto_1
.end method

.method public static final hasData(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final toInteger(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "Cyber-StringUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final toLong(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 46
    :goto_0
    return-wide v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "Cyber-StringUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static final trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/StringUtil;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    if-gez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object p0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/StringUtil;->findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    if-ltz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
