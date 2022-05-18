.class public Lcom/hpplay/sdk/source/mdns/utils/Misc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final globalLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "global"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/utils/Misc;->globalLogger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 20
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final getLogger(Ljava/lang/Class;Z)Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/utils/Misc;->getLogger(Ljava/lang/String;Z)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static final getLogger(Ljava/lang/String;Z)Ljava/util/logging/Logger;
    .locals 2

    .prologue
    .line 120
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/hpplay/sdk/source/mdns/utils/Misc;->globalLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 125
    :cond_0
    return-object v0
.end method

.method public static setGlobalLogLevel(Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/hpplay/sdk/source/mdns/utils/Misc;->globalLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/hpplay/sdk/source/mdns/utils/Misc;->globalLogger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 112
    return-object v0
.end method

.method public static final throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 68
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStack Trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimTrailingDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 53
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_0
    return-object p0

    .line 51
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final trimTrailingDot(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 36
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    :cond_0
    return-object p0

    .line 34
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v1, 0x0

    .line 85
    array-length v6, v5

    const/4 v0, 0x0

    move/from16 v16, v0

    move v0, v2

    move v2, v3

    move/from16 v3, v16

    :goto_1
    if-ge v3, v6, :cond_5

    aget-char v7, v5, v3

    .line 86
    const/16 v8, 0x5c

    if-ne v7, v8, :cond_1

    .line 87
    const/4 v2, 0x1

    .line 88
    const/4 v0, 0x2

    .line 89
    const/4 v1, 0x0

    .line 85
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v0

    move v0, v1

    move/from16 v1, v16

    goto :goto_1

    .line 91
    :cond_1
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    if-gez v1, :cond_2

    .line 92
    const/4 v2, 0x0

    .line 93
    int-to-char v8, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    if-eqz v2, :cond_4

    .line 97
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    int-to-double v8, v0

    add-int/lit8 v0, v7, -0x30

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    int-to-double v14, v1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 103
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v16

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 106
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
