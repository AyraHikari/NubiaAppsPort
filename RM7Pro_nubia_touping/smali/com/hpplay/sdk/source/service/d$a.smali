.class Lcom/hpplay/sdk/source/service/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/d;

.field private b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/service/d;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 317
    const-string v0, "serviceCheckLelink"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/service/d$a;->setName(Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 323
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 324
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/d;->b(Lcom/hpplay/sdk/source/service/d;Z)Z

    .line 325
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->h(Lcom/hpplay/sdk/source/service/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/d;->i(Lcom/hpplay/sdk/source/service/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/d;->j(Lcom/hpplay/sdk/source/service/d;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->tcpCheckTvState(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 329
    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v1, v1, Lcom/hpplay/sdk/source/service/d;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->i:I

    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v0, v0, Lcom/hpplay/sdk/source/service/d;->h:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    const/16 v1, 0xa

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->h:I

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v1, v0, Lcom/hpplay/sdk/source/service/d;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->h:I

    .line 335
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;Z)Z

    .line 336
    const-string v0, "LelinkServiceConnect"

    const-string v1, "state is online"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v0, v0, Lcom/hpplay/sdk/source/service/d;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v1, "LelinkServiceConnect"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 338
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    const/4 v1, 0x5

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->h:I

    .line 339
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v1, v1, Lcom/hpplay/sdk/source/service/d;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->i:I

    .line 340
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v1, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    .line 341
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget v0, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_4

    .line 343
    const-string v0, "LelinkServiceConnect"

    const-string v1, "Lelink state is offline"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 345
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c20

    const v3, 0x33c21

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;Z)Z

    .line 350
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/d;->g()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 353
    :catch_1
    move-exception v0

    .line 354
    const-string v1, "LelinkServiceConnect"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 363
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 364
    return-void
.end method
