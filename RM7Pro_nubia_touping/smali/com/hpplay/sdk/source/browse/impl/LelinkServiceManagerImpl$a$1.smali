.class Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

.field final synthetic b:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;->b:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 883
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "reInitAuth run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    .line 885
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    .line 886
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    .line 887
    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    return-void
.end method
