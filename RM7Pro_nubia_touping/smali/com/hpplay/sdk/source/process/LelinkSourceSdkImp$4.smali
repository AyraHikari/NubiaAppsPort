.class Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;
.super Lcom/hpplay/sdk/source/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->setOption(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;->c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReverseInfoResult(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 703
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReverseInfoResult option = > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;->c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;->c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onReverseInfoResult(ILjava/lang/String;)V

    .line 707
    :cond_0
    return-void
.end method

.method public onSendRelevantInfoResult(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 695
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option = > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;->c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;->c:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onSendRelevantInfoResult(ILjava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method
