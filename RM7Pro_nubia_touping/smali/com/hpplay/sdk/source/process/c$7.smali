.class Lcom/hpplay/sdk/source/process/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/process/c;->l()V
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
    .line 641
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$7;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 662
    const-string v0, "LelinkSdkManager"

    const-string v1, "uploadLogQuery error"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public onQueryResult(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 646
    :try_start_0
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log query result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 649
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    const-string v2, "report_err"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 651
    const-string v3, "eid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 652
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    if-eqz v2, :cond_0

    .line 653
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$7;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->k(Lcom/hpplay/sdk/source/process/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->logReportUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
