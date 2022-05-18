.class Lcom/hpplay/sdk/source/mirror/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mirror/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/hpplay/sdk/source/mirror/d;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/d;Lcom/hpplay/sdk/source/mirror/d;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/d$a;->b:Lcom/hpplay/sdk/source/mirror/d;

    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$a;->b:Lcom/hpplay/sdk/source/mirror/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->c(Lcom/hpplay/sdk/source/mirror/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/d;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->d(Lcom/hpplay/sdk/source/mirror/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/d;->a(Lcom/hpplay/sdk/source/mirror/d;Z)Z

    .line 204
    const-string v1, "FrameDrawTask"

    const-string v2, " encoder awake "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->e(Lcom/hpplay/sdk/source/mirror/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 206
    :try_start_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->f(Lcom/hpplay/sdk/source/mirror/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 207
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_2
    const-string v1, "FrameDrawTask"

    const-string v2, " encoder black "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/d;->b(Lcom/hpplay/sdk/source/mirror/d;Z)Z

    goto :goto_0
.end method
