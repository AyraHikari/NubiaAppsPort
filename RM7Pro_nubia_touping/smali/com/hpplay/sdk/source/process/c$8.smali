.class Lcom/hpplay/sdk/source/process/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IParceResultListener;


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
    .line 701
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$8;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$8;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->l(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 705
    return-void
.end method
