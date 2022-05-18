.class Lcom/hpplay/sdk/source/process/d$6;
.super Lcom/hpplay/sdk/source/g$a;
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
.field final synthetic d:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;->onPaused()V

    .line 295
    :cond_0
    return-void
.end method

.method public onResumed()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;->onResumed()V

    .line 288
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$6;->d:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->i(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;->onStopped()V

    .line 302
    :cond_0
    return-void
.end method
