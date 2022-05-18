.class Lcom/hpplay/sdk/source/process/d$9;
.super Lcom/hpplay/sdk/source/f$a;
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
    .line 398
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$9;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/hpplay/sdk/source/browse/api/AdInfo;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$9;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->l(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$9;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->l(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/InteractiveAdListener;->onAdLoaded(Lcom/hpplay/sdk/source/browse/api/AdInfo;)V

    .line 404
    :cond_0
    return-void
.end method
