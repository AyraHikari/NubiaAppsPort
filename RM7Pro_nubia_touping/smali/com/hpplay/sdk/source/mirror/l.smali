.class public Lcom/hpplay/sdk/source/mirror/l;
.super Landroid/hardware/display/VirtualDisplay$Callback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "VirtualDisplayCallback"


# instance fields
.field public a:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mirror/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/i;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplay$Callback;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/l;->a:Z

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onPaused mReference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/i;

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onPaused screenCast is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v1, "VirtualDisplayCallback"

    const-string v2, "VirtualDisplayCallback onPaused"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 70
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->j()V

    goto :goto_0
.end method

.method public onResumed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 29
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onResumed mReference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/i;

    .line 33
    if-nez v0, :cond_2

    .line 34
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onResumed screenCast is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "VirtualDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualDisplayCallback onResumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/l;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->i()V

    .line 39
    iput-boolean v4, v0, Lcom/hpplay/sdk/source/mirror/i;->p:Z

    .line 40
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    iget-boolean v1, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    if-eqz v1, :cond_4

    .line 43
    iput-boolean v4, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    goto :goto_0

    .line 48
    :cond_3
    iput-boolean v4, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 50
    :cond_4
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/l;->a:Z

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/l;->a:Z

    .line 53
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->f()V

    goto :goto_0
.end method

.method public onStopped()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "VirtualDisplayCallback onStop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onPaused mReference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/i;

    .line 81
    if-nez v0, :cond_1

    .line 82
    const-string v0, "VirtualDisplayCallback"

    const-string v1, "onPaused screenCast is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "VirtualDisplayCallback"

    const-string v2, "VirtualDisplayCallback onStopped"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->k()V

    goto :goto_0
.end method
