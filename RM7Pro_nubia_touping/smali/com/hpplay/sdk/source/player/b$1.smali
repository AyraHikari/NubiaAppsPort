.class Lcom/hpplay/sdk/source/player/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/b;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/b;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/b$1;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b$1;->a:Lcom/hpplay/sdk/source/player/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;Z)Z

    .line 173
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- > isHuaweiDev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/b$1;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/sdk/source/player/b;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/b$1;->a:Lcom/hpplay/sdk/source/player/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/b;->b(Lcom/hpplay/sdk/source/player/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
