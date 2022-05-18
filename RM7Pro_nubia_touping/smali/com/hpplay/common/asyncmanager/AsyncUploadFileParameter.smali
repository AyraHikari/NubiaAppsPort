.class public Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;,
        Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public id:I

.field public in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

.field public out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "AsyncUploadFileParameter"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;-><init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    .line 22
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;-><init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    .line 24
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iput-object p1, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->url:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iput-object p2, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->localPath:[Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iput-object p3, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->headParameter:Ljava/util/Map;

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "savePath can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    return-void
.end method
