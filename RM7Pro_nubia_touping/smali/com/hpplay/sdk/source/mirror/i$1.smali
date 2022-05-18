.class Lcom/hpplay/sdk/source/mirror/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mirror/i;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/hpplay/sdk/source/mirror/i;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/i;I)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i$1;->b:Lcom/hpplay/sdk/source/mirror/i;

    iput p2, p0, Lcom/hpplay/sdk/source/mirror/i$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteComplate()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$1;->b:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "ScreenCastThread"

    const-string v1, "----------------------------- the first exit  "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$1;->b:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    const/16 v1, 0x67

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i$1;->a:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :cond_0
    return-void
.end method
