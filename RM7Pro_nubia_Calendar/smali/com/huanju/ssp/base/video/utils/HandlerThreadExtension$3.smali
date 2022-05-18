.class Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$3;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->postQuit()V
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
    .line 81
    iput-object p1, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$3;->this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postQuit, run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 86
    return-void
.end method
