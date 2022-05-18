.class Landroid/support/transition/ViewGroupUtilsApi18;
.super Landroid/support/transition/ViewGroupUtilsApi14;
.source "ViewGroupUtilsApi18.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi18"

.field private static sSuppressLayoutMethod:Ljava/lang/reflect/Method;

.field private static sSuppressLayoutMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewGroupUtilsApi14;-><init>()V

    return-void
.end method

.method private fetchSuppressLayoutMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 55
    sget-boolean v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    if-nez v1, :cond_0

    .line 57
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    .line 59
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    .line 65
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi18"

    const-string v2, "Failed to retrieve suppressLayout method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v0, Landroid/support/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p1}, Landroid/support/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "suppress"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/transition/ViewGroupUtilsApi18;->fetchSuppressLayoutMethod()V

    .line 43
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ViewUtilsApi18"

    const-string v2, "Failed to invoke suppressLayout method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ViewUtilsApi18"

    const-string v2, "Error invoking suppressLayout method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
