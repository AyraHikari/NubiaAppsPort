.class Lcom/hpplay/common/asyncmanager/AsyncHttpJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncHttpJob;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "AsyncHttpJob"

    const-string v1, "http request timeout"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->onPostExecute(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
