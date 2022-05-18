.class public Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;
.super Ljava/lang/Object;
.source "RefreshRateController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RefreshRateController]"

.field private static isShowingSmallCicle:Z

.field private static sInstance:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mRoot:Landroid/view/View;

.field private mSurface:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mSurface:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getRefreshRate()I

    move-result v0

    return v0
.end method

.method private getRefreshRate()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v0

    return v0
.end method

.method public static getisShowingSmallCicle()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    return v0
.end method

.method public static getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->sInstance:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    invoke-direct {v0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->sInstance:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .line 47
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->sInstance:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    return-object v0
.end method

.method private is144Hz()Z
    .locals 5

    .prologue
    .line 78
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getRefreshRate()I

    move-result v0

    .line 79
    .local v0, "refreshRate":I
    const/16 v2, 0x78

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 80
    .local v1, "result":Z
    :goto_0
    const-string v2, "[RefreshRateController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is144Hz(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v1

    .line 79
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 103
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 104
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 105
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    :goto_0
    const v1, 0x4000038

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 113
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 114
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 115
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 117
    const-string v1, "refreshsurfacetitlefortag"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    return-object v0

    .line 107
    :cond_0
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method private startMonitor()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 135
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$2;-><init>(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;Landroid/hardware/display/DisplayManager;)V

    iput-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 167
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 169
    return-void
.end method

.method private stopMonitor()V
    .locals 4

    .prologue
    .line 173
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 175
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hideSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->stopMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    sput-boolean v3, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    sput-boolean v3, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sput-boolean v3, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    .line 123
    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    .line 124
    iput-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mSurface:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .line 125
    sput-object v0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->sInstance:Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    .line 126
    return-void
.end method

.method public showSurface()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->makeLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040053

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    const v2, 0x7f0e0116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    iput-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mSurface:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .line 59
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mSurface:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getRefreshRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->setRefreshRate(I)V

    .line 60
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->startMonitor()V

    .line 62
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->mRoot:Landroid/view/View;

    new-instance v2, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;

    invoke-direct {v2, p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController$1;-><init>(Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    sput-boolean v6, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v1, "[RefreshRateController]"

    const-string v2, "TEST EXCEPTION"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    sput-boolean v6, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sput-boolean v6, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->isShowingSmallCicle:Z

    throw v1
.end method
