.class Lcom/hpplay/sdk/source/service/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/c;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/c$1;->a:Lcom/hpplay/sdk/source/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 91
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/hpplay/common/utils/DeviceUtil;->getBluetoothName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/service/c$1;->a:Lcom/hpplay/sdk/source/service/c;

    .line 94
    invoke-static {v4}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/hpplay/sdk/source/service/c$1$1;

    invoke-direct {v6, p0}, Lcom/hpplay/sdk/source/service/c$1$1;-><init>(Lcom/hpplay/sdk/source/service/c$1;)V

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 110
    return-void
.end method
