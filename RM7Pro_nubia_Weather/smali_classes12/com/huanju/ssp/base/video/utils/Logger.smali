.class public Lcom/huanju/ssp/base/video/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachThreadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static err(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static err(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static inf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/huanju/ssp/base/video/utils/Logger;->attachThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
