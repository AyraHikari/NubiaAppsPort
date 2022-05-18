.class Lcom/hpplay/sdk/source/process/d$1;
.super Lcom/hpplay/sdk/source/k$a;
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
    .line 201
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$1;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$1;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$1;->b:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 207
    :cond_0
    return-void
.end method
