.class public Lcn/nubia/camera/q/m;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/q/j$b;
.implements Lcn/nubia/camera/w/a$c;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/m$b;,
        Lcn/nubia/camera/q/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/android/common/ui/a;

.field private c:Lcom/android/common/ui/a;

.field private i:Lcom/android/common/ui/a;

.field private j:Lcom/android/common/ui/RotateImageView;

.field private k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private n:Landroid/view/View;

.field private o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private p:Z

.field private q:Lcn/nubia/camera/af/a;

.field private r:Z

.field private s:Landroid/animation/AnimatorSet;

.field private t:Landroid/animation/AnimatorSet;

.field private u:Landroid/graphics/drawable/GradientDrawable;

.field private v:Z

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/q/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/q/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    .line 83
    iput-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    .line 84
    iput-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    .line 88
    iput-object v0, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcn/nubia/camera/q/m;->p:Z

    const/4 v1, 0x0

    .line 317
    iput-boolean v1, p0, Lcn/nubia/camera/q/m;->r:Z

    .line 943
    iput-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    .line 944
    iput-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    .line 945
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->u:Landroid/graphics/drawable/GradientDrawable;

    .line 1077
    iput-boolean v1, p0, Lcn/nubia/camera/q/m;->v:Z

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcn/nubia/camera/q/m;->p:Z

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcn/nubia/camera/q/m;->r:Z

    .line 943
    iput-object p1, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    .line 944
    iput-object p1, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    .line 945
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/q/m;->u:Landroid/graphics/drawable/GradientDrawable;

    .line 1077
    iput-boolean v0, p0, Lcn/nubia/camera/q/m;->v:Z

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    .line 105
    iput-boolean p3, p0, Lcn/nubia/camera/q/m;->p:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private J()Z
    .locals 2

    .line 687
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/q/m;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-static {}, Lcom/android/common/ui/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->callOnClick()Z

    const/4 v0, 0x1

    return v0

    .line 693
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->W()Z

    move-result v0

    return v0
.end method

.method private K()Z
    .locals 4

    .line 804
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 805
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 809
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 810
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 812
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method private L()Z
    .locals 2

    .line 819
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private M()Z
    .locals 3

    .line 848
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private O()V
    .locals 3

    .line 898
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/camera/extendedUI/d;

    if-eqz v1, :cond_0

    .line 899
    check-cast v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->u()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/extendedUI/d;->a(Landroid/content/SharedPreferences;Lcn/nubia/camera/a;)V

    .line 900
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    check-cast v1, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a;->a(Lcn/nubia/camera/a$a;)V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/camera/extendedUI/d;

    if-eqz v1, :cond_0

    .line 906
    check-cast v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/d;->a()V

    .line 907
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    check-cast v1, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a;->b(Lcn/nubia/camera/a$a;)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 3

    .line 912
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/camera/extendedUI/e;

    if-eqz v1, :cond_0

    .line 913
    check-cast v0, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->u()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/extendedUI/e;->a(Landroid/content/SharedPreferences;Lcn/nubia/camera/a;)V

    .line 914
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    check-cast v1, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a;->a(Lcn/nubia/camera/a$a;)V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 2

    .line 919
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/camera/extendedUI/e;

    if-eqz v1, :cond_0

    .line 920
    check-cast v0, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/e;->a()V

    .line 921
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    check-cast v1, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a;->b(Lcn/nubia/camera/a$a;)V

    :cond_0
    return-void
.end method

.method private S()Z
    .locals 2

    .line 939
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 940
    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private T()V
    .locals 8

    .line 947
    iget-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v2, [F

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 953
    iget-object v3, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 954
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v4, 0x64

    .line 956
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 957
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xfa

    .line 958
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    .line 959
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x32

    .line 960
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 962
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 963
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 964
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 966
    new-instance v3, Lcn/nubia/camera/q/m$11;

    invoke-direct {v3, p0}, Lcn/nubia/camera/q/m$11;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 990
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 991
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    .line 996
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 997
    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/q/m$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/m$2;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1021
    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1022
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    .line 1023
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1024
    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/q/m$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/m$3;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private U()V
    .locals 1

    .line 1050
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->r:Z

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Y()V

    goto :goto_0

    .line 1053
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Z()V

    :goto_0
    return-void
.end method

.method private V()V
    .locals 1

    .line 1058
    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1062
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1064
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1065
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1068
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method

.method private W()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1074
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private X()V
    .locals 2

    .line 1118
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Z()V

    .line 1119
    iget-object v0, p0, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1120
    iput-boolean v0, p0, Lcn/nubia/camera/q/m;->r:Z

    return-void
.end method

.method private Y()V
    .locals 3

    .line 1124
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->hashCode()I

    move-result v0

    .line 1125
    iget-object v1, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/m$a;

    if-eqz v2, :cond_0

    .line 1127
    invoke-interface {v2, v0}, Lcn/nubia/camera/q/m$a;->a_(I)V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/camera/q/m;->q:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method private Z()V
    .locals 3

    .line 1134
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->hashCode()I

    move-result v0

    .line 1135
    iget-object v1, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/m$a;

    if-eqz v2, :cond_0

    .line 1137
    invoke-interface {v2, v0}, Lcn/nubia/camera/q/m$a;->b(I)V

    goto :goto_0

    .line 1140
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/camera/q/m;->q:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)",
            "Lcn/nubia/camera/q/m;"
        }
    .end annotation

    .line 540
    new-instance v0, Lcn/nubia/camera/q/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, v1}, Lcn/nubia/camera/q/m;-><init>(ILjava/util/ArrayList;Z)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    return-object p0
.end method

.method private a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            "III",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;II",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 437
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 438
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/g;

    .line 440
    invoke-virtual {v0}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v1

    .line 441
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v3, 0x0

    .line 442
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    if-nez p7, :cond_0

    .line 444
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginStart(I)V

    goto :goto_1

    :cond_0
    add-int v4, p4, p3

    mul-int/2addr v4, p7

    add-int/2addr v4, p2

    .line 446
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginStart(I)V

    :goto_1
    const/4 v4, -0x1

    if-eq p8, v4, :cond_1

    .line 449
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 450
    iput p8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    goto :goto_2

    .line 452
    :cond_1
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 453
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 456
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {v0}, Lcom/android/common/ui/g;->a()I

    move-result v2

    if-lez v2, :cond_2

    .line 458
    invoke-virtual {v0}, Lcom/android/common/ui/g;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 460
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 461
    instance-of v0, v1, Lcom/android/common/ui/a;

    if-eqz v0, :cond_3

    .line 462
    move-object v0, v1

    check-cast v0, Lcom/android/common/ui/a;

    .line 463
    iget-object v2, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p6, p2, v2, p9}, Lcom/android/common/ui/a;->a(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V

    .line 464
    new-instance v2, Lcn/nubia/camera/q/m$7;

    invoke-direct {v2, p0}, Lcn/nubia/camera/q/m$7;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a;->setPopupStateChangedListener(Lcom/android/common/ui/a$a;)V

    .line 481
    new-instance v2, Lcn/nubia/camera/q/m$8;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/q/m$8;-><init>(Lcn/nubia/camera/q/m;Lcom/android/common/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a;->setOnClickInterruptedListener(Lcom/android/common/ui/b;)V

    goto :goto_3

    .line 493
    :cond_3
    instance-of v0, v1, Lcom/android/common/ui/k;

    if-eqz v0, :cond_4

    .line 494
    move-object v0, v1

    check-cast v0, Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/q/m$9;

    invoke-direct {v2, p0}, Lcn/nubia/camera/q/m$9;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v0, v2}, Lcom/android/common/ui/k;->setOnClickInterruptedListener(Lcom/android/common/ui/b;)V

    .line 506
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 507
    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/m;->a(Ljava/lang/Object;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Lcn/nubia/camera/an/a;)V
    .locals 4

    .line 1085
    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1089
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/q/m;->v:Z

    if-eqz p1, :cond_2

    .line 1091
    iget-object p1, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080070

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    iget-object p1, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080071

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1094
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    iget-object p1, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080072

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1086
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    iget-object p1, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top button enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TopBarFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/g;

    .line 637
    invoke-virtual {v1}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/m;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcn/nubia/camera/q/m;->r:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->M()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09033e

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f09033f

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090340

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    const v0, 0x7f090341

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090342

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 145
    iget-object v1, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    iget-object v1, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->e(Landroid/view/View;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->n()V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/an/a;)V

    .line 163
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->h(Landroid/view/View;)V

    .line 164
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->g(Landroid/view/View;)V

    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->f(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->a(Z)V

    .line 168
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->d()V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->c()V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->L()Z

    move-result p0

    return p0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090175

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/a;

    iput-object p1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->R()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->D()Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Q()V

    .line 181
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-eqz p1, :cond_2

    .line 182
    new-instance v0, Lcn/nubia/camera/q/m$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/m$1;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/a;->setUnClickableListener(Lcom/android/common/ui/a$b;)V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->K()Z

    move-result p0

    return p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0900df

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/a;

    iput-object p1, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->S()Lcn/nubia/camera/j/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcn/nubia/camera/j/b;->b(Z)V

    .line 226
    iget-object p1, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    if-nez p1, :cond_1

    return-void

    .line 230
    :cond_1
    new-instance v0, Lcn/nubia/camera/q/m$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/m$4;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/a;->setUnClickableListener(Lcom/android/common/ui/a$b;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->T()V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090153

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/a;

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 256
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->P()V

    .line 258
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->D()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->O()V

    .line 262
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-eqz p1, :cond_2

    .line 263
    new-instance v0, Lcn/nubia/camera/q/m$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/m$5;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/a;->setUnClickableListener(Lcom/android/common/ui/a$b;)V

    :cond_2
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->V()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcn/nubia/camera/q/m;->v:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/q/m;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->s:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/q/m;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->t:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/q/m;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->n:Landroid/view/View;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f080164

    .line 323
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/q/m$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/m$6;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcn/nubia/camera/q/m;->r:Z

    return p0
.end method

.method private n()V
    .locals 16

    move-object/from16 v10, p0

    .line 356
    iget-object v0, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 360
    iget-object v0, v10, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 361
    iget-object v0, v10, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 362
    iget-object v0, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 365
    :cond_1
    iget-object v0, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    const/4 v12, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v12, :cond_3

    .line 371
    iget-boolean v5, v10, Lcn/nubia/camera/q/m;->p:Z

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    :goto_1
    const/4 v13, 0x4

    if-ne v0, v3, :cond_5

    .line 374
    iget-object v0, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/g;

    invoke-virtual {v0}, Lcom/android/common/ui/g;->a()I

    move-result v0

    const v6, 0x7f0902ba

    if-ne v0, v6, :cond_4

    .line 375
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v11

    move v14, v0

    goto :goto_2

    :cond_4
    move v14, v1

    :goto_2
    move v15, v4

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    .line 379
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v6

    mul-int v7, v11, v0

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    sub-int/2addr v0, v3

    div-int/2addr v6, v0

    move v14, v1

    move v15, v6

    goto :goto_3

    .line 383
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v0

    mul-int/lit8 v6, v11, 0x5

    sub-int/2addr v0, v6

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/2addr v0, v13

    move v15, v0

    move v14, v1

    .line 389
    :goto_3
    iget-object v0, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 390
    iget-object v0, v10, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/q/m;->X()V

    if-eqz v5, :cond_8

    move v0, v4

    .line 394
    :goto_4
    iget-object v1, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 395
    iget-object v1, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/g;

    invoke-virtual {v1, v4}, Lcom/android/common/ui/g;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 397
    :cond_7
    iget-object v1, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v6, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v2, v14

    move v3, v11

    move v4, v15

    move-object v5, v6

    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/q/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V

    goto/16 :goto_8

    .line 399
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/q/m;->m()V

    .line 401
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, v10, Lcn/nubia/camera/q/m;->j:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    .line 402
    invoke-virtual {v0, v4}, Lcom/android/common/ui/g;->a(I)V

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    :goto_5
    if-ge v1, v13, :cond_9

    .line 405
    iget-object v2, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v2, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/g;

    invoke-virtual {v2, v4}, Lcom/android/common/ui/g;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v13

    .line 408
    :goto_6
    iget-object v2, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 409
    iget-object v2, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/g;

    invoke-virtual {v2, v3}, Lcom/android/common/ui/g;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 411
    :cond_a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 413
    iget-object v1, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v1, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v2, v14

    move v3, v11

    move v4, v15

    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/q/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V

    .line 417
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    :goto_7
    iget-object v0, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_b

    .line 419
    iget-object v0, v10, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 421
    :cond_b
    iget-object v1, v10, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 425
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int/lit8 v7, v0, 0x5

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v9, v10, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v0, p0

    move v2, v14

    move v3, v11

    move v4, v15

    move-object v5, v6

    .line 421
    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/q/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V

    :goto_8
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->s()Z

    move-result p0

    return p0
.end method

.method private o()V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    move-object v0, p0

    .line 657
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/q/m;->a(ZJJ)V

    const/4 v0, 0x0

    .line 658
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Y()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/q/m;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/q/m;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method private r()V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x64

    move-object v0, p0

    .line 662
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/q/m;->b(ZJJ)V

    const/4 v0, 0x1

    .line 663
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->W()Z

    move-result p0

    return p0
.end method

.method private s()Z
    .locals 5

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 675
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/g;

    .line 676
    invoke-virtual {v2}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v2}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/common/ui/a;

    if-eqz v3, :cond_1

    .line 678
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/q/m;->W()Z

    move-result v3

    if-nez v3, :cond_1

    .line 679
    invoke-virtual {v2}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/common/ui/a;

    check-cast v2, Lcom/android/common/ui/a;

    invoke-virtual {v2}, Lcom/android/common/ui/a;->d()V

    goto :goto_0

    :cond_2
    return v1
.end method

.method static synthetic s(Lcn/nubia/camera/q/m;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->S()Z

    move-result p0

    return p0
.end method

.method static synthetic t(Lcn/nubia/camera/q/m;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->u:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/q/m;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/camera/q/m;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->U()V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 927
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 928
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcn/nubia/camera/q/m$10;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/m$10;-><init>(Lcn/nubia/camera/q/m;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 1080
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 1081
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/an/a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 0

    .line 771
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->c()V

    .line 772
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->d()V

    .line 773
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->e()V

    return-void
.end method

.method public a(Lcn/nubia/camera/q/m$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1103
    iget-object v0, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->r:Z

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->hashCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/q/m$a;->a_(I)V

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->hashCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/q/m$a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/q/m$b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1145
    iget-object v0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 573
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p0, p4, p5, p2, p3}, Lcn/nubia/camera/q/m;->b(JJ)V

    goto :goto_2

    .line 576
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->y()V

    .line 578
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->S()Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_4

    .line 579
    iget-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/common/ui/g;

    .line 580
    invoke-virtual {p3}, Lcom/android/common/ui/g;->a()I

    move-result p4

    const p5, 0x7f090153

    if-eq p4, p5, :cond_3

    .line 581
    invoke-virtual {p3}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    const/16 p2, 0x52

    if-eq p1, p2, :cond_0

    const/16 p2, 0x55

    if-eq p1, p2, :cond_0

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0x50

    if-eq p1, p2, :cond_0

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_0

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 735
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->s()Z

    return v0

    .line 738
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->J()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcn/nubia/camera/q/m$a;)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcn/nubia/camera/q/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcn/nubia/camera/q/m$b;)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcn/nubia/camera/q/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 610
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p1, "TopBarFragment"

    const-string v0, "Can\'t update topbar list on no-ui thread"

    .line 611
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 615
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    goto :goto_3

    .line 617
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 618
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v2

    .line 619
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 620
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    if-nez v2, :cond_5

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    .line 628
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->e(Landroid/view/View;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZJJ)V
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 553
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p0, p4, p5, p2, p3}, Lcn/nubia/camera/q/m;->a(JJ)V

    goto :goto_2

    .line 555
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->y()V

    .line 556
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->S()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 558
    iget-object p1, p0, Lcn/nubia/camera/q/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/common/ui/g;

    .line 559
    invoke-virtual {p3}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 698
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-boolean v3, p0, Lcn/nubia/camera/q/m;->r:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_1
    invoke-static {v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b_(I)V
    .locals 0

    .line 648
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    if-nez p1, :cond_0

    .line 650
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->o()V

    goto :goto_0

    .line 652
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->r()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 777
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 781
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    .line 782
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    cmp-long v0, v1, v3

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 783
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->L()Z

    move-result v0

    if-nez v0, :cond_4

    .line 784
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_manual_cct"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_4

    .line 785
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v2, :cond_2

    .line 787
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v2, :cond_2

    .line 788
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v2, :cond_4

    .line 789
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 798
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    goto :goto_1

    .line 790
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    .line 791
    invoke-virtual {v2}, Lcom/android/common/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 790
    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    .line 792
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    invoke-virtual {v0}, Lcom/android/common/ui/a;->f()V

    .line 795
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    .line 796
    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 826
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 831
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v1, -0x1

    .line 832
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 833
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/z/b;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 834
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 835
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->M()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 839
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    .line 840
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    goto :goto_1

    .line 836
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    .line 837
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    .line 842
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/q/m;->i:Lcom/android/common/ui/a;

    instance-of v1, v0, Lcn/nubia/camera/extendedUI/e;

    if-eqz v1, :cond_4

    .line 843
    check-cast v0, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/e;->c()V

    :cond_4
    :goto_2
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 711
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 712
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-boolean v3, p0, Lcn/nubia/camera/q/m;->r:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/camera/q/m;->l:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/q/m;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_1
    invoke-static {v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/q/m;->c:Lcom/android/common/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g_()V
    .locals 2

    .line 747
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 594
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 599
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    .line 600
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/m;->b:Lcom/android/common/ui/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 601
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 757
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 112
    iget-boolean p3, p0, Lcn/nubia/camera/q/m;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0050

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/m;->d(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/q/i;

    invoke-virtual {p2, p0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/q/j$b;)V

    .line 117
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/q/i;

    invoke-virtual {p2}, Lcn/nubia/camera/q/i;->L()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/q/m;->q:Lcn/nubia/camera/af/a;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/q/j$b;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->d:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 533
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 534
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->P()V

    .line 535
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->R()V

    .line 536
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->V()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 517
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 518
    iget-boolean v0, p0, Lcn/nubia/camera/q/m;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->O()V

    .line 520
    invoke-direct {p0}, Lcn/nubia/camera/q/m;->Q()V

    const/4 v0, 0x1

    .line 521
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    .line 522
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->d()V

    .line 523
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->c()V

    .line 524
    invoke-virtual {p0}, Lcn/nubia/camera/q/m;->e()V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 870
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    .line 875
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/m;->a(Z)V

    return-void
.end method
