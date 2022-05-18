.class public Lcn/nubia/camera/dualcameracalibration/j;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/k/x;

.field private l:Lcn/nubia/camera/k/ah;

.field private m:Lcn/nubia/camera/dualcameracalibration/h;

.field private n:Lcn/nubia/camera/q/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 28
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/e;

    invoke-direct {v0}, Lcn/nubia/camera/dualcameracalibration/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/j;->l:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 28
    new-instance p1, Lcn/nubia/camera/dualcameracalibration/e;

    invoke-direct {p1}, Lcn/nubia/camera/dualcameracalibration/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/j;->l:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/j;)Lcn/nubia/camera/dualcameracalibration/h;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/j;->m:Lcn/nubia/camera/dualcameracalibration/h;

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/dualcameracalibration/j;
    .locals 2

    .line 109
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/dualcameracalibration/j;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a9

    .line 85
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 86
    new-instance v3, Lcom/android/common/ui/g;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lcn/nubia/camera/dualcameracalibration/j$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/dualcameracalibration/j$1;-><init>(Lcn/nubia/camera/dualcameracalibration/j;)V

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 97
    new-instance v2, Lcom/android/common/ui/g;

    invoke-direct {v2, v4, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcn/nubia/camera/dualcameracalibration/j$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/j$2;-><init>(Lcn/nubia/camera/dualcameracalibration/j;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/j;->k:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    .line 70
    invoke-static {p1, v0, v1, v2}, Lcn/nubia/camera/dualcameracalibration/f;->a(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/j;->k:Lcn/nubia/camera/k/x;

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/j;->l:Lcn/nubia/camera/k/ah;

    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/j;->k:Lcn/nubia/camera/k/x;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 74
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/j;->l:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->q()V

    return-void
.end method

.method protected c()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 44
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/h;->e()Lcn/nubia/camera/dualcameracalibration/h;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/j;->m:Lcn/nubia/camera/dualcameracalibration/h;

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/j;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/j;->n:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/j;->m:Lcn/nubia/camera/dualcameracalibration/h;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/dualcameracalibration/i;

    invoke-direct {v1}, Lcn/nubia/camera/dualcameracalibration/i;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/dualcameracalibration/i;)V

    :cond_0
    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/j;->n:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/j;->m:Lcn/nubia/camera/dualcameracalibration/h;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/j;->l:Lcn/nubia/camera/k/ah;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    return-void
.end method
