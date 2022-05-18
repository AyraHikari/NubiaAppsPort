.class Landroid/support/transition/PropertyValuesHolderUtils;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtils.java"


# static fields
.field private static final IMPL:Landroid/support/transition/PropertyValuesHolderUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Landroid/support/transition/PropertyValuesHolderUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/PropertyValuesHolderUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/PropertyValuesHolderUtils;->IMPL:Landroid/support/transition/PropertyValuesHolderUtilsImpl;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/support/transition/PropertyValuesHolderUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/PropertyValuesHolderUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/PropertyValuesHolderUtils;->IMPL:Landroid/support/transition/PropertyValuesHolderUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Landroid/graphics/PointF;>;"
    sget-object v0, Landroid/support/transition/PropertyValuesHolderUtils;->IMPL:Landroid/support/transition/PropertyValuesHolderUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/PropertyValuesHolderUtilsImpl;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method
