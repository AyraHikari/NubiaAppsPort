.class Lcom/hpplay/sdk/source/player/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hpplay/sdk/source/player/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iput-object p2, p0, Lcom/hpplay/sdk/source/player/d$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 356
    const-string v0, "LelinkPlayerControl"

    const-string v1, "connect successful "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 359
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->P()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 360
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "HappyCast3,1"

    .line 361
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->h(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/d$6$1;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$6$1;-><init>(Lcom/hpplay/sdk/source/player/d$6;)V

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$6;->b:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x493e2

    const v2, 0x493e4

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 389
    :cond_1
    const-string v0, "LelinkPlayerControl"

    const-string v1, "connect failed "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
