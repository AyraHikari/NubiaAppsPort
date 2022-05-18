.class public Lcom/hpplay/nanohttpd/a/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/a/a/e/d;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->a:Ljava/io/File;

    .line 60
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->b:Ljava/io/OutputStream;

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not delete temporary file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/a;->b:Ljava/io/OutputStream;

    return-object v0
.end method
