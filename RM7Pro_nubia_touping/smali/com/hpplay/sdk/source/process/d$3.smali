.class Lcom/hpplay/sdk/source/process/d$3;
.super Lcom/hpplay/sdk/source/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$3;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$3;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->c(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$3;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->c(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;->onResult(ILjava/lang/Object;)V

    .line 235
    :cond_0
    return-void
.end method
