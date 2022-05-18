.class Landroid/support/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroid/support/transition/ViewUtilsImpl;

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Landroid/support/transition/ViewUtilsApi22;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    .line 60
    :goto_0
    new-instance v0, Landroid/support/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 75
    new-instance v0, Landroid/support/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 47
    new-instance v0, Landroid/support/transition/ViewUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    goto :goto_0

    .line 48
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 49
    new-instance v0, Landroid/support/transition/ViewUtilsApi19;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    goto :goto_0

    .line 50
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 51
    new-instance v0, Landroid/support/transition/ViewUtilsApi18;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi18;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Landroid/support/transition/ViewUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewUtilsImpl;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method private static fetchViewFlagsField()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 209
    sget-boolean v1, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    if-nez v1, :cond_0

    .line 211
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 212
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v3, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    .line 218
    :cond_0
    return-void

    .line 213
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 214
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "ViewUtils"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewUtilsImpl;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v0

    return-object v0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewUtilsImpl;->getTransitionAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewUtilsImpl;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v0

    return-object v0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewUtilsImpl;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "m"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 193
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ViewUtilsImpl;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 194
    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 205
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/ViewUtilsImpl;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 206
    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "alpha"    # F

    .prologue
    .line 105
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ViewUtilsImpl;->setTransitionAlpha(Landroid/view/View;F)V

    .line 106
    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visibility"    # I

    .prologue
    .line 143
    invoke-static {}, Landroid/support/transition/ViewUtils;->fetchViewFlagsField()V

    .line 144
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "viewFlags":I
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v2, v0, -0xd

    or-int/2addr v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "viewFlags":I
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ViewUtilsImpl;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 168
    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ViewUtilsImpl;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 184
    return-void
.end method
