.class public Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;
.super Lcom/android/common/ui/RotateLayout;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/three_a/ui/g;


# instance fields
.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->e()V

    .line 30
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->f()V

    return-void
.end method

.method private e()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 73
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v3, 0xdc

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v5, v0, [F

    .line 74
    fill-array-data v5, :array_1

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v0, [F

    .line 75
    fill-array-data v6, :array_2

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v7, v0, [F

    .line 76
    fill-array-data v7, :array_3

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [F

    .line 77
    fill-array-data v8, :array_4

    invoke-static {p0, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v0, [F

    .line 78
    fill-array-data v9, :array_5

    invoke-static {p0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    iput-object v3, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->b:Landroid/animation/AnimatorSet;

    .line 80
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->b:Landroid/animation/AnimatorSet;

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    const/4 v1, 0x1

    aput-object v5, v4, v1

    aput-object v6, v4, v0

    const/4 v0, 0x3

    aput-object v7, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v2, v4, v0

    .line 81
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->b:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$1;-><init>(Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_3
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_5
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 108
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v3, 0xdc

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v5, v0, [F

    .line 109
    fill-array-data v5, :array_1

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v0, [F

    .line 110
    fill-array-data v6, :array_2

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v7, v0, [F

    .line 111
    fill-array-data v7, :array_3

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [F

    .line 112
    fill-array-data v8, :array_4

    invoke-static {p0, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v0, [F

    .line 113
    fill-array-data v9, :array_5

    invoke-static {p0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 114
    iput-object v3, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->c:Landroid/animation/AnimatorSet;

    .line 115
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->c:Landroid/animation/AnimatorSet;

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    const/4 v1, 0x1

    aput-object v5, v4, v1

    aput-object v6, v4, v0

    const/4 v0, 0x3

    aput-object v7, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v2, v4, v0

    .line 116
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->c:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$2;-><init>(Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_3
    .array-data 4
        0x3e800000    # 0.25f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e800000    # 0.25f
    .end array-data

    :array_5
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->setTranslationX(F)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->setTranslationY(F)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public d()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 56
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v3, v0, [F

    .line 57
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    .line 58
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v7, 0x64

    .line 59
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v0, [F

    .line 61
    fill-array-data v5, :array_2

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v0, [F

    .line 62
    fill-array-data v5, :array_3

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v6

    aput-object v4, v5, v1

    .line 63
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 66
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v6

    aput-object v2, v0, v1

    .line 67
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 68
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
