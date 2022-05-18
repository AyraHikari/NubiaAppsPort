.class public Lcn/nubia/camera/dualcameracalibration/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/dualcameracalibration/c$a;
    }
.end annotation


# instance fields
.field private k:Lcn/nubia/camera/dualcameracalibration/b;

.field private l:Lcn/nubia/camera/dualcameracalibration/e;

.field private m:Lcn/nubia/camera/k/x;

.field private n:Lcn/nubia/camera/g/a;

.field private o:Lcn/nubia/camera/dualcameracalibration/c$a;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    .line 44
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/e;

    invoke-direct {v0}, Lcn/nubia/camera/dualcameracalibration/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->p:Z

    .line 92
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->q:Z

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->r:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    .line 44
    new-instance p1, Lcn/nubia/camera/dualcameracalibration/e;

    invoke-direct {p1}, Lcn/nubia/camera/dualcameracalibration/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->p:Z

    .line 92
    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->q:Z

    .line 93
    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->r:Z

    .line 94
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->s:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/c;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/c;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/c;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->q:Z

    return p1
.end method

.method private ae()V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 134
    new-instance v1, Lcn/nubia/camera/g/a;

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/c$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/c$2;-><init>(Lcn/nubia/camera/dualcameracalibration/c;)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/camera/g/a;-><init>(Ljava/util/ArrayList;Lcn/nubia/camera/g/a$a;Lcn/nubia/camera/ad/a;)V

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->n:Lcn/nubia/camera/g/a;

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/g/a;->a(Lcn/nubia/camera/af/b;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/dualcameracalibration/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/c;->o()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/e;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/c$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/c;->o:Lcn/nubia/camera/dualcameracalibration/c$a;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/g/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/c;->n:Lcn/nubia/camera/g/a;

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/dualcameracalibration/c;
    .locals 2

    .line 63
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/dualcameracalibration/c;-><init>(I)V

    return-object v0
.end method

.method private o()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->o:Lcn/nubia/camera/dualcameracalibration/c$a;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcn/nubia/camera/dualcameracalibration/c;->q:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/camera/dualcameracalibration/c;->r:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v1, v4, v2, v3}, Lcn/nubia/camera/dualcameracalibration/c$a;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    iput-boolean v4, p0, Lcn/nubia/camera/dualcameracalibration/c;->r:Z

    .line 123
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->m:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    .line 99
    invoke-static {p1, v0, v1, v2}, Lcn/nubia/camera/dualcameracalibration/f;->a(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->m:Lcn/nubia/camera/k/x;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/c;->m:Lcn/nubia/camera/k/x;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/dualcameracalibration/e;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/e;->q()V

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    new-instance p2, Lcn/nubia/camera/dualcameracalibration/c$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/dualcameracalibration/c$1;-><init>(Lcn/nubia/camera/dualcameracalibration/c;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/dualcameracalibration/e;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method protected c()V
    .locals 4

    const-string v0, "DualCalibrationMemberFragment"

    const-string v1, "onFragmentContentInit"

    .line 67
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/b;->a(Lcn/nubia/camera/dualcameracalibration/e;)Lcn/nubia/camera/dualcameracalibration/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    const-string v1, "com.android.camera.action.DualCalibrationForSale"

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->b:Lcn/nubia/camera/q/b;

    const v1, 0x7f09014d

    .line 72
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f09014e

    .line 74
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/c;->ae()V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    new-instance v1, Lcn/nubia/camera/dualcameracalibration/c$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/dualcameracalibration/c$a;-><init>(Lcn/nubia/camera/dualcameracalibration/c;)V

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->o:Lcn/nubia/camera/dualcameracalibration/c$a;

    .line 80
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/c;->o()V

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isArcSoftRewrite"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->p:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 89
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->k:Lcn/nubia/camera/dualcameracalibration/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->l:Lcn/nubia/camera/dualcameracalibration/e;

    return-object v0
.end method

.method public n()Lcn/nubia/camera/dualcameracalibration/c$a;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c;->o:Lcn/nubia/camera/dualcameracalibration/c$a;

    return-object v0
.end method
