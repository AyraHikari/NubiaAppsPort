.class public Landroid/support/transition/ChangeImageTransform;
.super Landroid/support/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeImageTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeImageTransform:bounds"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/support/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/support/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 60
    new-instance v0, Landroid/support/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 11
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 81
    iget-object v8, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 82
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v8

    .line 85
    check-cast v3, Landroid/widget/ImageView;

    .line 86
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 90
    iget-object v7, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 92
    .local v7, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 93
    .local v4, "left":I
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    .line 94
    .local v6, "top":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    .line 95
    .local v5, "right":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 97
    .local v0, "bottom":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v1, "bounds":Landroid/graphics/Rect;
    const-string v9, "android:changeImageTransform:bounds"

    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v9, "android:changeImageTransform:matrix"

    invoke-static {v3}, Landroid/support/transition/ChangeImageTransform;->copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 15
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 217
    .local v5, "imageWidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 218
    .local v4, "imageViewWidth":I
    int-to-float v13, v4

    int-to-float v14, v5

    div-float v8, v13, v14

    .line 220
    .local v8, "scaleX":F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 221
    .local v2, "imageHeight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 222
    .local v3, "imageViewHeight":I
    int-to-float v13, v3

    int-to-float v14, v2

    div-float v9, v13, v14

    .line 224
    .local v9, "scaleY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 226
    .local v7, "maxScale":F
    int-to-float v13, v5

    mul-float v12, v13, v7

    .line 227
    .local v12, "width":F
    int-to-float v13, v2

    mul-float v0, v13, v7

    .line 228
    .local v0, "height":F
    int-to-float v13, v4

    sub-float/2addr v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 229
    .local v10, "tx":I
    int-to-float v13, v3

    sub-float/2addr v13, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 231
    .local v11, "ty":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 233
    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 234
    return-object v6
.end method

.method private static copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 187
    sget-object v0, Landroid/support/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    invoke-static {p0}, Landroid/support/transition/ChangeImageTransform;->fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-static {p0}, Landroid/support/transition/ChangeImageTransform;->centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 182
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroid/support/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroid/support/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 176
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroid/support/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 5
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 205
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 206
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 204
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 207
    return-object v1
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeImageTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 110
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeImageTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 105
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    .line 130
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v10, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 134
    .local v8, "startBounds":Landroid/graphics/Rect;
    iget-object v10, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 135
    .local v4, "endBounds":Landroid/graphics/Rect;
    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 139
    iget-object v10, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:matrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    .line 140
    .local v9, "startMatrix":Landroid/graphics/Matrix;
    iget-object v10, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:matrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    .line 142
    .local v5, "endMatrix":Landroid/graphics/Matrix;
    if-nez v9, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v9, :cond_6

    .line 143
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_3
    const/4 v7, 0x1

    .line 145
    .local v7, "matricesEqual":Z
    :goto_1
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v7, :cond_0

    .line 149
    :cond_4
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    .line 150
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 152
    .local v3, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 154
    .local v2, "drawableHeight":I
    invoke-static {v6}, Landroid/support/transition/ImageViewUtils;->startAnimateTransform(Landroid/widget/ImageView;)V

    .line 157
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    .line 158
    :cond_5
    invoke-direct {p0, v6}, Landroid/support/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 170
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    invoke-static {v6, v0}, Landroid/support/transition/ImageViewUtils;->reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V

    goto :goto_0

    .line 143
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "matricesEqual":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 160
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableHeight":I
    .restart local v3    # "drawableWidth":I
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    .restart local v7    # "matricesEqual":Z
    :cond_7
    if-nez v9, :cond_8

    .line 161
    sget-object v9, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 163
    :cond_8
    if-nez v5, :cond_9

    .line 164
    sget-object v5, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 166
    :cond_9
    sget-object v10, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {v10, v6, v9}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, v6, v9, v5}, Landroid/support/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
