.class Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "initAuth onAuthFailed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z

    .line 250
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z

    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;I)I

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_1

    .line 253
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/store/Session;->tid:Ljava/lang/String;

    .line 254
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 255
    const-string v2, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthFailed tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->b:Z

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/b;->a()V

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    goto :goto_0
.end method

.method public onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 226
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "initAuth onAuthSuccess"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z

    .line 228
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;Z)Z

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->b:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->b(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/b;->a()V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;J)J

    .line 237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    const-string v2, "expire_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;I)I

    .line 240
    const-string v0, "LelinkServiceManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthSuccess: mExpireTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->a:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-static {v2}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "LelinkServiceManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setStartRelation(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$b;->b:Z

    .line 222
    return-void
.end method
