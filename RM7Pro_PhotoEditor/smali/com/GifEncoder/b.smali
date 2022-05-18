.class public abstract Lcom/GifEncoder/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/GifEncoder/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/GifEncoder/b$b;
    }
.end annotation


# static fields
.field protected static final e:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/GifEncoder/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/GifEncoder/c;

.field private c:Lcom/GifEncoder/b$b;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/GifEncoder/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/GifEncoder/b;->b:Lcom/GifEncoder/c;

    iput-object v0, p0, Lcom/GifEncoder/b;->c:Lcom/GifEncoder/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    return-void
.end method

.method static synthetic c(Lcom/GifEncoder/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/GifEncoder/b;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/GifEncoder/b;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method protected e()V
    .locals 3

    sget-object v0, Lcom/GifEncoder/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/GifEncoder/b;->b:Lcom/GifEncoder/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/GifEncoder/c;->f()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/GifEncoder/b;->b:Lcom/GifEncoder/c;

    :cond_0
    iget-object v1, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/GifEncoder/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/GifEncoder/c;->f()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract f()Lcom/GifEncoder/c;
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method public next()Lcom/GifEncoder/c;
    .locals 2

    iget-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/GifEncoder/b;->b:Lcom/GifEncoder/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/GifEncoder/c;->f()V

    :cond_1
    sget-object v0, Lcom/GifEncoder/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    sget-object v1, Lcom/GifEncoder/b;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/GifEncoder/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/GifEncoder/c;

    iput-object v1, p0, Lcom/GifEncoder/b;->b:Lcom/GifEncoder/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    new-instance v0, Lcom/GifEncoder/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/GifEncoder/b$b;-><init>(Lcom/GifEncoder/b;Lcom/GifEncoder/b$a;)V

    iput-object v0, p0, Lcom/GifEncoder/b;->c:Lcom/GifEncoder/b$b;

    const-string v1, "LoadTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/GifEncoder/b;->c:Lcom/GifEncoder/b$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/GifEncoder/b;->d:Z

    invoke-virtual {p0}, Lcom/GifEncoder/b;->e()V

    :cond_0
    return-void
.end method
