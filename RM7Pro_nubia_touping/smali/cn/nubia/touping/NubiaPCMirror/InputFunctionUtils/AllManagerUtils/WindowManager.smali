.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private freezeRotationMethod:Ljava/lang/reflect/Method;

.field private getRotationMethod:Ljava/lang/reflect/Method;

.field private isRotationFrozenMethod:Ljava/lang/reflect/Method;

.field private final manager:Landroid/os/IInterface;

.field private thawRotationMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    .line 22
    return-void
.end method

.method private getFreezeRotationMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->freezeRotationMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "freezeRotation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->freezeRotationMethod:Ljava/lang/reflect/Method;

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->freezeRotationMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getGetRotationMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getRotationMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 26
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "getDefaultDisplayRotation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getRotationMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getRotationMethod:Ljava/lang/reflect/Method;

    return-object v2

    .line 31
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "getRotation"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getRotationMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private getIsRotationFrozenMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->isRotationFrozenMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isRotationFrozen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->isRotationFrozenMethod:Ljava/lang/reflect/Method;

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->isRotationFrozenMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getThawRotationMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->thawRotationMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "thawRotation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->thawRotationMethod:Ljava/lang/reflect/Method;

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->thawRotationMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public deleteRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 6
    .param p1, "rotationWatcher"    # Landroid/view/IRotationWatcher;

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 120
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v2, "removeRotationWatcher"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/IRotationWatcher;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v2, "removeRotationWatcher"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/IRotationWatcher;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 125
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public freezeRotation(I)V
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getFreezeRotationMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "WindowManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public getRotation()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getGetRotationMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 66
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "WindowManager"

    const-string v4, "Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 66
    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public isRotationFrozen()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getIsRotationFrozenMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 85
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "WindowManager"

    const-string v4, "Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 85
    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public registerRotationWatcher(Landroid/view/IRotationWatcher;I)V
    .locals 7
    .param p1, "rotationWatcher"    # Landroid/view/IRotationWatcher;
    .param p2, "displayId"    # I

    .prologue
    .line 100
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 104
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v2, "watchRotation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/IRotationWatcher;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v2, "watchRotation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/IRotationWatcher;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public thawRotation()V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->getThawRotationMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/WindowManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "WindowManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
