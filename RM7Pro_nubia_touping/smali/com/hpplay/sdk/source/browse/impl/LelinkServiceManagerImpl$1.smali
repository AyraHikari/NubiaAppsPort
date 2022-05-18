.class Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Ljava/util/List;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;->c:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    iput-object p3, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 583
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$1;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 584
    return-void
.end method
