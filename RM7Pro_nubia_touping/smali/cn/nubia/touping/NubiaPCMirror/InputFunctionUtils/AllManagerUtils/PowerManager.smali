.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerManager"


# instance fields
.field private isScreenOnMethod:Ljava/lang/reflect/Method;

.field private final manager:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->manager:Landroid/os/IInterface;

    .line 21
    return-void
.end method

.method private getIsScreenOnMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->isScreenOnMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    const-string v0, "isInteractive"

    .line 27
    .local v0, "methodName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->isScreenOnMethod:Ljava/lang/reflect/Method;

    .line 29
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->isScreenOnMethod:Ljava/lang/reflect/Method;

    return-object v1

    .line 26
    :cond_1
    const-string v0, "isScreenOn"

    goto :goto_0
.end method


# virtual methods
.method public isScreenOn()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->getIsScreenOnMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/PowerManager;->manager:Landroid/os/IInterface;

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

    .line 38
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "PowerManager"

    const-string v4, "Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 38
    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
