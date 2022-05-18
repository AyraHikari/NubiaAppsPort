.class Lcom/hpplay/sdk/source/service/d$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/d$b;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/d$b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/d$b;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/d;->c:Z

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v0, "LelinkServiceConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feedback call back :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/d$b;->removeMessages(I)V

    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/d$b;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "LelinkServiceConnect"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget v1, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;Z)Z

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget v0, v0, Lcom/hpplay/sdk/source/service/d;->g:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c20

    const v3, 0x33c21

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/d$b;->removeMessages(I)V

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/d;->g()V

    goto/16 :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b$1;->a:Lcom/hpplay/sdk/source/service/d$b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/d$b;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
