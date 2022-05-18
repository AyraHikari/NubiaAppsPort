.class public Lcn/nubia/camera/o/e;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private final k:Ljava/lang/String;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/k/x;

.field private n:Lcn/nubia/camera/o/c;

.field private o:Lcn/nubia/camera/o/h;

.field private p:Lcom/android/common/ui/a;

.field private q:Lcn/nubia/camera/extendedUI/g;

.field private r:Lcom/android/common/c/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const-string v0, "ElectronicFnoMemberFragment"

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/o/e;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    .line 58
    new-instance v1, Lcn/nubia/camera/o/h;

    invoke-direct {v1}, Lcn/nubia/camera/o/h;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    .line 133
    iput-object v0, p0, Lcn/nubia/camera/o/e;->r:Lcom/android/common/c/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const-string p1, "ElectronicFnoMemberFragment"

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/o/e;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcn/nubia/camera/o/h;

    invoke-direct {v0}, Lcn/nubia/camera/o/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    .line 133
    iput-object p1, p0, Lcn/nubia/camera/o/e;->r:Lcom/android/common/c/a$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/o/e;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/o/e;->r:Lcom/android/common/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/o/e;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/camera/o/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcn/nubia/camera/o/e$1;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/camera/o/e$1;-><init>(Lcn/nubia/camera/o/e;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080165

    .line 171
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 172
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    const v2, 0x7f09004b

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 178
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 185
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/o/e;)Lcom/android/common/c/a$a;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/camera/o/e;->r:Lcom/android/common/c/a$a;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/o/h;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/o/c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/o/e;
    .locals 2

    .line 73
    new-instance v0, Lcn/nubia/camera/o/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/o/e;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/e;->a(Ljava/util/ArrayList;)V

    .line 126
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/e;->d(Ljava/util/ArrayList;)V

    .line 127
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/e;->b(Ljava/util/ArrayList;)V

    .line 129
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/e;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 197
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/o/e;->m:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcn/nubia/camera/o/f;

    .line 200
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 201
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/o/f;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/o/e;->m:Lcn/nubia/camera/k/x;

    .line 206
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    iget-object v8, p0, Lcn/nubia/camera/o/e;->m:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/o/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    invoke-virtual {p1}, Lcn/nubia/camera/o/h;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/o/e;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    .line 80
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 82
    invoke-static {}, Lcn/nubia/camera/o/c;->d()Lcn/nubia/camera/o/c;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    const v2, 0x7f09014e

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->c(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    .line 85
    iget-object v1, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 86
    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v2, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/a;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v2, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/q/g;)V

    .line 89
    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v2, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/q/g;)V

    .line 90
    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/q/g;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcn/nubia/camera/o/c;->j()V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/c;->b(Lcn/nubia/camera/q/g;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/c;->b(Lcn/nubia/camera/q/g;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/o/c;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 6

    .line 217
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 218
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 222
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 226
    invoke-virtual {p0, v5}, Lcn/nubia/camera/o/e;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->p:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/o/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 232
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_3

    const-string v0, "pref_camera_anti_shake"

    .line 233
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 235
    iget-object v1, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 236
    iget-object v1, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/o/e$2;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/o/e$2;-><init>(Lcn/nubia/camera/o/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->q:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/o/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 255
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/o/e;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 116
    iget-boolean v0, p0, Lcn/nubia/camera/o/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/o/e;->r:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 108
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 109
    iget-boolean v0, p0, Lcn/nubia/camera/o/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/e;->n:Lcn/nubia/camera/o/c;

    iget-object v1, p0, Lcn/nubia/camera/o/e;->o:Lcn/nubia/camera/o/h;

    invoke-virtual {p0}, Lcn/nubia/camera/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/h;Lcn/nubia/k/a/a;)V

    return-void
.end method
