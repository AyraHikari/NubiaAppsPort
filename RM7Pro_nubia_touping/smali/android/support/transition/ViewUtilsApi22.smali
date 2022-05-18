.class Landroid/support/transition/ViewUtilsApi22;
.super Landroid/support/transition/ViewUtilsApi21;
.source "ViewUtilsApi22.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x16
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi22"

.field private static sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

.field private static sSetLeftTopRightBottomMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    return-void
.end method

.method private fetchSetLeftTopRightBottomMethod()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 51
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setLeftTopRightBottom"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v1, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    .line 61
    :cond_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi22"

    const-string v2, "Failed to retrieve setLeftTopRightBottom method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi22;->fetchSetLeftTopRightBottomMethod()V

    .line 38
    sget-object v1, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
