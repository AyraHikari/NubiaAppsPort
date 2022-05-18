.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# static fields
.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static setDisplayIdMethod:Ljava/lang/reflect/Method;


# instance fields
.field private injectInputEventMethod:Ljava/lang/reflect/Method;

.field private final manager:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->manager:Landroid/os/IInterface;

    .line 26
    return-void
.end method

.method private getInjectInputEventMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->injectInputEventMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "injectInputEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/InputEvent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->injectInputEventMethod:Ljava/lang/reflect/Method;

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->injectInputEventMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getSetDisplayIdMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->setDisplayIdMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 47
    const-class v0, Landroid/view/InputEvent;

    const-string v1, "setDisplayId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->setDisplayIdMethod:Ljava/lang/reflect/Method;

    .line 49
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->setDisplayIdMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static setDisplayId(Landroid/view/InputEvent;I)Z
    .locals 7
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->getSetDisplayIdMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "InputManager"

    const-string v4, "Cannot associate a display id to the input event"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 59
    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 7
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->getInjectInputEventMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/InputManager;->manager:Landroid/os/IInterface;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 41
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "InputManager"

    const-string v4, "9090  Could not invoke method"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 41
    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
