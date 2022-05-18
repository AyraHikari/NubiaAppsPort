.class public Lcn/nubia/camera/extendedUI/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/extendedUI/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Landroid/animation/AnimatorSet;

.field private c:Lcn/nubia/camera/extendedUI/a$a;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V
    .locals 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide v7, p5

    .line 34
    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/extendedUI/a;->a([Ljava/lang/Object;Ljava/lang/String;FFJJ)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/a;)Lcn/nubia/camera/extendedUI/a$a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/a;->c:Lcn/nubia/camera/extendedUI/a$a;

    return-object p0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;FFJJ)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 67
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    .line 68
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    .line 69
    array-length v3, v1

    .line 71
    new-array v4, v3, [Landroid/animation/ObjectAnimator;

    .line 72
    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    .line 73
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v9, v1, v7

    const/4 v10, 0x2

    new-array v11, v10, [F

    aput p3, v11, v6

    const/4 v12, 0x1

    aput p4, v11, v12

    .line 74
    invoke-static {v9, p2, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v4, v8

    new-array v10, v10, [F

    aput p4, v10, v6

    aput p3, v10, v12

    .line 75
    invoke-static {v9, p2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v3, v8

    add-int/2addr v8, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    move-wide/from16 v5, p5

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 79
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    move-wide/from16 v5, p7

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 80
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/camera/extendedUI/a$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/extendedUI/a$1;-><init>(Lcn/nubia/camera/extendedUI/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/camera/extendedUI/a$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/extendedUI/a$2;-><init>(Lcn/nubia/camera/extendedUI/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 115
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 116
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    iget-object v1, v0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public a(Lcn/nubia/camera/extendedUI/a$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/a;->c:Lcn/nubia/camera/extendedUI/a$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/a;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
