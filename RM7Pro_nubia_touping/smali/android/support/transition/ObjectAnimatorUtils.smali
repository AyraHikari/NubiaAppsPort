.class Landroid/support/transition/ObjectAnimatorUtils;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtils.java"


# static fields
.field private static final IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Landroid/graphics/PointF;>;"
    sget-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/transition/ObjectAnimatorUtilsImpl;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
