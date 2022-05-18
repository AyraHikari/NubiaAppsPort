.class Lcom/hpplay/sdk/source/push/PublicCastClient$3;
.super Lcom/hpplay/sdk/source/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/push/PublicCastClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/push/PublicCastClient;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$3;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsg(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 212
    const-string v0, "PublicCastClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logReportReceiver  action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$3;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->c(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$3;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->c(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;->onReceive(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method
