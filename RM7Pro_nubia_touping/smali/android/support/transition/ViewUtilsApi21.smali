.class Landroid/support/transition/ViewUtilsApi21;
.super Landroid/support/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi21"

.field private static sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

.field private static sSetAnimationMatrixMethodFetched:Z

.field private static sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToGlobalMethodFetched:Z

.field private static sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToLocalMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method

.method private fetchSetAnimationMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 109
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    if-nez v1, :cond_0

    .line 111
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setAnimationMatrix"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    .line 113
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    .line 119
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve setAnimationMatrix method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fetchTransformMatrixToGlobalMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 83
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToGlobal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    .line 87
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    .line 93
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve transformMatrixToGlobal method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fetchTransformMatrixToLocalMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 96
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    if-nez v1, :cond_0

    .line 98
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToLocal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    .line 100
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    .line 106
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve transformMatrixToLocal method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchSetAnimationMatrix()V

    .line 71
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToGlobalMethod()V

    .line 43
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToLocalMethod()V

    .line 57
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
