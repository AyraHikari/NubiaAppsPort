.class Lcom/hpplay/sdk/source/process/LelinkSdkService$1;
.super Lcom/hpplay/sdk/source/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcom/hpplay/sdk/source/process/LelinkSdkService;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public addPinCodeToLelinkServiceInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->g:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/process/c;->b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 349
    return-void
.end method

.method public addQRCodeToLelinkServiceInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->g:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/process/c;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 344
    return-void
.end method

.method public addVolume()V
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->d()V

    .line 302
    return-void
.end method

.method public browse(ZZ)V
    .locals 2

    .prologue
    .line 223
    const-string v0, "LelinkSdkService"

    const-string v1, "browse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(ZZ)V

    .line 226
    return-void
.end method

.method public canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 243
    const-string v0, "LelinkSdkService"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 245
    return-void
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 249
    const-string v0, "LelinkSdkService"

    const-string v1, "disConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public getConnectInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "LelinkSdkService"

    const-string v1, "getConnectInfos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOption(I)I
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->c(I)I

    move-result v0

    return v0
.end method

.method public initSdkWithUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 166
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    .line 364
    return-void
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    .line 359
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->h()V

    .line 297
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->g()V

    .line 292
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->b(I)V

    .line 231
    return-void
.end method

.method public setAuthListener(Lcom/hpplay/sdk/source/l;)V
    .locals 4

    .prologue
    .line 338
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    const v1, 0x10004

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public setConnectStatusListener(Lcom/hpplay/sdk/source/d;)V
    .locals 2

    .prologue
    .line 211
    const-string v0, "LelinkSdkService"

    const-string v1, "setConnectStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/d;)Lcom/hpplay/sdk/source/d;

    .line 213
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->i:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 214
    return-void
.end method

.method public setDebugAVListener(Lcom/hpplay/sdk/source/e;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Z)V

    .line 172
    return-void
.end method

.method public setDebugTimestamp(Z)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setDebugVideoFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    const-string v0, "LelinkSdkService"

    const-string v1, "setDebugVideoFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setDisplayListener(Lcom/hpplay/sdk/source/g;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setInteractiveListener(Lcom/hpplay/sdk/source/f;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/f;)Lcom/hpplay/sdk/source/f;

    .line 379
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->f:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 380
    return-void
.end method

.method public setLelinkPlayListenerListener(Lcom/hpplay/sdk/source/h;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/h;)Lcom/hpplay/sdk/source/h;

    .line 205
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->k:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 207
    return-void
.end method

.method public setLelinkServiceInfoListener(Lcom/hpplay/sdk/source/b;)V
    .locals 2

    .prologue
    .line 185
    const-string v0, "LelinkSdkService"

    const-string v1, "setLelinkServiceInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/b;)Lcom/hpplay/sdk/source/b;

    .line 187
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->j:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 189
    return-void
.end method

.method public setLelinkServiceInfoOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    .line 327
    const-string v0, "LelinkSdkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/process/c;->a(I[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setLogCallback(Lcom/hpplay/sdk/source/j;)V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/j;)V

    .line 401
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public setOption(I[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    const-string v0, "LelinkSdkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public setParceResultListener(Lcom/hpplay/sdk/source/k;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/k;)Lcom/hpplay/sdk/source/k;

    .line 219
    return-void
.end method

.method public setRelevantInfoListener(Lcom/hpplay/sdk/source/m;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/m;)Lcom/hpplay/sdk/source/m;

    .line 385
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/LelinkSdkService;->h:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 386
    return-void
.end method

.method public setSocketExceptionListener(Lcom/hpplay/sdk/source/o;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    const v1, 0x100029

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(I)V

    .line 312
    return-void
.end method

.method public startMirrorForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 4

    .prologue
    .line 279
    const-string v0, "LelinkSdkService"

    const-string v1, "startMirrorForPlayerInfo "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    const-string v1, "LelinkSdkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMirrorForPlayerInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->b()V

    .line 286
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 287
    return-void
.end method

.method public startOnlineCheck(Lcom/hpplay/sdk/source/i;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/sdk/source/i;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    const v1, 0x10003

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public startPlayMedia(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 261
    const-string v0, "LelinkSdkService"

    const-string v1, "startPlayMedia"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    .line 263
    return-void
.end method

.method public startPlayMediaForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 2

    .prologue
    .line 267
    const-string v0, "LelinkSdkService"

    const-string v1, "startPlayMediaForPlayerInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 269
    return-void
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 273
    const-string v0, "LelinkSdkService"

    const-string v1, "startPlayMediaImmed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    .line 275
    return-void
.end method

.method public stopBrowse()V
    .locals 4

    .prologue
    .line 235
    const-string v0, "LelinkSdkService"

    const-string v1, "stopBrowse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/process/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    iget-wide v2, v2, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;->S:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/process/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->b()V

    .line 239
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->j()V

    .line 317
    return-void
.end method

.method public subVolume()V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->e()V

    .line 307
    return-void
.end method

.method public updatePCMData(III[BII)V
    .locals 0

    .prologue
    .line 391
    return-void
.end method
