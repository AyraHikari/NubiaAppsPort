.class public Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
.super Landroid/view/SurfaceView;
.source "MSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;,
        Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;
    }
.end annotation


# static fields
.field private static final DOUBLE_FRAME_FLAG:Ljava/lang/String; = "double_frame_flag"

.field private static final RADIUS:I = 0x1

.field private static final RED:I = -0x10000

.field private static final REFRESH_RATE_120:I = 0x78

.field private static final REFRESH_RATE_144:I = 0x90

.field private static final REFRESH_RATE_165:I = 0xa5

.field private static final REFRESH_RATE_60:I = 0x3c

.field private static final REFRESH_RATE_90:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "[MSurface]"


# instance fields
.field private lock:Ljava/util/concurrent/locks/Lock;

.field private volatile m144Count:I

.field private mCallback:Landroid/view/Choreographer$FrameCallback;

.field private mContext:Landroid/content/Context;

.field private volatile mCount:I

.field private volatile mDoubleCount:I

.field private mDoubleFlag:Z

.field private mDrawFlag:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mObserver:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefreshRate:I

.field private mThread:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;

.field private syncCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v0, 0x3c

    iput v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mRefreshRate:I

    .line 35
    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    .line 36
    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->m144Count:I

    .line 37
    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleCount:I

    .line 38
    iput-boolean v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDrawFlag:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    .line 41
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->syncCondition:Ljava/util/concurrent/locks/Condition;

    .line 44
    iput-boolean v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleFlag:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleFlag:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleCount:I

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleCount:I

    return p1
.end method

.method static synthetic access$108(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleCount:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->refreshDoubleFlag()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->syncCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mRefreshRate:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    return p1
.end method

.method static synthetic access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->m144Count:I

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->m144Count:I

    return p1
.end method

.method static synthetic access$608(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->m144Count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->m144Count:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDrawFlag:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mHolder:Landroid/view/SurfaceHolder;

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    return-void
.end method

.method private refreshDoubleFlag()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "double_frame_flag"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleFlag:Z

    .line 271
    const-string v1, "[MSurface]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDoubleFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDoubleFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    :cond_0
    move v1, v2

    .line 270
    goto :goto_0
.end method


# virtual methods
.method public setRefreshRate(I)V
    .locals 3
    .param p1, "refreshRate"    # I

    .prologue
    .line 207
    iget v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mRefreshRate:I

    if-ne p1, v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "[MSurface]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hz changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCount:I

    .line 212
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_1

    const/16 v0, 0x90

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_1

    .line 214
    const/16 v0, 0x3c

    iput v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mRefreshRate:I

    goto :goto_0

    .line 216
    :cond_1
    iput p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mRefreshRate:I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 178
    const-string v0, "[MSurface]"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDrawFlag:Z

    .line 71
    new-instance v0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;-><init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mThread:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;

    .line 72
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mThread:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->start()V

    .line 73
    new-instance v0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;-><init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mObserver:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

    .line 74
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mObserver:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->observer()V

    .line 75
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->refreshDoubleFlag()V

    .line 76
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;-><init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    .line 172
    :cond_1
    const-string v0, "[MSurface]"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 174
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mDrawFlag:Z

    .line 184
    const-string v1, "[MSurface]"

    const-string v2, "surfaceDestroyed"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mObserver:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mObserver:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$MObserver;->unregister()V

    .line 189
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 190
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v1, :cond_1

    .line 191
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->syncCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :try_start_4
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method
