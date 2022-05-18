.class Lcom/hpplay/sdk/source/a/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/a/c;->a(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/a/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/a/c;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/c$5;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_0

    .line 266
    const-string v0, "IMEntrance"

    const-string v1, "sendChannelMsg success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "IMEntrance"

    const-string v1, "sendChannelMsg failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
