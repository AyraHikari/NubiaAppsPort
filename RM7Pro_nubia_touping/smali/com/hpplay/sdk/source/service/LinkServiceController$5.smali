.class Lcom/hpplay/sdk/source/service/LinkServiceController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/service/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/LinkServiceController;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/LinkServiceController;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 206
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c(Lcom/hpplay/sdk/source/service/LinkServiceController;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;Lcom/hpplay/sdk/source/browse/b/b;)Lcom/hpplay/sdk/source/browse/b/b;

    .line 207
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->d(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/service/LinkServiceController;->b(Lcom/hpplay/sdk/source/service/LinkServiceController;I)I

    .line 209
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c()V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "LinkServiceController"

    const-string v1, "dlna onConnectFailed im connect failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$5;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;I)V

    goto :goto_0
.end method
