.class Lcom/hpplay/sdk/source/d/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/common/log/UploadLogCallback;

.field final synthetic b:Lcom/hpplay/sdk/source/d/f;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/d/f;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/hpplay/sdk/source/d/f$3;->b:Lcom/hpplay/sdk/source/d/f;

    iput-object p2, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 197
    const-string v0, "LogDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadfile response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    invoke-virtual {v2}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 205
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    const-string v1, "LogDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadfile response code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    invoke-interface {v1, v0}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    :try_start_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V

    .line 214
    const-string v1, "LogDispatcher"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 220
    :catch_1
    move-exception v0

    .line 221
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    invoke-interface {v1, v4}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V

    .line 222
    const-string v1, "LogDispatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$3;->a:Lcom/hpplay/common/log/UploadLogCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
