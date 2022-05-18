.class public Lcom/hpplay/nanohttpd/a/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/a/a/e/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "DefaultTempFileManager"

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->b:Ljava/io/File;

    .line 63
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->c:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/e/d;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/e/a;

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/hpplay/nanohttpd/a/a/e/a;-><init>(Ljava/io/File;)V

    .line 84
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/a/a/e/d;

    .line 73
    :try_start_0
    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v2, "DefaultTempFileManager"

    const-string v3, "could not delete file "

    invoke-static {v2, v3, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    return-void
.end method
