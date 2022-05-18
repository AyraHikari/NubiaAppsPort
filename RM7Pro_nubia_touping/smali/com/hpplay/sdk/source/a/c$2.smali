.class Lcom/hpplay/sdk/source/a/c$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/a/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/a/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/a/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/c$2;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 85
    const-string v0, "IMEntrance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hpplay/sdk/source/a/e;

    .line 88
    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c$2;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-static {v1}, Lcom/hpplay/sdk/source/a/c;->a(Lcom/hpplay/sdk/source/a/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/hpplay/sdk/source/a/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/a/g;

    .line 89
    if-eqz v1, :cond_0

    .line 90
    iget-wide v2, v0, Lcom/hpplay/sdk/source/a/e;->a:J

    iget-object v0, v0, Lcom/hpplay/sdk/source/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
