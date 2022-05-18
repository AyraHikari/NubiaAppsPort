.class Lcom/hpplay/sdk/source/service/d$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/d$2;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hpplay/sdk/source/service/d$2;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/d$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iput-object p2, p0, Lcom/hpplay/sdk/source/service/d$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->a:Ljava/lang/String;

    const-string v1, "success"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->a:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;Z)Z

    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    new-instance v1, Lcom/hpplay/sdk/source/player/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/player/d;-><init>()V

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;

    .line 166
    const-string v0, "LelinkServiceConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSessionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v2, v2, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->d(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->a(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->d(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v2, v2, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/d;->e(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/service/d;->a(I)V

    .line 170
    const-string v0, "LelinkServiceConnect"

    const-string v1, "connect result over  success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->f(Lcom/hpplay/sdk/source/service/d;)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2$1;->b:Lcom/hpplay/sdk/source/service/d$2;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->c(Lcom/hpplay/sdk/source/service/d;)V

    goto :goto_0
.end method
