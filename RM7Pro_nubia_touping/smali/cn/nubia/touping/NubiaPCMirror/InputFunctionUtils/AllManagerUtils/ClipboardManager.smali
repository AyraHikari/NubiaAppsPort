.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardManager"


# instance fields
.field private addPrimaryClipChangedListener:Ljava/lang/reflect/Method;

.field private deletePrimaryClipChangedListener:Ljava/lang/reflect/Method;

.field private getPrimaryClipMethod:Ljava/lang/reflect/Method;

.field private final manager:Landroid/os/IInterface;

.field private setPrimaryClipMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    .line 27
    return-void
.end method

.method private static addPrimaryClipChangedListener(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "manager"    # Landroid/os/IInterface;
    .param p2, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 96
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static deletePrimaryClipChangedListener(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "manager"    # Landroid/os/IInterface;
    .param p2, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 105
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getAddPrimaryClipChangedListener()Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrimaryClipChangedListener"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/IOnPrimaryClipChangedListener;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener:Ljava/lang/reflect/Method;

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener:Ljava/lang/reflect/Method;

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrimaryClipChangedListener"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/IOnPrimaryClipChangedListener;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private getDeletePrimaryClipChangedListener()Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removePrimaryClipChangedListener"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/IOnPrimaryClipChangedListener;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener:Ljava/lang/reflect/Method;

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener:Ljava/lang/reflect/Method;

    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removePrimaryClipChangedListener"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/IOnPrimaryClipChangedListener;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private getGetPrimaryClipMethod()Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getPrimaryClipMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 32
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPrimaryClip"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getPrimaryClipMethod:Ljava/lang/reflect/Method;

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getPrimaryClipMethod:Ljava/lang/reflect/Method;

    return-object v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPrimaryClip"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getPrimaryClipMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private static getPrimaryClip(Ljava/lang/reflect/Method;Landroid/os/IInterface;)Landroid/content/ClipData;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "manager"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 53
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    goto :goto_0
.end method

.method private getSetPrimaryClipMethod()Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setPrimaryClipMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPrimaryClip"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/ClipData;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setPrimaryClipMethod:Ljava/lang/reflect/Method;

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setPrimaryClipMethod:Ljava/lang/reflect/Method;

    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPrimaryClip"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/ClipData;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setPrimaryClipMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private static setPrimaryClip(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/ClipData;)V
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "manager"    # Landroid/os/IInterface;
    .param p2, "clipData"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 61
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "cn.nubia.touping"

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getAddPrimaryClipChangedListener()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-static {v1, v2, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->addPrimaryClipChangedListener(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    const/4 v2, 0x1

    .line 144
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "ClipboardManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public deletePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 150
    :try_start_0
    const-string v2, "ClipboardManager"

    const-string v3, "changlei334455 deletePrimaryClipChangedListener  000"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getDeletePrimaryClipChangedListener()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-static {v1, v2, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->deletePrimaryClipChangedListener(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/IOnPrimaryClipChangedListener;)V

    .line 153
    const-string v2, "ClipboardManager"

    const-string v3, "changlei334455 deletePrimaryClipChangedListener  111 "

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    const/4 v2, 0x1

    .line 157
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "ClipboardManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getGetPrimaryClipMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-static {v2, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getPrimaryClip(Ljava/lang/reflect/Method;Landroid/os/IInterface;)Landroid/content/ClipData;

    move-result-object v0

    .line 71
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 77
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    .line 74
    .restart local v0    # "clipData":Landroid/content/ClipData;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 75
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v4, "ClipboardManager"

    const-string v5, "Could not invoke method"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->getSetPrimaryClipMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 85
    .local v0, "clipData":Landroid/content/ClipData;
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->manager:Landroid/os/IInterface;

    invoke-static {v2, v3, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ClipboardManager;->setPrimaryClip(Ljava/lang/reflect/Method;Landroid/os/IInterface;Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const/4 v3, 0x1

    .line 89
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "ClipboardManager"

    const-string v4, "Could not invoke method"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
