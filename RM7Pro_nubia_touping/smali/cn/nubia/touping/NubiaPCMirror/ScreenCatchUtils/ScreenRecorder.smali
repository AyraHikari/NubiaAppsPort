.class public Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;
    }
.end annotation


# static fields
.field private static ExpandingSionMode:Z = false

.field private static final INVALID_INDEX:I = -0x1

.field private static final MSG_START_CATCHDATA:I = 0x0

.field private static final MSG_STOP_CATCHDATA:I = 0x1

.field private static final MSG_SUSPEND_CATCHDATA:I = 0x2

.field private static final NO_PTS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ScreenRecorder"

.field private static changeFlag:I

.field public static flagForWiredTouPing:Z

.field private static instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

.field private static isSmallTouPingStatus:Z


# instance fields
.field private PPS:[B

.field private SPS:[B

.field private app_mirror_entering:I

.field private currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private framerate:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private final headerBuffer:Ljava/nio/ByteBuffer;

.field private isLandForsmallMirror:Z

.field private mAudioOutputFormat:Landroid/media/MediaFormat;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIRotationWatcher:Landroid/view/IRotationWatcher;

.field private mInputSurface:Landroid/view/Surface;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOutputFormat:Landroid/media/MediaFormat;

.field private mVideoPtsOffset:J

.field private mVideoTrackIndex:I

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mediaCodec:Landroid/media/MediaCodec;

.field mediaProjection:Landroid/media/projection/MediaProjection;

.field public portrait:Z

.field private ptsOrigin:J

.field private rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

.field private smallRotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

.field private workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->flagForWiredTouPing:Z

    .line 117
    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ExpandingSionMode:Z

    .line 130
    sput v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 131
    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/media/projection/MediaProjection;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaProjection"    # Landroid/media/projection/MediaProjection;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    .line 63
    iput v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    .line 66
    iput-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    .line 68
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    .line 69
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    .line 74
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    .line 85
    iput v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    .line 97
    iput-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    .line 98
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->smallRotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    iput v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->framerate:I

    .line 150
    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-direct {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;-><init>()V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    .line 159
    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    .line 913
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    .line 208
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getSmallMirrorStatus()Z

    move-result v2

    sput-boolean v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    .line 210
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Encoder"

    const/16 v4, -0x14

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    .line 211
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 212
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 213
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    invoke-direct {v2, p0, v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;-><init>(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->initPortrait(Landroid/content/Context;)V

    .line 215
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 216
    iget-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    invoke-static {p1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->getVideoEncodeConfig(Landroid/content/Context;Z)Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    .line 217
    iget-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    invoke-direct {p0, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->initcurrentRotationPortrait(Z)V

    .line 218
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-boolean v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    invoke-static {v2, p2, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 219
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setapp_mirror_entering()V

    .line 220
    const-string v2, "ScreenRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenRecorder creat app_mirror_entering = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "looper":Landroid/os/Looper;
    :goto_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->addRegisterRotationWatcher()V

    .line 227
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->doExtract()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->release()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->toSuspendTouPingInner()V

    return-void
.end method

.method private addRegisterRotationWatcher()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    .line 182
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->registerRotationWatcher(Landroid/view/IRotationWatcher;I)V

    .line 183
    return-void
.end method

.method private catchAllScreenData()V
    .locals 6

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    const-string v1, "ScreenRecorder"

    const-string v2, "catchAllScreenData exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dealWithData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "headerBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "realData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 897
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 901
    .local v2, "len":I
    new-array v0, v2, [B

    .line 902
    .local v0, "bytes1":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 904
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 905
    .local v3, "len_realData":I
    new-array v1, v3, [B

    .line 906
    .local v1, "bytes1_realData":[B
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 907
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->addMessage([B[B)V

    goto :goto_0
.end method

.method private deleteRotationWatcher()V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->deleteRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIRotationWatcher:Landroid/view/IRotationWatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doExtract()V
    .locals 14

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 358
    :try_start_0
    const-string v9, "ScreenRecorder777"

    const-string v10, "doExtract comein "

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v4, 0x0

    .line 364
    .local v4, "flagForrotationChanged":I
    const/16 v0, 0x2710

    .line 365
    .local v0, "TIMEOUT_USEC":I
    const/4 v6, 0x0

    .line 367
    .local v6, "outputDone":Z
    :cond_0
    :goto_0
    if-nez v6, :cond_6

    .line 369
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1

    .line 518
    .end local v0    # "TIMEOUT_USEC":I
    .end local v4    # "flagForrotationChanged":I
    .end local v6    # "outputDone":Z
    :goto_1
    return-void

    .line 374
    .restart local v0    # "TIMEOUT_USEC":I
    .restart local v4    # "flagForrotationChanged":I
    .restart local v6    # "outputDone":Z
    :cond_1
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v10, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 376
    .local v1, "decoderStatus":I
    if-eq v1, v11, :cond_0

    .line 380
    const/4 v9, -0x3

    if-eq v1, v9, :cond_0

    .line 383
    const/4 v9, -0x2

    if-ne v1, v9, :cond_2

    .line 388
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    .end local v0    # "TIMEOUT_USEC":I
    .end local v1    # "decoderStatus":I
    .end local v4    # "flagForrotationChanged":I
    .end local v6    # "outputDone":Z
    :catch_0
    move-exception v3

    .line 515
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    const-string v7, "ScreenRecorder"

    const-string v8, "doExtract exception "

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "TIMEOUT_USEC":I
    .restart local v1    # "decoderStatus":I
    .restart local v4    # "flagForrotationChanged":I
    .restart local v6    # "outputDone":Z
    :cond_2
    if-gez v1, :cond_3

    .line 394
    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    :cond_3
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_4

    .line 415
    const/4 v6, 0x1

    .line 416
    const/4 v9, -0x1

    iput v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    .line 431
    :cond_4
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 433
    .local v5, "outputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v9, v7, :cond_5

    .line 446
    :cond_5
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_7

    move v2, v7

    .line 449
    .local v2, "doRender":Z
    :goto_2
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-nez v9, :cond_8

    .line 450
    const-string v7, "ScreenRecorder7777"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flagForrotationChanged = 1 isLandStus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  isSmallTouPingStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v4, 0x1

    .line 452
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 510
    .end local v1    # "decoderStatus":I
    .end local v2    # "doRender":Z
    .end local v5    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    :goto_3
    const-string v7, "ScreenRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restartVedioCodec start  flagForrotationChanged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v4}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->restartVedioCodec(I)V

    .line 512
    invoke-static {}, Lcn/nubia/touping/Utils/TouPingProvider;->resetPrivateMode()V

    .line 513
    const-string v7, "ScreenRecorder"

    const-string v8, "restartVedioCodec end "

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v1    # "decoderStatus":I
    .restart local v5    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    move v2, v8

    .line 446
    goto :goto_2

    .line 456
    .restart local v2    # "doRender":Z
    :cond_8
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->smallRotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v9, :cond_9

    .line 457
    const-string v7, "ScreenRecorder7777"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flagForrotationChanged = 11 isLandStus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  isSmallTouPingStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/16 v4, 0xb

    .line 459
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    .line 464
    :cond_9
    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    if-ne v9, v7, :cond_a

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v9, :cond_a

    .line 465
    const-string v7, "ScreenRecorder7777"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flagForrotationChanged = 2 isLandStus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  isSmallTouPingStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v7, 0x0

    sput v7, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 467
    const/4 v4, 0x2

    .line 468
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_3

    .line 473
    :cond_a
    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-nez v9, :cond_b

    .line 474
    const-string v7, "ScreenRecorder7777"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flagForrotationChanged = 3 isLandStus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  isSmallTouPingStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v7, 0x0

    sput v7, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 476
    const/4 v4, 0x3

    .line 477
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_3

    .line 482
    :cond_b
    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_c

    .line 483
    const-string v7, "ScreenRecorder7777"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flagForrotationChanged = 4 isLandStus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  isSmallTouPingStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v7, 0x0

    sput v7, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 485
    const/4 v4, 0x4

    .line 486
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_3

    .line 491
    :cond_c
    sget v9, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_d

    .line 492
    const/4 v7, 0x0

    sput v7, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 493
    const/4 v4, 0x5

    .line 494
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_3

    .line 499
    :cond_d
    if-eqz v2, :cond_e

    .line 500
    const-string v9, "ScreenRecorder"

    const-string v10, "send data"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setHeaderBuffer(Landroid/media/MediaCodec$BufferInfo;I)V

    .line 504
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->dealWithData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 506
    :cond_e
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/media/projection/MediaProjection;)Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaProjection"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 242
    const-class v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;-><init>(Landroid/content/Context;Landroid/media/projection/MediaProjection;)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .line 245
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initPortrait(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 198
    .local v0, "height":I
    if-ge v1, v0, :cond_1

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    goto :goto_0

    .line 201
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->portrait:Z

    goto :goto_0
.end method

.method private initcurrentRotationPortrait(Z)V
    .locals 2
    .param p1, "portrait"    # Z

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 801
    const-string v1, "ScreenRecorder"

    const-string v2, "changleitest release"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    invoke-virtual {v1, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 804
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    .line 807
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 809
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->handlerThread:Landroid/os/HandlerThread;

    .line 812
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    .line 814
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 819
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 820
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 823
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_3

    .line 824
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 827
    :cond_3
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 828
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 829
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 832
    :cond_4
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_5

    .line 833
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, v3}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 834
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 835
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 838
    :cond_5
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_6

    .line 840
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 841
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    :goto_1
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 848
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    .line 849
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 850
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 852
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    if-eqz v1, :cond_7

    .line 853
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->stop()V

    .line 854
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    .line 857
    :cond_7
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    if-eqz v1, :cond_8

    .line 858
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->deleteRotationWatcher()V

    .line 861
    :cond_8
    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .line 862
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static releaseScreenRecorderWhenStartMirror()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    throw v1
.end method

.method private declared-synchronized restartVedioCodec(I)V
    .locals 10
    .param p1, "portraitRotationChanged"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 533
    monitor-enter p0

    :try_start_0
    const-string v6, "ScreenRecorder222222"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "portraitRotationChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-ne p1, v4, :cond_2

    .line 535
    const-string v4, "ScreenRecorder"

    const-string v5, "changlei123345 restartVedioCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 537
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 538
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 540
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 541
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 542
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 543
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 545
    :cond_0
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 546
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 547
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 548
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 550
    const-string v4, "ScreenRecorder"

    const-string v5, "1 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->catchAllScreenData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :goto_1
    monitor-exit p0

    return-void

    .line 552
    :cond_2
    const/16 v6, 0xb

    if-ne p1, v6, :cond_6

    .line 553
    :try_start_2
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->smallRotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 554
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 555
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 556
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 557
    .local v3, "isportraitRotation":Z
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v6, :cond_3

    .line 558
    iget-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    if-nez v6, :cond_5

    move v3, v4

    .line 561
    :cond_3
    :goto_2
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v5, v6, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 562
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 563
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    .line 564
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 566
    :cond_4
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 567
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 568
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 569
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 571
    const-string v4, "ScreenRecorder"

    const-string v5, "11 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 693
    .end local v3    # "isportraitRotation":Z
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    const-string v4, "ScreenRecorder"

    const-string v5, "EXCEPTION recodec failed"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 697
    :try_start_4
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->catchAllScreenData()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "isportraitRotation":Z
    :cond_5
    move v3, v5

    .line 558
    goto :goto_2

    .line 573
    .end local v3    # "isportraitRotation":Z
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_b

    .line 574
    :try_start_5
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 575
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 576
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 577
    .restart local v3    # "isportraitRotation":Z
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v6, :cond_7

    .line 578
    iget-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    if-nez v6, :cond_a

    move v3, v4

    .line 580
    :cond_7
    :goto_3
    const-string v4, "ScreenRecorder7777"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isportraitRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v4, :cond_8

    .line 582
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 583
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 585
    :cond_8
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v5, v6, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 586
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 587
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_9

    .line 588
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 590
    :cond_9
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 591
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 592
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 593
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 595
    const-string v4, "ScreenRecorder"

    const-string v5, "2 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 697
    .end local v3    # "isportraitRotation":Z
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->catchAllScreenData()V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v3    # "isportraitRotation":Z
    :cond_a
    move v3, v5

    .line 578
    goto :goto_3

    .line 597
    .end local v3    # "isportraitRotation":Z
    :cond_b
    const/4 v6, 0x3

    if-ne p1, v6, :cond_d

    .line 598
    :try_start_7
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->rotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 599
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 600
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 602
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 603
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 604
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_c

    .line 605
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 607
    :cond_c
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 608
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 609
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 610
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 612
    const-string v4, "ScreenRecorder"

    const-string v5, "3 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_d
    const/4 v6, 0x4

    if-ne p1, v6, :cond_12

    .line 615
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 616
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, "isPortraint":Z
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v6, :cond_11

    .line 619
    iget-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    if-nez v6, :cond_10

    move v3, v4

    .line 620
    .restart local v3    # "isportraitRotation":Z
    :goto_4
    const-string v4, "ScreenRecorder678876"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isportraitRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move v2, v3

    .line 622
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-virtual {v4, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetWidthHeight(Z)V

    .line 624
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v5, v6, v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 631
    .end local v3    # "isportraitRotation":Z
    :goto_5
    iget v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->framerate:I

    if-eq v4, v9, :cond_e

    .line 632
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->framerate:I

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->framerate:I

    .line 633
    const/4 v4, -0x1

    iput v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->framerate:I

    .line 635
    :cond_e
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 636
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_f

    .line 637
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 639
    :cond_f
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 640
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 641
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 642
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 644
    const-string v4, "ScreenRecorder"

    const-string v5, "4 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move v3, v5

    .line 619
    goto :goto_4

    .line 626
    :cond_11
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetWidthHeight(Z)V

    .line 628
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 629
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    goto :goto_5

    .line 646
    .end local v2    # "isPortraint":Z
    :cond_12
    const/4 v6, 0x5

    if-ne p1, v6, :cond_1

    .line 647
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ExpandingSionMode:Z

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->resetMinValueAndMaxValue(ZZ)V

    .line 648
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 649
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 651
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ExpandingSionMode:Z

    if-eqz v6, :cond_14

    .line 652
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 653
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I

    .line 656
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 657
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 681
    :goto_6
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v4, :cond_13

    .line 682
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 684
    :cond_13
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 685
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 686
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 687
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 690
    const-string v4, "ScreenRecorder"

    const-string v5, "5 restart mediaCodec"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    :cond_14
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 661
    .local v0, "currentPortraint":Z
    const-string v6, "ScreenRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5 restart mediaCodec isSmallTouPingStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v6, :cond_15

    .line 663
    iget-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    if-nez v6, :cond_16

    move v0, v4

    .line 666
    :cond_15
    :goto_7
    const-string v4, "ScreenRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "5 restart mediaCodec currentPortraint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    if-eqz v0, :cond_17

    .line 669
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget v5, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMinValue:I

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 670
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget v5, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMaxValue:I

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I

    .line 677
    :goto_8
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v5, v6, v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VirtualDisplayOprate;->getOrCreateVirtualDisplay(Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 678
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    invoke-static {v4, v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    goto/16 :goto_6

    :cond_16
    move v0, v5

    .line 663
    goto :goto_7

    .line 672
    :cond_17
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget v5, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMaxValue:I

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->width:I

    .line 673
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    sget v5, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->startResolutionModeMinValue:I

    iput v5, v4, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->height:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8
.end method

.method public static setCurrentExpandingsion(Z)V
    .locals 2
    .param p0, "isExpandingSion"    # Z

    .prologue
    .line 119
    const/4 v0, 0x1

    .line 120
    .local v0, "canReset":Z
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcn/nubia/touping/WiredTouPingMainActivity;->switchForComeInExpandingSion:Z

    if-nez v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_0
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ExpandingSionMode:Z

    if-eq v1, p0, :cond_1

    if-eqz v0, :cond_1

    .line 124
    sput-boolean p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ExpandingSionMode:Z

    .line 125
    const/4 v1, 0x4

    sput v1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 127
    :cond_1
    return-void
.end method

.method private setHeaderBuffer(Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 6
    .param p1, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "packetSize"    # I

    .prologue
    .line 915
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 918
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 919
    const-wide/16 v0, -0x1

    .line 927
    .local v0, "pts":J
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 928
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 929
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 931
    return-void

    .line 921
    .end local v0    # "pts":J
    :cond_0
    iget-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ptsOrigin:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 922
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ptsOrigin:J

    .line 924
    :cond_1
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->ptsOrigin:J

    sub-long v0, v2, v4

    .restart local v0    # "pts":J
    goto :goto_0
.end method

.method private setSleepTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 522
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private signalEndOfStream()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 726
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 727
    .local v1, "eos":Landroid/media/MediaCodec$BufferInfo;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 728
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 729
    return-void
.end method

.method private startMuxerIfReady()V
    .locals 5

    .prologue
    .line 704
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    .line 708
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 709
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    .line 710
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    :goto_1
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .local v2, "info":Landroid/media/MediaCodec$BufferInfo;
    if-eqz v2, :cond_0

    .line 715
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 716
    .local v1, "index":I
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 717
    :cond_2
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_3
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 721
    .local v0, "encodedData":Ljava/nio/ByteBuffer;
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    invoke-direct {p0, v3, v2, v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    goto :goto_1
.end method

.method private stopsignal()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 734
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->release()V

    .line 735
    return-void
.end method

.method private toSuspendTouPingInner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 748
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 750
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 755
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 756
    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 763
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 764
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 765
    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 774
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_3

    .line 776
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 777
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :goto_1
    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 784
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    .line 785
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 786
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 798
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 778
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "track"    # I
    .param p2, "buffer"    # Landroid/media/MediaCodec$BufferInfo;
    .param p3, "encodedData"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 867
    iget-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    if-ne v1, v6, :cond_2

    .line 868
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_1
    :goto_0
    return-void

    .line 872
    :cond_2
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 873
    .local v0, "eos":Z
    :goto_1
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 874
    const-string v1, "ScreenRecorder"

    const-string v2, "info.size == 0, drop it."

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 p3, 0x0

    .line 889
    :cond_3
    :goto_2
    if-eqz p3, :cond_1

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    if-eq v1, v6, :cond_1

    .line 890
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 891
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 892
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1, p3, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 872
    .end local v0    # "eos":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 877
    .restart local v0    # "eos":Z
    :cond_5
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 878
    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoTrackIndex:I

    if-ne p1, v1, :cond_3

    .line 880
    iget-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoPtsOffset:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 881
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoPtsOffset:J

    .line 882
    iput-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_2

    .line 884
    :cond_6
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVideoPtsOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_2
.end method


# virtual methods
.method public getapp_mirror_entering()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    return v0
.end method

.method public getisLandForsmallMirror()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    return v0
.end method

.method public getisSmallTouPingStatus()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setapp_mirror_entering()V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_entering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    .line 89
    const-string v0, "ScreenRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_mirror_entering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->app_mirror_entering:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setchangeFlag(I)V
    .locals 1
    .param p1, "framerate"    # I

    .prologue
    .line 146
    const/4 v0, 0x3

    sput v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    .line 147
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->framerate:I

    .line 148
    return-void
.end method

.method public setisSmallTouPingStatus(Z)V
    .locals 3
    .param p1, "isSmallTouPingStatusTemp"    # Z

    .prologue
    .line 133
    const-string v0, "ScreenRecorder987"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmallTouPingStatusTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sput-boolean p1, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    .line 135
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isSmallTouPingStatus:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->changeFlag:I

    goto :goto_0
.end method

.method public setsmallMirrorRotationStatus(Z)V
    .locals 2
    .param p1, "isLandForsmallMirrorFlag"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    if-eq v0, p1, :cond_0

    .line 101
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->isLandForsmallMirror:Z

    .line 102
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->smallRotationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 255
    :try_start_0
    const-string v1, "ScreenRecorder"

    const-string v2, "start begin"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->currentRotationPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncoder;->getVideoEncoder(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;Z)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    .line 272
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    .line 273
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 275
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 276
    const-string v1, "ScreenRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changleitest mInputSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "ScreenRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changleitest mVirtualDisplay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 279
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->catchAllScreenData()V

    .line 280
    const-string v1, "ScreenRecorder"

    const-string v2, "start end"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const-string v1, "ScreenRecorder"

    const-string v2, "start error"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "ScreenRecorder222212"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRunning.get()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-eqz v0, :cond_2

    .line 294
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 295
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->sendEmptyMessage(I)Z

    .line 297
    :cond_2
    return-void
.end method

.method public toSuspendTouPing()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 309
    const-string v2, "ScreenRecorder333333"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRunning.get()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " workHanlder != null ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->workHanlder:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->sendEmptyMessage(I)Z

    .line 314
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0
.end method
