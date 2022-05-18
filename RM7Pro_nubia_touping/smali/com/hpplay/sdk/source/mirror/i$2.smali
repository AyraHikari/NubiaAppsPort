.class Lcom/hpplay/sdk/source/mirror/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mirror/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/i;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/i;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteComplate()V
    .locals 5

    .prologue
    const/16 v4, 0x68

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;Z)Z

    .line 241
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->sendEmptyMessage(I)Z

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mirror/i$a;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$2;->a:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    :cond_0
    return-void
.end method
