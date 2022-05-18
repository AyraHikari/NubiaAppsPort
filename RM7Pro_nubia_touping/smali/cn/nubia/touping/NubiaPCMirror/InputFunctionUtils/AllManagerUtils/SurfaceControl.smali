.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field private static getBuiltInDisplayMethod:Ljava/lang/reflect/Method;

.field private static setDisplayPowerModeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    const-string v1, "android.view.SurfaceControl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static closeTransaction()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 83
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "createDisplay"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 6
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 139
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "destroyDisplay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getBuiltInDisplay()Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 105
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getGetBuiltInDisplayMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    .local v1, "method":Ljava/lang/reflect/Method;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_0

    .line 108
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 115
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "SurfaceControl"

    const-string v4, "Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 115
    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static getGetBuiltInDisplayMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getBuiltInDisplayMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 94
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v1, "getBuiltInDisplay"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getBuiltInDisplayMethod:Ljava/lang/reflect/Method;

    .line 99
    :cond_0
    :goto_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getBuiltInDisplayMethod:Ljava/lang/reflect/Method;

    return-object v0

    .line 96
    :cond_1
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v1, "getInternalDisplayToken"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getBuiltInDisplayMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private static getSetDisplayPowerModeMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->setDisplayPowerModeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v1, "setDisplayPowerMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->setDisplayPowerModeMethod:Ljava/lang/reflect/Method;

    .line 123
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->setDisplayPowerModeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static openTransaction()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "openTransaction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "setDisplayLayerStack"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)Z
    .locals 8
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->getSetDisplayPowerModeMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "SurfaceControl"

    const-string v4, "Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 133
    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "setDisplayProjection"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/SurfaceControl;->CLASS:Ljava/lang/Class;

    const-string v2, "setDisplaySurface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Surface;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
