.class Lcom/hpplay/sdk/source/service/d$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/d;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/service/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/service/d;Landroid/content/Context;Lcom/hpplay/sdk/source/service/d;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    .line 204
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d$b;->b:Ljava/lang/ref/WeakReference;

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 210
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/d;

    .line 212
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->b(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v1, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->V()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->x()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "HappyCast3,1"

    .line 217
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/d$b;->a:Lcom/hpplay/sdk/source/service/d;

    .line 219
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "0"

    .line 220
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v1

    .line 222
    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->b(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    new-instance v2, Lcom/hpplay/sdk/source/service/d$b$1;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/service/d$b$1;-><init>(Lcom/hpplay/sdk/source/service/d$b;)V

    new-array v3, v4, [[B

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method
