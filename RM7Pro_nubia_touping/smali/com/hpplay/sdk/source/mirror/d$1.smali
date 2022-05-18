.class Lcom/hpplay/sdk/source/mirror/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/d;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/d$1;->a:Lcom/hpplay/sdk/source/mirror/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$1;->a:Lcom/hpplay/sdk/source/mirror/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->a(Lcom/hpplay/sdk/source/mirror/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$1;->a:Lcom/hpplay/sdk/source/mirror/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->b(Lcom/hpplay/sdk/source/mirror/d;)Lcom/hpplay/sdk/source/mirror/d$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mirror/d$a;->sendEmptyMessage(I)Z

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$1;->a:Lcom/hpplay/sdk/source/mirror/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->b(Lcom/hpplay/sdk/source/mirror/d;)Lcom/hpplay/sdk/source/mirror/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/d$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d$1;->a:Lcom/hpplay/sdk/source/mirror/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/d;->b(Lcom/hpplay/sdk/source/mirror/d;)Lcom/hpplay/sdk/source/mirror/d$a;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/hpplay/sdk/source/mirror/d$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
