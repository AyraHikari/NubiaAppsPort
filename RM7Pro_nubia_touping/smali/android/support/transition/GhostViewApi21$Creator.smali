.class Landroid/support/transition/GhostViewApi21$Creator;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/GhostViewApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$000()V

    .line 46
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    new-instance v2, Landroid/support/transition/GhostViewApi21;

    .line 49
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Landroid/support/transition/GhostViewApi21;-><init>(Landroid/view/View;Landroid/support/transition/GhostViewApi21$1;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 56
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    :cond_0
    move-object v1, v3

    .line 56
    goto :goto_0
.end method

.method public removeGhost(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$300()V

    .line 62
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$400()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$400()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
