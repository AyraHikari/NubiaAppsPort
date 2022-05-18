.class public Lcom/hpplay/common/asyncmanager/AsyncFileParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;,
        Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;
    }
.end annotation


# instance fields
.field public id:I

.field public in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

.field public out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;-><init>(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    .line 23
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;-><init>(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    .line 25
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    iput-object p1, v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;->fileUrl:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    iput-object p2, v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;->savePath:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "savePath can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method
