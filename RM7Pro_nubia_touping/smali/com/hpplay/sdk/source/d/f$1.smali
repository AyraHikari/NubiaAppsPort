.class Lcom/hpplay/sdk/source/d/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/d/f;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

.field final synthetic b:Lcom/hpplay/sdk/source/d/f;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/d/f;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/hpplay/sdk/source/d/f$1;->b:Lcom/hpplay/sdk/source/d/f;

    iput-object p2, p0, Lcom/hpplay/sdk/source/d/f$1;->a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$1;->a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$1;->a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;->onQueryResult(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$1;->a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$1;->a:Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;->onError()V

    goto :goto_0
.end method
