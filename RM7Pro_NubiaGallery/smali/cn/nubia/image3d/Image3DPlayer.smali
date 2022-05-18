.class public Lcn/nubia/image3d/Image3DPlayer;
.super Ljava/lang/Object;
.source "Image3DPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;
    }
.end annotation


# static fields
.field private static IMAGE3D_PLAYER_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Image3DPlayer"


# instance fields
.field private mCallback:Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;

.field private mExeService2:Ljava/util/concurrent/ExecutorService;

.field private mFrameIndex:I

.field private mId:I

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mCallback:Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mIsStart:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mFrameIndex:I

    .line 23
    iput v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mId:I

    const/4 v0, 0x5

    .line 24
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mExeService2:Ljava/util/concurrent/ExecutorService;

    .line 26
    sget v0, Lcn/nubia/image3d/Image3DPlayer;->IMAGE3D_PLAYER_ID:I

    iput v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mId:I

    add-int/2addr v0, p1

    .line 27
    sput v0, Lcn/nubia/image3d/Image3DPlayer;->IMAGE3D_PLAYER_ID:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/image3d/Image3DPlayer;)Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/image3d/Image3DPlayer;->mCallback:Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/image3d/Image3DPlayer;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcn/nubia/image3d/Image3DPlayer;->mIsStart:Z

    return p0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 60
    iget v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mFrameIndex:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 76
    iget v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mId:I

    return v0
.end method

.method public getRotate()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mIsStart:Z

    .line 81
    iget-object v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mExeService2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mExeService2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcn/nubia/image3d/Image3DPlayer;->mExeService2:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string p1, "Image3DPlayer"

    const-string v0, "drop"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_0
    iput p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mFrameIndex:I

    .line 47
    iget-object p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mExeService2:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/nubia/image3d/Image3DPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/image3d/Image3DPlayer$1;-><init>(Lcn/nubia/image3d/Image3DPlayer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mIsStart:Z

    const/4 p1, 0x0

    return p1
.end method

.method public setOnFrameCallback(Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/image3d/Image3DPlayer;->mCallback:Lcn/nubia/image3d/Image3DPlayer$Image3DFrameCallback;

    return-void
.end method
