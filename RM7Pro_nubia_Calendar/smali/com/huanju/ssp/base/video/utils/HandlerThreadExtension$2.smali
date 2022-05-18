.class Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;->this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;->this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->access$100(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;->this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->access$100(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
