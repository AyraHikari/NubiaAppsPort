.class Lcom/hpplay/sdk/source/service/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e$a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e$a;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$a$1;->a:Lcom/hpplay/sdk/source/service/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a$1;->a:Lcom/hpplay/sdk/source/service/e$a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$a$1;->a:Lcom/hpplay/sdk/source/service/e$a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c20

    const v3, 0x33c21

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
