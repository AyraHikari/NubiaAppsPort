.class Lcom/hpplay/sdk/source/mirror/i$b;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/i;

.field private b:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/i;Lcom/hpplay/sdk/source/mirror/i;)V
    .locals 1

    .prologue
    .line 765
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i$b;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    .line 766
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$b;->b:Ljava/lang/ref/WeakReference;

    .line 767
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 771
    const-string v0, "ScreenCastThread"

    const-string v1, " MediaProjectionCallback onStop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$b;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 773
    const-string v0, "ScreenCastThread"

    const-string v1, "onResumed mReference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/i;

    .line 777
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/hpplay/sdk/source/mirror/i;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$b;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->h(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->h()V

    goto :goto_0
.end method
