.class public Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;,
        Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;
    }
.end annotation


# static fields
.field public static final DEFAULT_SPACE:I = 0x0

.field public static final DEFAULT_TRY_COUNT:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field public id:I

.field public in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

.field public out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "AsyncHttpParameter"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->TAG:Ljava/lang/String;

    .line 36
    if-gtz p3, :cond_0

    .line 37
    const-string v0, "AsyncHttpParameter"

    const-string v1, "tryCount must bigger than 0,use default value"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    const/4 p3, 0x3

    .line 41
    :cond_0
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;-><init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    .line 42
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;-><init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    .line 44
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput-object p1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput p3, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const-string v1, ""

    iput-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput-object p2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    goto :goto_0
.end method
