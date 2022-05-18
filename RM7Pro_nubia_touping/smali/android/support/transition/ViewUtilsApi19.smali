.class Landroid/support/transition/ViewUtilsApi19;
.super Landroid/support/transition/ViewUtilsApi18;
.source "ViewUtilsApi19.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi19"

.field private static sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sGetTransitionAlphaMethodFetched:Z

.field private static sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sSetTransitionAlphaMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi18;-><init>()V

    return-void
.end method

.method private fetchGetTransitionAlphaMethod()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 92
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getTransitionAlpha"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 95
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    sput-boolean v4, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    .line 101
    :cond_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi19"

    const-string v2, "Failed to retrieve getTransitionAlpha method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fetchSetTransitionAlphaMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 79
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTransitionAlpha"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 83
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    .line 89
    :cond_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi19"

    const-string v2, "Failed to retrieve setTransitionAlpha method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;->fetchGetTransitionAlphaMethod()V

    .line 56
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/ViewUtilsApi18;->getTransitionAlpha(Landroid/view/View;)F

    move-result v1

    goto :goto_0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alpha"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;->fetchSetTransitionAlphaMethod()V

    .line 40
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    goto :goto_0
.end method
