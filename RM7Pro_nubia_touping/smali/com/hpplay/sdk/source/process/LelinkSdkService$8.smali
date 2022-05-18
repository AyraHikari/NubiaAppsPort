.class Lcom/hpplay/sdk/source/process/LelinkSdkService$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/AudioStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSdkService;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$8;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioEncoderExit()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$8;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->i(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    .line 668
    return-void
.end method

.method public onStartEncoder()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$8;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->h(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    .line 663
    return-void
.end method
