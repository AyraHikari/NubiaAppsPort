.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private getContentProviderExternalMethod:Ljava/lang/reflect/Method;

.field private getContentProviderExternalMethodLegacy:Z

.field private final manager:Landroid/os/IInterface;

.field private removeContentProviderExternalMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    .line 23
    return-void
.end method

.method private getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getGetContentProviderExternalMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 50
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-boolean v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethodLegacy:Z

    if-nez v7, :cond_1

    .line 52
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    aput-object p2, v0, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v0, v7

    .line 58
    .local v0, "args":[Ljava/lang/Object;
    :goto_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v2, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, "providerHolder":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 72
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "providerHolder":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v6

    .line 55
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    aput-object p2, v0, v7

    .restart local v0    # "args":[Ljava/lang/Object;
    goto :goto_0

    .line 63
    .restart local v5    # "providerHolder":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "provider"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 64
    .local v4, "providerField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, "provider":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 69
    new-instance v7, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;

    invoke-direct {v7, p0, v3, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_1

    .line 70
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "provider":Ljava/lang/Object;
    .end local v4    # "providerField":Ljava/lang/reflect/Field;
    .end local v5    # "providerHolder":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    const-string v7, "ActivityManager"

    const-string v8, "Could not invoke method"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private getGetContentProviderExternalMethod()Ljava/lang/reflect/Method;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 26
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getContentProviderExternal"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethod:Ljava/lang/reflect/Method;

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getContentProviderExternal"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethod:Ljava/lang/reflect/Method;

    .line 33
    iput-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternalMethodLegacy:Z

    goto :goto_0
.end method

.method private getRemoveContentProviderExternalMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->removeContentProviderExternalMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeContentProviderExternal"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->removeContentProviderExternalMethod:Ljava/lang/reflect/Method;

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->removeContentProviderExternalMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public createSettingsProvider()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;
    .locals 2

    .prologue
    .line 86
    const-string v0, "settings"

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->getRemoveContentProviderExternalMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 79
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "ActivityManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
