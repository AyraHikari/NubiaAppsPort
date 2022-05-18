.class Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/LelinkCastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 87
    :try_start_0
    const-string v0, "LelinkCastPlayer"

    const-string v1, "receive im msg upload log"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "eid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v1, "et"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->logReportUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, ""

    new-instance v6, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1$1;

    invoke-direct {v6, p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1$1;-><init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;)V

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V

    .line 99
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logReportReceicedListener eid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v1, "uid"

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v3}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/player/a;->m:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "manifestVer"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v1, "eid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    const/16 v2, 0x15

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->sendRelevantInfo(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
