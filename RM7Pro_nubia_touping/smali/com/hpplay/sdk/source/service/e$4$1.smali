.class Lcom/hpplay/sdk/source/service/e$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e$4;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hpplay/sdk/source/service/e$4;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iput-object p2, p0, Lcom/hpplay/sdk/source/service/e$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->a:Ljava/lang/String;

    const-string v1, "success"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->a:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;Z)Z

    .line 390
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    new-instance v1, Lcom/hpplay/sdk/source/player/e;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/player/e;-><init>()V

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->a(Lcom/hpplay/sdk/source/service/e;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;

    .line 391
    const-string v0, "NewLelinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSessionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v2, v2, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->j(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->a(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->j(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v2, v2, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/e;->k(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 394
    const-string v0, "LelinkPassthroughChannel"

    const-string v1, "connect result over  success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/e;->m()V

    .line 396
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->i(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/service/e$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->i(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/service/e$b;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/service/e$4$1$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/e$4$1$1;-><init>(Lcom/hpplay/sdk/source/service/e$4$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/e$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;)V

    goto :goto_0
.end method
