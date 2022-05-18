.class public Lcom/hpplay/nanohttpd/a/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/a/a/f/b;


# instance fields
.field protected a:J

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/a;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/a/a/a;

    .line 69
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/a;->a()V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public b(Lcom/hpplay/nanohttpd/a/a/a;)V
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->a:J

    .line 81
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, p1}, Lcom/hpplay/nanohttpd/a/a/f/a;->c(Lcom/hpplay/nanohttpd/a/a/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method protected c(Lcom/hpplay/nanohttpd/a/a/a;)Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHttpd Request Processor (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/hpplay/nanohttpd/a/a/f/a;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 89
    return-object v0
.end method
