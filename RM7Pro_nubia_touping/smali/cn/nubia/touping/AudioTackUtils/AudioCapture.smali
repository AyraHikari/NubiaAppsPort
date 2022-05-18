.class public Lcn/nubia/touping/AudioTackUtils/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;,
        Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field public static final AUDIO_SAMPLE_RATE:I = 0xac44

.field private static final AUDIO_SOURCE:I = 0x7

.field private static final CHANNEL_CONFIGS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "AudioCapture"


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferSize:I

.field private captureListener:Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

.field private isDebug:Z

.field private isStartRecord:Z

.field private isStopRecord:Z

.field private threadCapture:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    .line 28
    iput-boolean v3, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStartRecord:Z

    .line 29
    iput-boolean v3, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStopRecord:Z

    .line 30
    iput-boolean v3, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStopRecord:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->captureListener:Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/touping/AudioTackUtils/AudioCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    return v0
.end method


# virtual methods
.method public getCaptureListener()Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->captureListener:Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    return-object v0
.end method

.method public setCaptureListener(Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;)V
    .locals 2
    .param p1, "captureListener"    # Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->captureListener:Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;

    .line 138
    const-string v0, "audioTrack"

    const-string v1, "setCaptureListener_111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x7

    const v1, 0xac44

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->start(IIII)V

    .line 46
    return-void
.end method

.method public start(IIII)V
    .locals 6
    .param p1, "audioSource"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "audioFormat"    # I

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStartRecord:Z

    if-eqz v0, :cond_1

    .line 50
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "AudioCapture"

    const-string v1, "\u97f3\u9891\u5f55\u5236\u5df2\u7ecf\u5f00\u542f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    .line 56
    iget v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 57
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "AudioCapture"

    const-string v1, "\u65e0\u6548\u53c2\u6570"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "AudioCapture"

    const-string v1, "bufferSize = "

    iget v2, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    iget v5, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->bufferSize:I

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    .line 67
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStopRecord:Z

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture$CaptureRunnable;-><init>(Lcn/nubia/touping/AudioTackUtils/AudioCapture;Lcn/nubia/touping/AudioTackUtils/AudioCapture$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->threadCapture:Ljava/lang/Thread;

    .line 72
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->threadCapture:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStartRecord:Z

    .line 75
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isDebug:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "AudioCapture"

    const-string v1, "\u97f3\u9891\u5f55\u5236\u5f00\u542f..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStartRecord:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStopRecord:Z

    .line 85
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->threadCapture:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 87
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 88
    iget-object v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->isStartRecord:Z

    goto :goto_0
.end method
