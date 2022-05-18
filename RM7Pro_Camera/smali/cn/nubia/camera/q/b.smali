.class public Lcn/nubia/camera/q/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/f$a;
.implements Lcn/nubia/camera/f$b;
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/o/a;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/q/j$b;
.implements Lcn/nubia/camera/w/a$b;
.implements Lcn/nubia/camera/w/a$c;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/b$a;,
        Lcn/nubia/camera/q/b$b;,
        Lcn/nubia/camera/q/b$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field private C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field private D:Lcn/nubia/camera/f/c;

.field private E:Lcom/android/common/ui/RotateImageView;

.field private F:Lcn/nubia/camera/g/a;

.field protected a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Lcom/android/common/ui/RotateImageView;

.field private k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private o:Lcom/android/common/ui/NubiaProgressWheel;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcn/nubia/camera/ad/a;

.field private r:Lcn/nubia/camera/k/ah;

.field private s:Landroid/animation/AnimatorSet;

.field private t:Lcn/nubia/camera/q/b$a;

.field private u:Lcn/nubia/camera/w/a;

.field private v:Z

.field private w:Lcn/nubia/camera/q/b$c;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/net/Uri;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 101
    iput-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 105
    iput-object v0, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    .line 107
    iput-object v0, p0, Lcn/nubia/camera/q/b;->r:Lcn/nubia/camera/k/ah;

    .line 108
    iput-object v0, p0, Lcn/nubia/camera/q/b;->s:Landroid/animation/AnimatorSet;

    .line 111
    iput-object v0, p0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 115
    new-instance v1, Lcn/nubia/camera/q/b$c;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/q/b$c;-><init>(Lcn/nubia/camera/q/b;Lcn/nubia/camera/q/b$1;)V

    iput-object v1, p0, Lcn/nubia/camera/q/b;->w:Lcn/nubia/camera/q/b$c;

    .line 481
    iput-object v0, p0, Lcn/nubia/camera/q/b;->x:Landroid/graphics/Bitmap;

    .line 482
    iput-object v0, p0, Lcn/nubia/camera/q/b;->y:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcn/nubia/camera/q/b;->z:Z

    const/4 v0, 0x0

    .line 664
    iput-boolean v0, p0, Lcn/nubia/camera/q/b;->A:Z

    .line 853
    new-instance v0, Lcn/nubia/camera/q/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/b$1;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object v0, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 993
    new-instance v0, Lcn/nubia/camera/q/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/b$2;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object v0, p0, Lcn/nubia/camera/q/b;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1053
    new-instance v0, Lcn/nubia/camera/q/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/b$3;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object v0, p0, Lcn/nubia/camera/q/b;->D:Lcn/nubia/camera/f/c;

    return-void
.end method

.method public constructor <init>(ILcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/ad/a;",
            "Lcn/nubia/camera/k/ah;",
            "Z)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 105
    iput-object p1, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    .line 107
    iput-object p1, p0, Lcn/nubia/camera/q/b;->r:Lcn/nubia/camera/k/ah;

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/q/b;->s:Landroid/animation/AnimatorSet;

    .line 111
    iput-object p1, p0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 115
    new-instance v0, Lcn/nubia/camera/q/b$c;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/q/b$c;-><init>(Lcn/nubia/camera/q/b;Lcn/nubia/camera/q/b$1;)V

    iput-object v0, p0, Lcn/nubia/camera/q/b;->w:Lcn/nubia/camera/q/b$c;

    .line 481
    iput-object p1, p0, Lcn/nubia/camera/q/b;->x:Landroid/graphics/Bitmap;

    .line 482
    iput-object p1, p0, Lcn/nubia/camera/q/b;->y:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lcn/nubia/camera/q/b;->z:Z

    const/4 p1, 0x0

    .line 664
    iput-boolean p1, p0, Lcn/nubia/camera/q/b;->A:Z

    .line 853
    new-instance p1, Lcn/nubia/camera/q/b$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/b$1;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object p1, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 993
    new-instance p1, Lcn/nubia/camera/q/b$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/b$2;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object p1, p0, Lcn/nubia/camera/q/b;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1053
    new-instance p1, Lcn/nubia/camera/q/b$3;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/b$3;-><init>(Lcn/nubia/camera/q/b;)V

    iput-object p1, p0, Lcn/nubia/camera/q/b;->D:Lcn/nubia/camera/f/c;

    .line 125
    iput-object p2, p0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz p3, :cond_0

    .line 127
    new-instance p1, Lcn/nubia/camera/w/a;

    invoke-direct {p1, p4, p3, p5}, Lcn/nubia/camera/w/a;-><init>(Lcn/nubia/camera/ad/a;Ljava/util/List;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    .line 128
    invoke-virtual {p1, p0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a$c;)V

    .line 129
    iget-object p1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a$b;)V

    .line 131
    :cond_0
    iput-object p4, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    .line 132
    iput-object p5, p0, Lcn/nubia/camera/q/b;->r:Lcn/nubia/camera/k/ah;

    .line 133
    iput-boolean p6, p0, Lcn/nubia/camera/q/b;->v:Z

    return-void
.end method

.method private O()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iget-object v1, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    return-void
.end method

.method private P()I
    .locals 2

    .line 405
    sget-object v0, Lcn/nubia/camera/q/b$5;->a:[I

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0802c0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0802c3

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private Q()V
    .locals 9

    .line 527
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3d75c28f    # 0.06f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 528
    iget-object v1, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 531
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const v5, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 532
    iget-object v2, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 533
    iget-object v3, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v4, [F

    fill-array-data v8, :array_2

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 534
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 535
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/b;->s:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v4

    .line 538
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private R()Z
    .locals 3

    .line 626
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 627
    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v1, v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0222

    .line 632
    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_capture_focus_key"

    .line 631
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private S()V
    .locals 3

    const-string v0, "BottomBarFragment"

    const-string v1, "hide ui for family page"

    .line 666
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    .line 668
    iget-object v1, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    .line 669
    iget-object v1, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    .line 670
    iget-object v1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 673
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v1}, Lcn/nubia/camera/w/a;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/q/b;->A:Z

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideContentForFamily, highsetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/q/b;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->A:Z

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/a;->d()V

    :cond_1
    return-void
.end method

.method private T()V
    .locals 3

    const-string v0, "BottomBarFragment"

    const-string v1, "show ui for family page"

    .line 683
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    .line 685
    iget-object v1, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    .line 686
    iget-object v1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 687
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->e()V

    .line 690
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_1

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showContentForFamily, highsetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/q/b;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->A:Z

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/a;->c()V

    :cond_1
    return-void
.end method

.method private U()V
    .locals 4

    .line 809
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 811
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 816
    iget-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    .line 818
    iget-object v0, p0, Lcn/nubia/camera/q/b;->o:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcn/nubia/camera/q/b;->o:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a()V

    .line 820
    invoke-direct {p0, v3}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 821
    iget-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 823
    iget-object v0, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 827
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0, v2}, Lcn/nubia/camera/w/a;->a(I)V

    .line 830
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private V()V
    .locals 3

    .line 834
    iget-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcn/nubia/camera/q/b;->o:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 838
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 839
    iget-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 840
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, v2}, Lcn/nubia/camera/w/a;->a(I)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 847
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private W()V
    .locals 2

    .line 984
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 985
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->Y()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    .line 987
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->X()Lcn/nubia/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/j/b;->a()V

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    .line 989
    iget-object v0, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private X()Lcn/nubia/camera/j/b;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->S()Lcn/nubia/camera/j/b;

    move-result-object v0

    return-object v0
.end method

.method private Y()Lcn/nubia/camera/z/b;
    .locals 1

    .line 1011
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    return-object v0
.end method

.method private Z()Z
    .locals 2

    .line 1046
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 1047
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->J:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/q/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/q/b;->x:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/b;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/q/b;->y:Landroid/net/Uri;

    return-object p1
.end method

.method public static a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;
    .locals 8

    .line 149
    new-instance v7, Lcn/nubia/camera/q/b;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/q/b;-><init>(ILcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)V

    return-object v7
.end method

.method public static a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/ad/a;",
            "Lcn/nubia/camera/k/ah;",
            ")",
            "Lcn/nubia/camera/q/b;"
        }
    .end annotation

    .line 166
    new-instance v7, Lcn/nubia/camera/q/b;

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/q/b;-><init>(ILcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)V

    return-object v7
.end method

.method public static a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/ad/a;",
            "Lcn/nubia/camera/k/ah;",
            "Z)",
            "Lcn/nubia/camera/q/b;"
        }
    .end annotation

    .line 172
    new-instance v7, Lcn/nubia/camera/q/b;

    const/4 v1, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/q/b;-><init>(ILcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)V

    return-object v7
.end method

.method static synthetic a(Lcn/nubia/camera/q/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    return v0

    .line 523
    :cond_2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/b;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/q/b;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/q/b;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcn/nubia/camera/q/b;->z:Z

    return p1
.end method

.method private aa()V
    .locals 2

    .line 1243
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(I)V

    goto :goto_0

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/q/b;)Landroid/net/Uri;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->y:Landroid/net/Uri;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 443
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/q/b;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcn/nubia/camera/q/b;->z:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/q/b;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->s:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090187

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f09032b

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090329

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f09032a

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f0902cc

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f0902d0

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f090088

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-direct {p0}, Lcn/nubia/camera/q/b;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-direct {p0}, Lcn/nubia/camera/q/b;->P()I

    move-result v1

    const v2, 0x7f0802c0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Z)V

    const v0, 0x7f0901c4

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f0901c5

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0901c6

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcn/nubia/camera/q/b;->o:Lcom/android/common/ui/NubiaProgressWheel;

    .line 300
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b;->e(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/b;->a(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/b;->a(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;)V

    .line 306
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/b;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/q/b;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->x:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    .line 1195
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1196
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_2

    const v1, 0x7f09008e

    .line 1198
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    .line 1199
    new-instance p1, Lcn/nubia/camera/g/a;

    new-instance v1, Lcn/nubia/camera/q/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/b$4;-><init>(Lcn/nubia/camera/q/b;)V

    .line 1204
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/g/a;-><init>(Ljava/util/ArrayList;Lcn/nubia/camera/g/a$a;Lcn/nubia/camera/ad/a;)V

    iput-object p1, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    .line 1205
    iget-object v0, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    iget-object p1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1208
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    .line 1209
    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->D:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1219
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1220
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1221
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1222
    iget-object p1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->requestLayout()V

    .line 1225
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/b;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/q/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/z/b;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->Y()Lcn/nubia/camera/z/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/j/b;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->X()Lcn/nubia/camera/j/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/q/b;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcn/nubia/camera/q/b;->v:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/q/b$a;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->t:Lcn/nubia/camera/q/b$a;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/f/c;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/camera/q/b;->D:Lcn/nubia/camera/f/c;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->V()V

    return-void
.end method


# virtual methods
.method public J()V
    .locals 2

    .line 765
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->u()Lcom/android/preference/c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 774
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_iso_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 776
    invoke-virtual {v0, v1}, Lcom/android/preference/ListPreference;->a(I)V

    .line 778
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_3

    .line 779
    invoke-virtual {v0}, Lcn/nubia/camera/w/a;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public M()V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0}, Lcn/nubia/camera/w/a;->g()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c(F)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 1020
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 1021
    sget-object v0, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    if-ne p1, v0, :cond_1

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->W()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;)V
    .locals 1

    .line 1230
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->aa()V

    .line 1232
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->H()V

    .line 1233
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 1234
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->o()V

    .line 1235
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->K()V

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 1239
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 2

    .line 1148
    iget-object p2, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07019a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 1149
    iget-object p3, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0701da

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 1150
    iget-object p4, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1151
    iget p5, p4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-eq p5, v0, :cond_0

    const/16 p5, 0xc

    .line 1152
    invoke-virtual {p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1153
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p5

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p1

    iput p5, p4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1154
    iget-object p1, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    iget-object p1, p0, Lcn/nubia/camera/q/b;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1157
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcn/nubia/camera/q/h;->a(I)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 1189
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->J()V

    .line 436
    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/b;->b(Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/q/b$a;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/camera/q/b;->t:Lcn/nubia/camera/q/b$a;

    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$a;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$b;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$c;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a$c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 699
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BottomBarFragment"

    const-string v0, "enableGradienterAndCompass failed! getPreferenceGroup is null."

    .line 700
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "pref_camera_gradienter_key"

    .line 703
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/b;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_1

    .line 704
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "off"

    .line 706
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    const v0, 0x7f0f03bd

    .line 707
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->u()Lcom/android/preference/c;

    move-result-object v1

    const v4, 0x7f0f0226

    invoke-virtual {p0, v4}, Lcn/nubia/camera/q/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_composition_key"

    invoke-virtual {v1, v5, v4}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const-string v1, "on"

    .line 708
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 711
    :cond_3
    iget-object v4, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v5, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v4, v5}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    goto :goto_3

    .line 709
    :cond_4
    :goto_2
    iget-object v4, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v5, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v4, v5}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 714
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    if-eqz v2, :cond_6

    .line 716
    iget-object v4, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v5, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v4, v5}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    goto :goto_5

    .line 718
    :cond_6
    iget-object v4, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v5, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v4, v5}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 720
    :goto_5
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v4

    if-eqz v2, :cond_7

    .line 722
    iget-object v5, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v4}, Lcn/nubia/camera/f;->d()F

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(FZ)V

    .line 723
    invoke-virtual {v4, p0}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f$a;)V

    goto :goto_6

    .line 725
    :cond_7
    invoke-virtual {v4, p0}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f$a;)V

    .line 727
    :goto_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_9

    if-eqz v2, :cond_8

    goto :goto_7

    .line 732
    :cond_8
    invoke-virtual {v4, p0}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f$b;)V

    goto :goto_8

    .line 728
    :cond_9
    :goto_7
    iget-object p1, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v4}, Lcn/nubia/camera/f;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setDegreeOfXY(F)V

    .line 729
    iget-object p1, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v4}, Lcn/nubia/camera/f;->b()F

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(FZ)V

    .line 730
    invoke-virtual {v4, p0}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f$b;)V

    :goto_8
    return-void
.end method

.method public a(ZJJ)V
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p0, p4, p5, p2, p3}, Lcn/nubia/camera/q/b;->b(JJ)V

    goto :goto_1

    .line 595
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->y()V

    .line 597
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/q/h;->a(ZZ)V

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->R()Lcn/nubia/camera/n/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 427
    invoke-virtual {p1, p2}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 430
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/h;->a()V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(F)V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-eq v0, v1, :cond_1

    .line 743
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-eq p1, v0, :cond_1

    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->u()Lcom/android/preference/c;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 750
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 751
    iget-object v0, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    if-lez p1, :cond_3

    .line 754
    iget-object p1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz p1, :cond_3

    .line 755
    iget-object p1, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "pref_camera_exposure_compensation"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 756
    iget-object p1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/a;->f()V

    .line 759
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz p1, :cond_4

    .line 760
    sget-object v0, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->e()V

    :cond_0
    return-void
.end method

.method public b(ZJJ)V
    .locals 2

    .line 576
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p0, p4, p5, p2, p3}, Lcn/nubia/camera/q/b;->a(JJ)V

    goto :goto_1

    .line 581
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->y()V

    .line 582
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1039
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1042
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b_(I)V
    .locals 0

    .line 656
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    if-nez p1, :cond_0

    .line 658
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->S()V

    goto :goto_0

    .line 660
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->T()V

    :goto_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/g/i;

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/i;-><init>(Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setLongClickable(Z)V

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    new-instance v2, Lcn/nubia/camera/q/b$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/camera/q/b$b;-><init>(Lcn/nubia/camera/q/b;Lcn/nubia/camera/q/b$1;)V

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setIsRound(Z)V

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/q/b;->i:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/q/b;->c:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/q/b;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setIsRound(Z)V

    .line 340
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->d()V

    .line 341
    invoke-direct {p0, v2}, Lcn/nubia/camera/q/b;->b(I)V

    .line 342
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->Q()V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(F)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1184
    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/a;->a(I)V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iget-object v1, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 347
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setHapticFeedbackEnabled(Z)V

    .line 350
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->e()V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a(Z)Z

    :cond_0
    return-void
.end method

.method public d_()Z
    .locals 2

    .line 542
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    return v1

    .line 545
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcn/nubia/camera/q/b;->m:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    return v1

    .line 548
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcn/nubia/camera/q/b;->B:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v0, :cond_2

    .line 550
    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->b()V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/af/a;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 367
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    goto :goto_1

    .line 368
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    :goto_1
    return-void

    .line 355
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShutterButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomBarFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f_()V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h;->h(Z)V

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h;->i(Z)V

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h;->j(Z)V

    :cond_2
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g_()V
    .locals 0

    .line 805
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->U()V

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    .line 605
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 606
    iget-object v1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 609
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_1

    .line 610
    invoke-virtual {v1, v0}, Lcn/nubia/camera/w/a;->a(Z)V

    :cond_1
    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 616
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 617
    iget-object v1, p0, Lcn/nubia/camera/q/b;->E:Lcom/android/common/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 620
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {v1, v0}, Lcn/nubia/camera/w/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->Y()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 2

    .line 794
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 795
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->V()V

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iget-object v1, p0, Lcn/nubia/camera/q/b;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/q/b;->o:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 376
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->requestLayout()V

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/b;->c:Lcom/android/common/ui/shutterbutton/b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setWaitBarColor(Lcom/android/common/ui/shutterbutton/b;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setWaitBarColor(Lcom/android/common/ui/shutterbutton/b;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 183
    iget-boolean p3, p0, Lcn/nubia/camera/q/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0027

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b;->d(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/q/i;

    invoke-virtual {p2, p0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/q/j$b;)V

    .line 188
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/q/i;

    invoke-virtual {p2}, Lcn/nubia/camera/q/i;->L()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->S()V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->d:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/q/j$b;)V

    .line 254
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->d:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 235
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b;->w:Lcn/nubia/camera/q/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->b(Lcn/nubia/l/a/b$d;)V

    .line 239
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->W()V

    .line 240
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f$b;)V

    .line 241
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f$a;)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcn/nubia/camera/g/a;->b()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 201
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 202
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b;->w:Lcn/nubia/camera/q/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b$d;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lcn/nubia/camera/w/a;->a()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 209
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/g/a;->a(Lcn/nubia/camera/af/b;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/g/a;->a(Lcn/nubia/camera/af/b;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/g/a;->a(Lcn/nubia/camera/af/b;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->F:Lcn/nubia/camera/g/a;

    invoke-virtual {v0}, Lcn/nubia/camera/g/a;->a()V

    .line 220
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->c()V

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->d()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->O()V

    return-void
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 453
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1, v0}, Lcn/nubia/camera/w/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x1

    .line 460
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b;->e(Z)V

    .line 461
    iget-object v1, p0, Lcn/nubia/camera/q/b;->u:Lcn/nubia/camera/w/a;

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v1, v0}, Lcn/nubia/camera/w/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 391
    iget-boolean v0, p0, Lcn/nubia/camera/q/b;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 396
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->requestLayout()V

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/q/b;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performLongClick()Z

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 2

    .line 638
    iget-object v0, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcn/nubia/camera/q/b;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/b;->q:Lcn/nubia/camera/ad/a;

    .line 641
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 643
    invoke-virtual {p0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->e()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
