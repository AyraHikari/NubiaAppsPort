.class public Lcn/nubia/camera/az/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/nubiaimage3d/j$a;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private A:Lcn/nubia/k/a/a;

.field private B:Lcn/nubia/camera/q/c;

.field private C:Lcn/nubia/camera/k/o;

.field private a:Z

.field private b:Landroid/util/Size;

.field private c:I

.field private i:Lcn/nubia/nubiaimage3d/j;

.field private j:Lcn/nubia/nubiaimage3d/g;

.field private k:I

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ProgressBar;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:J

.field private w:I

.field private x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private y:Z

.field private z:Lcn/nubia/camera/az/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 132
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcn/nubia/camera/az/a;->a:Z

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    .line 79
    iput-object v1, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    .line 80
    iput v0, p0, Lcn/nubia/camera/az/a;->k:I

    .line 82
    iput-object v1, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    .line 88
    iput-object v1, p0, Lcn/nubia/camera/az/a;->n:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcn/nubia/camera/az/a;->o:Landroid/widget/ProgressBar;

    .line 90
    iput v0, p0, Lcn/nubia/camera/az/a;->p:I

    .line 92
    iput-boolean v0, p0, Lcn/nubia/camera/az/a;->q:Z

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/az/a;->r:Z

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/az/a;->s:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcn/nubia/camera/az/a;->t:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 98
    iput-wide v2, p0, Lcn/nubia/camera/az/a;->v:J

    .line 99
    iput v0, p0, Lcn/nubia/camera/az/a;->w:I

    .line 101
    iput-object v1, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 102
    iput-boolean v0, p0, Lcn/nubia/camera/az/a;->y:Z

    .line 104
    iput-object v1, p0, Lcn/nubia/camera/az/a;->z:Lcn/nubia/camera/az/e;

    .line 105
    iput-object v1, p0, Lcn/nubia/camera/az/a;->A:Lcn/nubia/k/a/a;

    .line 107
    iput-object v1, p0, Lcn/nubia/camera/az/a;->B:Lcn/nubia/camera/q/c;

    .line 109
    new-instance v0, Lcn/nubia/camera/az/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/az/a$1;-><init>(Lcn/nubia/camera/az/a;)V

    iput-object v0, p0, Lcn/nubia/camera/az/a;->C:Lcn/nubia/camera/k/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcn/nubia/camera/az/a;->a:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    .line 80
    iput p1, p0, Lcn/nubia/camera/az/a;->k:I

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    .line 88
    iput-object v0, p0, Lcn/nubia/camera/az/a;->n:Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/az/a;->o:Landroid/widget/ProgressBar;

    .line 90
    iput p1, p0, Lcn/nubia/camera/az/a;->p:I

    .line 92
    iput-boolean p1, p0, Lcn/nubia/camera/az/a;->q:Z

    .line 93
    iput-boolean p1, p0, Lcn/nubia/camera/az/a;->r:Z

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/az/a;->s:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/az/a;->t:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 98
    iput-wide v1, p0, Lcn/nubia/camera/az/a;->v:J

    .line 99
    iput p1, p0, Lcn/nubia/camera/az/a;->w:I

    .line 101
    iput-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 102
    iput-boolean p1, p0, Lcn/nubia/camera/az/a;->y:Z

    .line 104
    iput-object v0, p0, Lcn/nubia/camera/az/a;->z:Lcn/nubia/camera/az/e;

    .line 105
    iput-object v0, p0, Lcn/nubia/camera/az/a;->A:Lcn/nubia/k/a/a;

    .line 107
    iput-object v0, p0, Lcn/nubia/camera/az/a;->B:Lcn/nubia/camera/q/c;

    .line 109
    new-instance p1, Lcn/nubia/camera/az/a$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/az/a$1;-><init>(Lcn/nubia/camera/az/a;)V

    iput-object p1, p0, Lcn/nubia/camera/az/a;->C:Lcn/nubia/camera/k/o;

    return-void
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 449
    sget v1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget v1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget v1, Lcn/nubia/d/a;->ag:I

    const-string v2, "image3d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget v1, Lcn/nubia/d/a;->j:I

    iget v2, p0, Lcn/nubia/camera/az/a;->w:I

    invoke-static {v2}, Lcn/nubia/d/a;->d(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 454
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 458
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/az/a;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 467
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 469
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/az/a;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->j()V

    return-void
.end method

.method private b(Z)V
    .locals 1

    const-string v0, "ui_change_triaxial"

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/a;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static d()Lcn/nubia/camera/az/a;
    .locals 2

    .line 189
    new-instance v0, Lcn/nubia/camera/az/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/az/a;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090354

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f09027c

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f090350

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/camera/az/a;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x190

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f090210

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/az/a;->n:Landroid/widget/TextView;

    const v0, 0x7f090351

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 397
    new-instance v1, Lcn/nubia/camera/az/a$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/az/a$3;-><init>(Lcn/nubia/camera/az/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    const v0, 0x7f090353

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 415
    invoke-virtual {p0, p1}, Lcn/nubia/camera/az/a;->a(Landroid/view/View;)V

    .line 416
    iget-object p1, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/az/a;->a(Landroid/view/View;)V

    .line 417
    iget-object p1, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/az/a;->a(Landroid/view/View;)V

    .line 419
    iget-object p1, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 15

    monitor-enter p0

    :try_start_0
    const-string v0, "ui_change_triaxial"

    .line 275
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/a;->c(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, v0}, Lcn/nubia/camera/az/a;->b(Z)V

    .line 281
    iput-boolean v1, p0, Lcn/nubia/camera/az/a;->r:Z

    .line 282
    iget-boolean v3, p0, Lcn/nubia/camera/az/a;->q:Z

    if-eqz v3, :cond_1

    .line 283
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->n()V

    .line 284
    iget-object v3, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    invoke-virtual {v3}, Lcn/nubia/nubiaimage3d/j;->b()V

    .line 285
    iget-object v3, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    iget v4, p0, Lcn/nubia/camera/az/a;->w:I

    invoke-virtual {v3, v4}, Lcn/nubia/nubiaimage3d/g;->b(I)V

    .line 286
    iget-object v3, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    iget-object v4, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    invoke-virtual {v4}, Lcn/nubia/nubiaimage3d/j;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/nubiaimage3d/g;->a(I)V

    .line 287
    iget-object v3, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    iget-object v4, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    invoke-virtual {v4}, Lcn/nubia/nubiaimage3d/j;->d()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcn/nubia/nubiaimage3d/g;->c(I)V

    .line 288
    iget-object v3, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    invoke-virtual {v3}, Lcn/nubia/nubiaimage3d/g;->b()V

    .line 289
    iget-object v3, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    invoke-virtual {v3}, Lcn/nubia/nubiaimage3d/g;->c()[B

    move-result-object v8

    .line 294
    iget-object v3, p0, Lcn/nubia/camera/az/a;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v3, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/af/a;->J:Lcn/nubia/camera/af/a;

    invoke-virtual {v3}, Lcn/nubia/camera/af/a;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/az/a;->t:Ljava/lang/String;

    .line 299
    iget-wide v2, p0, Lcn/nubia/camera/az/a;->v:J

    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/az/a;->s:Ljava/lang/String;

    .line 301
    new-instance v2, Lcn/nubia/k/b/f;

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 302
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/camera/az/a;->A:Lcn/nubia/k/a/a;

    iget-wide v3, p0, Lcn/nubia/camera/az/a;->v:J

    .line 303
    invoke-direct {p0, v3, v4}, Lcn/nubia/camera/az/a;->a(J)Landroid/util/SparseArray;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/az/a;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 305
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->l()Landroid/content/ContentValues;

    move-result-object v12

    iget v13, p0, Lcn/nubia/camera/az/a;->w:I

    const/4 v14, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v14}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    .line 306
    iget-object v3, p0, Lcn/nubia/camera/az/a;->A:Lcn/nubia/k/a/a;

    invoke-virtual {v3, v2, v0}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    .line 308
    iput-boolean v1, p0, Lcn/nubia/camera/az/a;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()Landroid/content/ContentValues;
    .locals 5

    .line 423
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 424
    iget-object v1, p0, Lcn/nubia/camera/az/a;->t:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/az/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget v1, p0, Lcn/nubia/camera/az/a;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    iget-wide v1, p0, Lcn/nubia/camera/az/a;->v:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    iget v1, p0, Lcn/nubia/camera/az/a;->w:I

    const-string v2, "height"

    const-string v3, "width"

    if-eqz v1, :cond_1

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    iget-object v1, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 432
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    iget-object v1, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 440
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 441
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    return-object v0
.end method

.method private m()V
    .locals 2

    .line 494
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p2, "TriaxialFragment"

    const-string p3, "onPreviewAreaUpdate"

    .line 503
    invoke-static {p2, p3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p2, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_0

    .line 505
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 506
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 507
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p1

    .line 508
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p4

    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070078

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 509
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 510
    iget-object p1, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object p1, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/az/e;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcn/nubia/camera/az/a;->z:Lcn/nubia/camera/az/e;

    .line 207
    iput-object p2, p0, Lcn/nubia/camera/az/a;->A:Lcn/nubia/k/a/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([B)V
    .locals 4

    .line 314
    array-length v0, p1

    iget v1, p0, Lcn/nubia/camera/az/a;->c:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->y:Z

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 316
    array-length v1, p1

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v1, 0x0

    .line 317
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const v2, 0x80e8

    .line 319
    iget v3, p0, Lcn/nubia/camera/az/a;->k:I

    mul-int/2addr v3, v2

    int-to-long v2, v3

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 320
    iget v2, p0, Lcn/nubia/camera/az/a;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/camera/az/a;->k:I

    .line 321
    iget-object v2, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    const/16 v3, 0x1f40

    invoke-virtual {v2, v0, p1, v3}, Lcn/nubia/nubiaimage3d/g;->a(Landroid/media/MediaCodec$BufferInfo;[BI)V

    .line 322
    iget p1, p0, Lcn/nubia/camera/az/a;->k:I

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/az/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/az/a$2;-><init>(Lcn/nubia/camera/az/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/az/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 332
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/camera/az/a;->y:Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 523
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->r:Z

    if-nez v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v1, v2, :cond_1

    .line 526
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v1, v2, :cond_1

    .line 527
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/az/a;->z:Lcn/nubia/camera/az/e;

    iget-object v1, p0, Lcn/nubia/camera/az/a;->C:Lcn/nubia/camera/k/o;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcn/nubia/camera/az/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 532
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->j()V

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/az/a;->n:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/az/a;->l:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->j()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 476
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .line 481
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ui_change_triaxial"

    .line 241
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/a;->d(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/az/a;->x:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 246
    :cond_0
    invoke-direct {p0, v2}, Lcn/nubia/camera/az/a;->b(Z)V

    .line 247
    iput-boolean v1, p0, Lcn/nubia/camera/az/a;->r:Z

    .line 248
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->q:Z

    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->m()V

    .line 251
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/al/c;->c()I

    move-result v3

    .line 250
    invoke-static {v0, v3}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/az/a;->w:I

    .line 253
    iput-boolean v1, p0, Lcn/nubia/camera/az/a;->q:Z

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/az/a;->z:Lcn/nubia/camera/az/e;

    invoke-virtual {v0}, Lcn/nubia/camera/az/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    .line 255
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/camera/az/a;->c:I

    .line 257
    iput v2, p0, Lcn/nubia/camera/az/a;->k:I

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/az/a;->v:J

    .line 260
    new-instance v0, Lcn/nubia/nubiaimage3d/g;

    invoke-direct {v0}, Lcn/nubia/nubiaimage3d/g;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    .line 266
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/az/a;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcn/nubia/nubiaimage3d/g;->a(Ljava/lang/String;II)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/az/a;->j:Lcn/nubia/nubiaimage3d/g;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/g;->a()V

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/j;->a()V

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/az/a;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcn/nubia/camera/az/a;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/az/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .line 217
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/camera/d/d;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcn/nubia/camera/az/a;->y:Z

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->q:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->j()V

    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 160
    iget-boolean p1, p0, Lcn/nubia/camera/az/a;->d:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 139
    iget-boolean p3, p0, Lcn/nubia/camera/az/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00d8

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Lcn/nubia/camera/az/a;->d(Landroid/view/View;)V

    .line 144
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/az/a;->B:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 151
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/az/a;->B:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->d:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 184
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 185
    invoke-direct {p0}, Lcn/nubia/camera/az/a;->j()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 168
    iget-boolean v0, p0, Lcn/nubia/camera/az/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcn/nubia/nubiaimage3d/j;

    invoke-virtual {p0}, Lcn/nubia/camera/az/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/nubiaimage3d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/az/a;->i:Lcn/nubia/nubiaimage3d/j;

    .line 173
    invoke-virtual {v0, p0}, Lcn/nubia/nubiaimage3d/j;->a(Lcn/nubia/nubiaimage3d/j$a;)V

    :cond_1
    const-string v0, "ui_change_triaxial"

    .line 175
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/a;->c(Ljava/lang/String;)V

    return-void
.end method
