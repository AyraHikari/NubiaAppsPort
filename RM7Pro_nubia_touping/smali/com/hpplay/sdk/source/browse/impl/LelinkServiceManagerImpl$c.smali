.class Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->b:I

    .line 318
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->a:Ljava/lang/ref/WeakReference;

    .line 319
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 323
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 325
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "TimeTickReceiver LelinkServiceManagerImpl reference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 329
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "TimeTickReceiver LelinkServiceManagerImpl is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 335
    iget v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->b:I

    .line 336
    iget v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$c;->b:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    .line 339
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeTickReceiver start auth again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAuthSuccessTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->f(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->c(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    :cond_3
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "TimeTickReceiver start auth again"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->init(Landroid/content/Context;)V

    .line 343
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "LelinkServiceManagerImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
