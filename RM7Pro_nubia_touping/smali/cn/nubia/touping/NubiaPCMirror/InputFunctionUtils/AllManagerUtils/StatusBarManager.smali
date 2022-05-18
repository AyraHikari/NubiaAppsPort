.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarManager"


# instance fields
.field private collapsePanelsMethod:Ljava/lang/reflect/Method;

.field private expandNotificationsPanelMethod:Ljava/lang/reflect/Method;

.field private final manager:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->manager:Landroid/os/IInterface;

    .line 20
    return-void
.end method

.method private getCollapsePanelsMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->collapsePanelsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "collapsePanels"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->collapsePanelsMethod:Ljava/lang/reflect/Method;

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->collapsePanelsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getExpandNotificationsPanelMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->expandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expandNotificationsPanel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->expandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->expandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->getCollapsePanelsMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "StatusBarManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public expandNotificationsPanel()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->getExpandNotificationsPanelMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/StatusBarManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "StatusBarManager"

    const-string v3, "Could not invoke method"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
