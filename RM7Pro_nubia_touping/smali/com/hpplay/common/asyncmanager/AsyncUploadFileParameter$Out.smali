.class public Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Out"
.end annotation


# instance fields
.field private result:Ljava/lang/Object;

.field public resultType:I

.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->this$0:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->this$0:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->resultClass:Ljava/lang/Class;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "AsyncUploadFileParameter"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->result:Ljava/lang/Object;

    .line 58
    return-void
.end method
