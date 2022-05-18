.class Lcom/bumptech/glide/load/resource/c/i$b;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/g/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/i$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)Lcom/bumptech/glide/b/d;
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/d;

    .line 140
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/bumptech/glide/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/b/d;-><init>()V

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/d;->a([B)Lcom/bumptech/glide/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/d;)V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/b/d;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
