.class Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/d;->a()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$304(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)I

    .line 781
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$202(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Z)Z

    .line 782
    return-void
.end method
