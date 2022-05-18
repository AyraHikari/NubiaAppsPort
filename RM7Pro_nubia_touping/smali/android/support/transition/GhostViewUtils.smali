.class Landroid/support/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# static fields
.field private static final CREATOR:Landroid/support/transition/GhostViewImpl$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Landroid/support/transition/GhostViewApi21$Creator;

    invoke-direct {v0}, Landroid/support/transition/GhostViewApi21$Creator;-><init>()V

    sput-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/support/transition/GhostViewApi14$Creator;

    invoke-direct {v0}, Landroid/support/transition/GhostViewApi14$Creator;-><init>()V

    sput-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 37
    sget-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/transition/GhostViewImpl$Creator;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object v0

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 41
    sget-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    invoke-interface {v0, p0}, Landroid/support/transition/GhostViewImpl$Creator;->removeGhost(Landroid/view/View;)V

    .line 42
    return-void
.end method
