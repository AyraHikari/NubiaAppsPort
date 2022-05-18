.class public Landroid/support/transition/ChangeTransform;
.super Landroid/support/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/support/transition/ChangeTransform$GhostListener;,
        Landroid/support/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android:changeTransform:matrix"

    aput-object v3, v2, v1

    const-string v3, "android:changeTransform:transforms"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "android:changeTransform:parentMatrix"

    aput-object v4, v2, v3

    sput-object v2, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 67
    new-instance v2, Landroid/support/transition/ChangeTransform$1;

    const-class v3, [F

    const-string v4, "nonTranslations"

    invoke-direct {v2, v3, v4}, Landroid/support/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 83
    new-instance v2, Landroid/support/transition/ChangeTransform$2;

    const-class v3, Landroid/graphics/PointF;

    const-string v4, "translations"

    invoke-direct {v2, v3, v4}, Landroid/support/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 101
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-boolean v3, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 102
    iput-boolean v3, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 103
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 110
    sget-object v1, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    .line 111
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "reparentWithOverlay"

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 113
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v1, "reparent"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/ChangeTransform;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/ChangeTransform;

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F

    .prologue
    .line 47
    invoke-static/range {p0 .. p8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 9
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 192
    iget-object v5, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 193
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v4, Landroid/support/transition/ChangeTransform$Transforms;

    invoke-direct {v4, v5}, Landroid/support/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 198
    .local v4, "transforms":Landroid/support/transition/ChangeTransform$Transforms;
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:transforms"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 200
    .local v0, "matrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    :cond_2
    const/4 v0, 0x0

    .line 205
    :goto_1
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:matrix"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-boolean v6, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v6, :cond_0

    .line 207
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 209
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-static {v2, v3}, Landroid/support/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 210
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 211
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateMatrix"

    sget v8, Landroid/support/transition/R$id;->transition_transform:I

    .line 213
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 212
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateParentMatrix"

    sget v8, Landroid/support/transition/R$id;->parent_matrix:I

    .line 215
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 214
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    :cond_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v1, "matrix":Landroid/graphics/Matrix;
    move-object v0, v1

    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    goto :goto_1
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 383
    iget-object v5, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 385
    .local v5, "view":Landroid/view/View;
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 386
    .local v0, "endMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 387
    .local v3, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-static {p1, v3}, Landroid/support/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 389
    invoke-static {v5, p1, v3}, Landroid/support/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object v1

    .line 390
    .local v1, "ghostView":Landroid/support/transition/GhostViewImpl;
    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v1, v6, v7}, Landroid/support/transition/GhostViewImpl;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 397
    move-object v4, p0

    .line 398
    .local v4, "outerTransition":Landroid/support/transition/Transition;
    :goto_1
    iget-object v6, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v6, :cond_2

    .line 399
    iget-object v4, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    goto :goto_1

    .line 402
    :cond_2
    new-instance v2, Landroid/support/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v5, v1}, Landroid/support/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/support/transition/GhostViewImpl;)V

    .line 403
    .local v2, "listener":Landroid/support/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v2}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 407
    sget-boolean v6, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v6, v7, :cond_3

    .line 409
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 411
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 21
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    .prologue
    .line 281
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Matrix;

    .line 282
    .local v14, "startMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Matrix;

    .line 284
    .local v11, "endMatrix":Landroid/graphics/Matrix;
    if-nez v14, :cond_0

    .line 285
    sget-object v14, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 288
    :cond_0
    if-nez v11, :cond_1

    .line 289
    sget-object v11, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 292
    :cond_1
    invoke-virtual {v14, v11}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const/4 v10, 0x0

    .line 365
    :goto_0
    return-object v10

    .line 296
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:transforms"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/ChangeTransform$Transforms;

    .line 299
    .local v8, "transforms":Landroid/support/transition/ChangeTransform$Transforms;
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 300
    .local v7, "view":Landroid/view/View;
    invoke-static {v7}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 302
    const/16 v4, 0x9

    new-array v15, v4, [F

    .line 303
    .local v15, "startMatrixValues":[F
    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->getValues([F)V

    .line 304
    const/16 v4, 0x9

    new-array v12, v4, [F

    .line 305
    .local v12, "endMatrixValues":[F
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 306
    new-instance v9, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v9, v7, v15}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 309
    .local v9, "pathAnimatorMatrix":Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v4, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v5, Landroid/support/transition/FloatArrayEvaluator;

    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/support/transition/FloatArrayEvaluator;-><init>([F)V

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v12, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 312
    .local v17, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeTransform;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v15, v5

    const/16 v18, 0x5

    aget v18, v15, v18

    const/16 v19, 0x2

    aget v19, v12, v19

    const/16 v20, 0x5

    aget v20, v12, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v13

    .line 315
    .local v13, "path":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v13}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 317
    .local v16, "translationProperty":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v16, v4, v5

    invoke-static {v9, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 320
    .local v10, "animator":Landroid/animation/ObjectAnimator;
    move-object v6, v11

    .line 322
    .local v6, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/support/transition/ChangeTransform$3;

    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/transition/ChangeTransform$3;-><init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 363
    .local v3, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v10, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    invoke-static {v10, v3}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    goto/16 :goto_0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 371
    :cond_0
    if-ne p1, p2, :cond_2

    move v1, v2

    .line 378
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v3

    .line 371
    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/support/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    .line 374
    .local v0, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v0, :cond_1

    .line 375
    iget-object v4, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_4

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 435
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 436
    return-void
.end method

.method private setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .locals 6
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 416
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 417
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v5, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 419
    iget-object v3, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 420
    .local v3, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 421
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 423
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 424
    .local v1, "startLocal":Landroid/graphics/Matrix;
    if-nez v1, :cond_0

    .line 425
    new-instance v1, Landroid/graphics/Matrix;

    .end local v1    # "startLocal":Landroid/graphics/Matrix;
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    .restart local v1    # "startLocal":Landroid/graphics/Matrix;
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_0
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 430
    .local v2, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 431
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 432
    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 442
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 443
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 444
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 445
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 446
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 447
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 448
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 449
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 234
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 222
    sget-boolean v0, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 229
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 239
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    .line 240
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    .line 241
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 242
    :cond_0
    const/4 v5, 0x0

    .line 276
    :cond_1
    :goto_0
    return-object v5

    .line 245
    :cond_2
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 246
    .local v3, "startParent":Landroid/view/ViewGroup;
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    .local v0, "endParent":Landroid/view/ViewGroup;
    iget-boolean v6, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v6, :cond_6

    invoke-direct {p0, v3, v0}, Landroid/support/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v1, 0x1

    .line 249
    .local v1, "handleParentChange":Z
    :goto_1
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 250
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_3

    .line 251
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:matrix"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_3
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateParentMatrix"

    .line 255
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 256
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_4

    .line 257
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_4
    if-eqz v1, :cond_5

    .line 262
    invoke-direct {p0, p2, p3}, Landroid/support/transition/ChangeTransform;->setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 266
    :cond_5
    invoke-direct {p0, p2, p3, v1}, Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 269
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    iget-boolean v6, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_7

    .line 270
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    goto :goto_0

    .line 247
    .end local v1    # "handleParentChange":Z
    .end local v2    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 271
    .restart local v1    # "handleParentChange":Z
    .restart local v2    # "startMatrix":Landroid/graphics/Matrix;
    .restart local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .restart local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    sget-boolean v6, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v6, :cond_1

    .line 273
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getReparent()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 184
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 159
    return-void
.end method
