.class Lcom/hpplay/sdk/source/service/e$4$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e$4$1$1;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e$4$1$1;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$4$1$1$1;->a:Lcom/hpplay/sdk/source/service/e$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1$1$1;->a:Lcom/hpplay/sdk/source/service/e$4$1$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4$1$1;->a:Lcom/hpplay/sdk/source/service/e$4$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->l(Lcom/hpplay/sdk/source/service/e;)V

    .line 407
    return-void
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4$1$1$1;->a:Lcom/hpplay/sdk/source/service/e$4$1$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4$1$1;->a:Lcom/hpplay/sdk/source/service/e$4$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4$1;->b:Lcom/hpplay/sdk/source/service/e$4;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->l(Lcom/hpplay/sdk/source/service/e;)V

    .line 412
    return-void
.end method
