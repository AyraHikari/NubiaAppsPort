.class Lcom/hpplay/sdk/source/player/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->e(Lcom/hpplay/sdk/source/player/d;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 314
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/player/d$5$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/player/d$5$1;-><init>(Lcom/hpplay/sdk/source/player/d$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x1

    const v2, 0x3345a

    const v3, 0x3345c

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/d;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    :cond_2
    :try_start_1
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->g(Lcom/hpplay/sdk/source/player/d;)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
