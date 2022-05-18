.class public final Lcom/hpplay/cybergarage/util/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isXMLFileName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 68
    invoke-static {p0}, Lcom/hpplay/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final load(Ljava/io/File;)[B
    .locals 3

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    invoke-static {v0}, Lcom/hpplay/cybergarage/util/FileUtil;->load(Ljava/io/FileInputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "Cyber-FileUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static final load(Ljava/io/FileInputStream;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const/high16 v0, 0x80000

    new-array v1, v0, [B

    .line 50
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 53
    :goto_0
    if-lez v0, :cond_0

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 55
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 60
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "Cyber-FileUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    new-array v0, v4, [B

    goto :goto_1
.end method

.method public static final load(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Lcom/hpplay/cybergarage/util/FileUtil;->load(Ljava/io/FileInputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Cyber-FileUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method
