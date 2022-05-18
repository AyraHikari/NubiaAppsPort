.class Lcom/hpplay/sdk/source/process/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IBrowseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/c;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$4;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowse(ILjava/util/List;)V
    .locals 3
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
    .line 453
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk manager device callback -- >   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$4;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->f(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$4;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->f(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V

    .line 457
    :cond_0
    return-void
.end method
