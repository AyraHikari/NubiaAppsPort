.class Lcom/hpplay/sdk/source/process/d$7;
.super Lcom/hpplay/sdk/source/e$a;
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
.field final synthetic c:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$7;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCallback(JIII[B)V
    .locals 9

    .prologue
    .line 308
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$7;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->j(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$7;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->j(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/hpplay/sdk/source/api/IDebugAVListener;->onAudioCallback(JIII[B)V

    .line 311
    :cond_0
    return-void
.end method

.method public onVideoCallback(JIII[B)V
    .locals 9

    .prologue
    .line 315
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$7;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->j(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$7;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->j(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IDebugAVListener;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/hpplay/sdk/source/api/IDebugAVListener;->onVideoCallback(JIII[B)V

    .line 318
    :cond_0
    return-void
.end method
