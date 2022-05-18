.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi,DiscouragedPrivateApi"
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.touping"

.field public static final USER_ID:I


# instance fields
.field private activityManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

.field private clipboardManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

.field private displayManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

.field private final getServiceMethod:Ljava/lang/reflect/Method;

.field private inputManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

.field private powerManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

.field private statusBarManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

.field private windowManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getServiceMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getServiceMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 36
    .local v1, "binder":Landroid/os/IBinder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$Stub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 38
    .end local v0    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public getActivityManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;
    .locals 6

    .prologue
    .line 86
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->activityManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    if-nez v4, :cond_0

    .line 90
    :try_start_0
    const-string v4, "android.app.ActivityManagerNative"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 92
    .local v3, "getDefaultMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 93
    .local v0, "am":Landroid/os/IInterface;
    new-instance v4, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    invoke-direct {v4, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;-><init>(Landroid/os/IInterface;)V

    iput-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->activityManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "am":Landroid/os/IInterface;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getDefaultMethod":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->activityManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    return-object v4

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public getClipboardManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->clipboardManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    const-string v1, "clipboard"

    const-string v2, "android.content.IClipboard"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->clipboardManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->clipboardManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;

    return-object v0
.end method

.method public getDisplayManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->displayManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    const-string v1, "display"

    const-string v2, "android.hardware.display.IDisplayManager"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->displayManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    .line 54
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->displayManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;

    return-object v0
.end method

.method public getInputManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->inputManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

    const-string v1, "input"

    const-string v2, "android.hardware.input.IInputManager"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->inputManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->inputManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;

    return-object v0
.end method

.method public getPowerManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->powerManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

    const-string v1, "power"

    const-string v2, "android.os.IPowerManager"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->powerManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->powerManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;

    return-object v0
.end method

.method public getStatusBarManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->statusBarManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    const-string v1, "statusbar"

    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->statusBarManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->statusBarManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;

    return-object v0
.end method

.method public getWindowManager()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->windowManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    const-string v1, "window"

    const-string v2, "android.view.IWindowManager"

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->windowManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ServiceManager;->windowManager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;

    return-object v0
.end method
