.class Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$5;
.super Lcom/hpplay/sdk/source/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$5;->b:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCastLog(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$5;->b:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1200(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/ILogCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILogCallback;->onCastLog(ILjava/lang/String;)V

    .line 767
    return-void
.end method
