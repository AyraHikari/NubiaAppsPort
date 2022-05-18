.class public Lcn/nubia/camera/ao/j;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/String; = "ProMemberFragment"


# instance fields
.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/ao/h;

.field private n:Lcn/nubia/camera/aj/a/a;

.field private o:Lcom/android/common/ui/a;

.field private p:Lcn/nubia/camera/q/e;

.field private q:Lcom/android/common/ui/a;

.field private r:Lcom/android/common/ui/RotateImageView;

.field private s:Lcom/android/common/ui/k;

.field private t:Lcn/nubia/camera/ao/m;

.field private u:Lcn/nubia/camera/ao/k;

.field private v:Lcn/nubia/camera/m/d;

.field private w:Lcn/nubia/camera/v/b;

.field private x:Lcom/android/common/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    .line 330
    iput-object v0, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    .line 330
    iput-object p1, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    .line 81
    new-instance p1, Lcn/nubia/camera/ao/m;

    invoke-direct {p1}, Lcn/nubia/camera/ao/m;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ao/m;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ao/j;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/ao/j;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method private ae()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 334
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 336
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/ao/j$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/j$3;-><init>(Lcn/nubia/camera/ao/j;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 355
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->q()V

    return-void
.end method

.method private af()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/ao/j$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/j$4;-><init>(Lcn/nubia/camera/ao/j;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method private ag()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ao/j;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->u()Lcom/android/preference/c;

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

    .line 181
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 183
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance p1, Lcn/nubia/camera/q/e;

    iget-object v0, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/ao/j;->p:Lcn/nubia/camera/q/e;

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ao/j;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

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

    .line 190
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/j;->s:Lcom/android/common/ui/k;

    const v1, 0x7f08015c

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 192
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->s:Lcom/android/common/ui/k;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

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

    .line 196
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 198
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 203
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 205
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/j;->r:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0800f5

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 214
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f09012c

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->r:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->b()Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/ao/j;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcn/nubia/camera/ao/j;->ae()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ao/h;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/ao/j;)Lcom/android/common/c/a$a;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/ao/j;
    .locals 2

    .line 366
    new-instance v0, Lcn/nubia/camera/ao/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ao/j;-><init>(I)V

    return-object v0
.end method

.method static synthetic n(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcn/nubia/camera/ao/j;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/j;->a(Ljava/util/ArrayList;)V

    .line 169
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->b(Ljava/util/ArrayList;)V

    .line 170
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->c(Ljava/util/ArrayList;)V

    .line 171
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->g(Ljava/util/ArrayList;)V

    .line 172
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->f(Ljava/util/ArrayList;)V

    .line 173
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->e(Ljava/util/ArrayList;)V

    .line 174
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/j;->d(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static synthetic p(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public N()V
    .locals 1

    .line 379
    invoke-super {p0}, Lcn/nubia/camera/q/i;->N()V

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/h;->d()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    new-instance v4, Lcn/nubia/camera/ao/l;

    .line 229
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/ao/l;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 231
    iget-object p1, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {p1}, Lcn/nubia/camera/ao/m;->q()V

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 385
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(ZJJ)V

    .line 386
    iget-object p1, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method protected ab()V
    .locals 1

    .line 393
    invoke-super {p0}, Lcn/nubia/camera/q/i;->ab()V

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 6

    .line 86
    new-instance v0, Lcn/nubia/camera/m/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->aa()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/m/d;-><init>(Landroid/widget/RelativeLayout;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 88
    invoke-direct {p0}, Lcn/nubia/camera/ao/j;->o()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    .line 89
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    .line 90
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 92
    new-instance v1, Lcn/nubia/camera/aj/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/camera/aj/a/a;-><init>(Lcn/nubia/camera/a/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->n:Lcn/nubia/camera/aj/a/a;

    .line 93
    new-instance v1, Lcn/nubia/camera/ao/k;

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    iget-object v4, p0, Lcn/nubia/camera/ao/j;->n:Lcn/nubia/camera/aj/a/a;

    .line 97
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->P()Lcn/nubia/camera/z/b;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/ao/k;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ao/m;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->u:Lcn/nubia/camera/ao/k;

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->a(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    .line 100
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 102
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->n:Lcn/nubia/camera/aj/a/a;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->u:Lcn/nubia/camera/ao/k;

    iget-object v3, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    iget-object v4, p0, Lcn/nubia/camera/ao/j;->r:Lcom/android/common/ui/RotateImageView;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/ao/h;->a(Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/ao/k;Lcn/nubia/camera/ao/m;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/ao/h;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    const v2, 0x7f09014e

    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ao/h;->a(Lcn/nubia/camera/q/g;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ao/h;->a(Lcn/nubia/camera/q/g;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ao/h;->a(Lcn/nubia/camera/q/g;)V

    .line 108
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/ao/h;->a(Lcn/nubia/camera/q/g;)V

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m$a;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 114
    invoke-direct {p0}, Lcn/nubia/camera/ao/j;->af()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->t:Lcn/nubia/camera/ao/m;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h;->b(Lcn/nubia/camera/q/g;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h;->b(Lcn/nubia/camera/q/g;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ao/h;->b(Lcn/nubia/camera/q/g;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->w:Lcn/nubia/camera/v/b;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcn/nubia/camera/ao/j;->w:Lcn/nubia/camera/v/b;

    .line 130
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->a()V

    .line 133
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/ao/j;->ag()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 371
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->g(Ljava/lang/String;)V

    const-string v0, "pref_histogram_bars_key"

    .line 372
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {p1}, Lcn/nubia/camera/ao/h;->d()V

    :cond_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 8

    .line 408
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    const-string v1, "more_setting_special"

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "pref_mirror_mode_key"

    const-string v4, "pref_intelligent_noise_reduction_key"

    const-string v5, "pref_multi_focus_key"

    const-string v6, "pref_moresetting_picturesize_key"

    const-string v7, "pref_histogram_bars_key"

    .line 411
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 421
    aget-object v4, v1, v3

    const-string v5, "pref_mirror_mode_key"

    .line 422
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 424
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "pref_multi_focus_key"

    .line 425
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->ad()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 427
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    sget-object v5, Lcn/nubia/camera/ao/j;->k:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 434
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 7

    .line 236
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 240
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_selfie_flashmode_key"

    .line 241
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v1, "pref_camera_flashmode_key"

    .line 243
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v1, :cond_1

    .line 246
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 247
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/ao/j$1;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/ao/j$1;-><init>(Lcn/nubia/camera/ao/j;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 255
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->o:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/ao/j;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 256
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 259
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    if-eqz v1, :cond_3

    const-string v1, "pref_camera_delay_shoot_key"

    .line 260
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_2

    .line 262
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 263
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->S()Lcn/nubia/camera/j/b;

    move-result-object v5

    const v6, 0x7f0f01c6

    .line 264
    invoke-virtual {p0, v6}, Lcn/nubia/camera/ao/j;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 266
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/ao/j;->q:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/ao/j;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 270
    :cond_3
    :goto_2
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->s:Lcom/android/common/ui/k;

    if-eqz v1, :cond_4

    const-string v1, "pref_raw_key"

    .line 271
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/j;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_4

    .line 273
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->s:Lcom/android/common/ui/k;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 274
    iget-object v2, p0, Lcn/nubia/camera/ao/j;->s:Lcom/android/common/ui/k;

    new-instance v3, Lcn/nubia/camera/ao/j$2;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/ao/j$2;-><init>(Lcn/nubia/camera/ao/j;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    .line 320
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/m/d;->a(Lcom/android/preference/PreferenceGroup;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->v:Lcn/nubia/camera/m/d;

    invoke-virtual {v1}, Lcn/nubia/camera/m/d;->c()Lcn/nubia/camera/extendedUI/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ao/j;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 325
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_6
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->m:Lcn/nubia/camera/ao/h;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/ao/h;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 155
    iget-boolean v0, p0, Lcn/nubia/camera/ao/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->u:Lcn/nubia/camera/ao/k;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/k;->d()V

    .line 159
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 160
    invoke-virtual {p0}, Lcn/nubia/camera/ao/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/j;->x:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcn/nubia/camera/ao/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/j;->u:Lcn/nubia/camera/ao/k;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/k;->a()V

    return-void
.end method
