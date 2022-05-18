.class Lcom/hpplay/sdk/source/service/e$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e;

.field private b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/service/e;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 249
    const-string v0, "serviceCheckLelink"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/service/e$a;->setName(Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 251
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 256
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->a(Lcom/hpplay/sdk/source/service/e;Z)Z

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->f(Lcom/hpplay/sdk/source/service/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/e;->g(Lcom/hpplay/sdk/source/service/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/e;->h(Lcom/hpplay/sdk/source/service/e;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->tcpCheckTvState(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 261
    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;Z)Z

    .line 263
    const-string v0, "NewLelinkService"

    const-string v1, "state is online"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :goto_1
    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget v0, v0, Lcom/hpplay/sdk/source/service/e;->g:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "NewLelinkService"

    const-string v1, "Lelink state is offline"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 269
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->i(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/service/e$b;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/service/e$a$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/e$a$1;-><init>(Lcom/hpplay/sdk/source/service/e$a;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e$b;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;Z)Z

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/e;->g()V

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->a:Lcom/hpplay/sdk/source/service/e;

    iget v1, v0, Lcom/hpplay/sdk/source/service/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/e;->g:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 287
    :catch_1
    move-exception v0

    .line 288
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 297
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 298
    return-void
.end method
