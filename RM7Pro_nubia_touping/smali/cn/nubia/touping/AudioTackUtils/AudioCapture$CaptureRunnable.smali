.class Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/AudioTackUtils/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;


# direct methods
.method private constructor <init>(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/AudioTackUtils/AudioCapture;Lcn/nubia/touping/AudioTackUtils/AudioCapture$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;
    .param p2, "x1"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;-><init>(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 101
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$100(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$200(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)I

    move-result v2

    new-array v0, v2, [B

    .line 103
    .local v0, "buffer":[B
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$300(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Landroid/media/AudioRecord;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v4}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$200(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 104
    .local v1, "readRecord":I
    const-string v2, "AudioCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-lez v1, :cond_2

    .line 106
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$400(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$400(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;->onCaptureListener([BI)V

    .line 108
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$500(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const-string v2, "AudioCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u97f3\u9891\u91c7\u96c6\u6570\u636e\u6e90 -- "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " -- bytes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    :goto_1
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;->this$0:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-static {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->access$500(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "AudioCapture"

    const-string v3, "\u5f55\u97f3\u91c7\u96c6\u5f02\u5e38"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v0    # "buffer":[B
    .end local v1    # "readRecord":I
    :cond_3
    return-void
.end method
