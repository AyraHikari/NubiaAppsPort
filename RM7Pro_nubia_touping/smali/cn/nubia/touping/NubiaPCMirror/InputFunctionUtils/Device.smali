.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;,
        Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;
    }
.end annotation


# static fields
.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Device"

.field private static mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;


# instance fields
.field private clipboardListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;

.field private final displayId:I

.field private final isSettingClipboard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastRotation:I

.field private final layerStack:I

.field private mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;

.field private mIRotationWatcher:Landroid/view/IRotationWatcher;

.field private rotationListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;

.field private screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

.field private final serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

.field private final supportsInputEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)V
    .locals 6
    .param p1, "options"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-direct {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;-><init>()V

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    .line 45
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isSettingClipboard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->lastRotation:I

    .line 109
    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    .line 110
    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;

    .line 113
    invoke-virtual {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->getDisplayId()I

    move-result v3

    iput v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    .line 114
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getDisplayManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    move-result-object v3

    iget v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    invoke-virtual {v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->getDisplayInfo(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;

    move-result-object v1

    .line 115
    .local v1, "displayInfo":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;
    if-nez v1, :cond_0

    .line 116
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getDisplayManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->getDisplayIds()[I

    move-result-object v0

    .line 117
    .local v0, "displayIds":[I
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    .end local v0    # "displayIds":[I
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->getFlags()I

    move-result v2

    .line 122
    .local v2, "displayInfoFlags":I
    invoke-virtual {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->getCrop()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->getMaxSize()I

    move-result v4

    invoke-virtual {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->getLockedVideoOrientation()I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->computeScreenInfo(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;Landroid/graphics/Rect;II)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    .line 123
    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->getLayerStack()I

    move-result v3

    iput v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->layerStack:I

    .line 125
    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    invoke-direct {v3, p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)V

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    .line 146
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    iget v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    invoke-virtual {v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->registerRotationWatcher(Landroid/view/IRotationWatcher;I)V

    .line 148
    invoke-virtual {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->getControl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;

    invoke-direct {v3, p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)V

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;

    .line 168
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getClipboardManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)Z

    .line 171
    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    .line 172
    const-string v3, "Display doesn\'t have FLAG_SUPPORTS_PROTECTED_BUFFERS flag, mirroring can be restricted"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V

    .line 176
    :cond_2
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5

    :cond_3
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents:Z

    .line 177
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents:Z

    if-nez v3, :cond_4

    .line 178
    const-string v3, "Input events are not supported for secondary displays before Android 10"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V

    .line 180
    :cond_4
    return-void

    .line 176
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->lastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .param p1, "x1"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->rotationListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isSettingClipboard:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->clipboardListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;

    return-object v0
.end method

.method private deleteClipChangedListener()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getClipboardManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)Z

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIOnPrimaryClipChangedListener:Landroid/content/IOnPrimaryClipChangedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteRotationWatcher()V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->deleteRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mIRotationWatcher:Landroid/view/IRotationWatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    return-object v0
.end method

.method public static getInstance(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .locals 1
    .param p0, "options"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;

    .prologue
    .line 64
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-direct {v0, p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .line 67
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->deleteRotationWatcher()V

    .line 77
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->deleteClipChangedListener()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->mDevice:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .line 81
    return-void
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getStatusBarManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->collapsePanels()V

    .line 307
    return-void
.end method

.method public createSettingsProvider()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getActivityManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->createSettingsProvider()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public expandNotificationPanel()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getStatusBarManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->expandNotificationsPanel()V

    .line 303
    return-void
.end method

.method public getClipboardText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getClipboardManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    .local v0, "s":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLayerStack()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->layerStack:I

    return v0
.end method

.method public getPhysicalPoint(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    .locals 16
    .param p1, "position"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    .prologue
    .line 193
    const-string v13, "Device123"

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getScreenInfo()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    move-result-object v10

    .line 197
    .local v10, "screenInfo":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    const-string v13, "Device123"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "screenInfo.toString() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v10}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->getUnlockedVideoSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v12

    .line 202
    .local v12, "unlockedVideoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    invoke-virtual {v10}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->getReverseVideoRotation()I

    move-result v9

    .line 204
    .local v9, "reverseVideoRotation":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->rotate(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    move-result-object v5

    .line 207
    .local v5, "devicePosition":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    invoke-virtual {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->getScreenSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v1

    .line 218
    .local v1, "clientVideoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    invoke-virtual {v10}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 224
    .local v2, "contentRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->getPoint()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    move-result-object v8

    .line 229
    .local v8, "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    const-string v13, "Device9900"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "22 point.toString() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v13, v14, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 233
    .local v6, "maxValue":I
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v13, v14, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 234
    .local v7, "minValue":I
    :goto_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v11

    .line 235
    .local v11, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getisSmallTouPingStatus()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 236
    invoke-virtual {v11}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getisLandForsmallMirror()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 237
    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v14

    mul-int/2addr v14, v6

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v15

    div-int/2addr v14, v15

    add-int v3, v13, v14

    .line 238
    .local v3, "convertedX":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v14

    mul-int/2addr v14, v7

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v15

    div-int/2addr v14, v15

    add-int v4, v13, v14

    .line 239
    .local v4, "convertedY":I
    new-instance v13, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-direct {v13, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    .line 249
    :goto_2
    return-object v13

    .line 232
    .end local v3    # "convertedX":I
    .end local v4    # "convertedY":I
    .end local v6    # "maxValue":I
    .end local v7    # "minValue":I
    .end local v11    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_0

    .line 233
    .restart local v6    # "maxValue":I
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_1

    .line 241
    .restart local v7    # "minValue":I
    .restart local v11    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_2
    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v14

    mul-int/2addr v14, v7

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v15

    div-int/2addr v14, v15

    add-int v3, v13, v14

    .line 242
    .restart local v3    # "convertedX":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v14

    mul-int/2addr v14, v6

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v15

    div-int/2addr v14, v15

    add-int v4, v13, v14

    .line 243
    .restart local v4    # "convertedY":I
    new-instance v13, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-direct {v13, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    goto :goto_2

    .line 247
    .end local v3    # "convertedX":I
    .end local v4    # "convertedY":I
    :cond_3
    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    mul-int/2addr v14, v15

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v15

    div-int/2addr v14, v15

    add-int v3, v13, v14

    .line 248
    .restart local v3    # "convertedX":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/2addr v14, v15

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v15

    div-int/2addr v14, v15

    add-int v4, v13, v14

    .line 249
    .restart local v4    # "convertedY":I
    new-instance v13, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-direct {v13, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    goto :goto_2
.end method

.method public declared-synchronized getScreenInfo()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public injectEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Could not inject input event if !supportsInputEvents()"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 265
    :cond_0
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    invoke-static {p1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->setDisplayId(Landroid/view/InputEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const-string v0, "Device123"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectEvent displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getInputManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public injectKeyEvent(IIII)Z
    .locals 14
    .param p1, "action"    # I
    .param p2, "keyCode"    # I
    .param p3, "repeat"    # I
    .param p4, "metaState"    # I

    .prologue
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 282
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public injectKeycode(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, v1, p1, v1, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeyEvent(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeyEvent(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getPowerManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public resetRotation2ScreenInfo()V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->lastRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->lastRotation:I

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->withDeviceRotation(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->screenInfo:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    .line 107
    :cond_0
    return-void
.end method

.method public rotateDevice()V
    .locals 7

    .prologue
    .line 340
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    move-result-object v4

    .line 342
    .local v4, "wm":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;
    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->isRotationFrozen()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 344
    .local v0, "accelerometerRotation":Z
    :goto_0
    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getRotation()I

    move-result v1

    .line 345
    .local v1, "currentRotation":I
    and-int/lit8 v5, v1, 0x1

    xor-int/lit8 v2, v5, 0x1

    .line 346
    .local v2, "newRotation":I
    if-nez v2, :cond_2

    const-string v3, "portrait"

    .line 348
    .local v3, "newRotationString":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device rotation requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->i(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v4, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->freezeRotation(I)V

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->thawRotation()V

    .line 355
    :cond_0
    return-void

    .line 342
    .end local v0    # "accelerometerRotation":Z
    .end local v1    # "currentRotation":I
    .end local v2    # "newRotation":I
    .end local v3    # "newRotationString":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    .restart local v0    # "accelerometerRotation":Z
    .restart local v1    # "currentRotation":I
    .restart local v2    # "newRotation":I
    :cond_2
    const-string v3, "landscape"

    goto :goto_1
.end method

.method public declared-synchronized setClipboardListener(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;)V
    .locals 1
    .param p1, "clipboardListener"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->clipboardListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClipboardText(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isSettingClipboard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 319
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->serviceManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getClipboardManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 320
    .local v0, "ok":Z
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isSettingClipboard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    return v0
.end method

.method public declared-synchronized setRotationListener(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;)V
    .locals 1
    .param p1, "rotationListener"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->rotationListener:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScreenPowerMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 328
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getBuiltInDisplay()Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .local v0, "d":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 330
    const-string v1, "Could not get built-in display"

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->e(Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x0

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)Z

    move-result v1

    goto :goto_0
.end method

.method public supportsInputEvents()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents:Z

    return v0
.end method
