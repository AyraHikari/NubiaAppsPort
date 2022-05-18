.class Lcom/hpplay/sdk/source/player/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/e$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/e$1;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/e$1;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$1$1;->a:Lcom/hpplay/sdk/source/player/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1$1;->a:Lcom/hpplay/sdk/source/player/e$1;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->e()V

    .line 138
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek callback result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :cond_0
    return-void
.end method
