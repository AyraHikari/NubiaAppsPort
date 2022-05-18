.class public Lcn/nubia/camera/elefnovideo/c;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/z;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field private b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private i:Lcom/android/common/ui/a/b;

.field private j:Lcom/android/common/ui/RotateImageView;

.field private k:Landroid/view/View;

.field private l:Lcn/nubia/camera/q/c;

.field private m:Lcn/nubia/camera/elefnovideo/g;

.field private n:Lcn/nubia/camera/elefnovideo/a;

.field private o:Lcn/nubia/camera/elefnovideo/i;

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->l:Lcn/nubia/camera/q/c;

    .line 365
    new-instance v0, Lcn/nubia/camera/elefnovideo/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/c$2;-><init>(Lcn/nubia/camera/elefnovideo/c;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/elefnovideo/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->l:Lcn/nubia/camera/q/c;

    .line 365
    new-instance v0, Lcn/nubia/camera/elefnovideo/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/c$2;-><init>(Lcn/nubia/camera/elefnovideo/c;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 69
    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/c;->o:Lcn/nubia/camera/elefnovideo/i;

    .line 70
    new-instance p2, Lcn/nubia/camera/elefnovideo/g;

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->o:Lcn/nubia/camera/elefnovideo/i;

    invoke-direct {p2, p1, v0}, Lcn/nubia/camera/elefnovideo/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    .line 71
    invoke-virtual {p2, p0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/bb/z;)V

    return-void
.end method

.method private J()I
    .locals 3

    .line 406
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_overlay_image_number"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/elefnovideo/i;)Lcn/nubia/camera/elefnovideo/c;
    .locals 1

    .line 75
    new-instance v0, Lcn/nubia/camera/elefnovideo/c;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/elefnovideo/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/elefnovideo/i;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/c;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/elefnovideo/g;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/elefnovideo/c;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/c;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .line 135
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    const v0, 0x7f090234

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/content/res/Resources;)V

    const v0, 0x7f09036e

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 139
    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f09036f

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->e(Landroid/view/View;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09036c

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->k:Landroid/view/View;

    const v0, 0x7f09024a

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    .line 148
    new-instance v0, Lcn/nubia/camera/elefnovideo/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/c$1;-><init>(Lcn/nubia/camera/elefnovideo/c;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0134

    goto :goto_0

    :cond_1
    const p1, 0x7f0f03e8

    goto :goto_0

    :cond_2
    const p1, 0x7f0f03e9

    goto :goto_0

    :cond_3
    const p1, 0x7f0f0320

    goto :goto_0

    :cond_4
    const p1, 0x7f0f03e6

    goto :goto_0

    :cond_5
    const p1, 0x7f0f0133

    :goto_0
    if-eqz p1, :cond_6

    .line 443
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private n()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->d()V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 376
    monitor-exit p0

    return-void

    .line 378
    :cond_0
    :try_start_1
    new-instance v0, Lcn/nubia/camera/elefnovideo/a;

    invoke-direct {v0}, Lcn/nubia/camera/elefnovideo/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    .line 379
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/a;->a(Z)V

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/a;->a(I)V

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/a;->b(Z)V

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/a;->a(Lcn/nubia/camera/ad/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 387
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/a;->a()V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()Z
    .locals 4

    const v0, 0x7f0f01ca

    .line 394
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01ce

    .line 395
    invoke-virtual {p0, v1}, Lcn/nubia/camera/elefnovideo/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->u()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_camera_elefno_video_color"

    invoke-virtual {v2, v3, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 3

    const v0, 0x7f0f01e8

    .line 400
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_camera_image_registration"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 402
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    const-string p1, "EleFnoVideoFragment"

    const-string p2, "onCameraInitDone"

    .line 124
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->p()V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 1

    const-string p1, "EleFnoVideoFragment"

    const-string v0, "onCameraClose"

    .line 130
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->q()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 330
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    const-string v1, "EleFnoVideoFragment"

    if-nez v0, :cond_0

    const-string v0, "ignore click: VideoRecordManager is null"

    .line 212
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v4, :cond_1

    .line 217
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->a()V

    .line 220
    iput-wide v2, p0, Lcn/nubia/camera/elefnovideo/c;->p:J

    goto :goto_0

    .line 222
    :cond_1
    iget-wide v4, p0, Lcn/nubia/camera/elefnovideo/c;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    .line 223
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v4, :cond_3

    .line 224
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    goto :goto_0

    .line 227
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore click: state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v4}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", record time "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcn/nubia/camera/elefnovideo/c;->p:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoVideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "ui_change_recording"

    .line 266
    invoke-virtual {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->c(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->e()V

    .line 270
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 p1, 0x1

    .line 271
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->e(Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 279
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->n()V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 282
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->o()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStopEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoVideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 307
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 p1, 0x1

    .line 308
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->e(Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onVideoStartBegin"

    .line 249
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 250
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->d(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 253
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    const v2, 0x7f080338

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 258
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 259
    invoke-direct {p0, v1}, Lcn/nubia/camera/elefnovideo/c;->e(Z)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->f(I)V

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 3

    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onVideoStopStart"

    .line 288
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->D()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    const-string v0, "ui_change_recording"

    .line 291
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->c(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/c;->a:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->j:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->i:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->e()V

    return-void
.end method

.method protected i_()V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    .line 239
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    .line 240
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 4

    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onDisableUIs"

    .line 343
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 344
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->f(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcn/nubia/camera/d/d;

    sget-object v2, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->n:Lcn/nubia/camera/elefnovideo/a;

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 82
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/c;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/c;->d(Landroid/view/View;)V

    .line 87
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/c;->l:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 94
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->l:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 113
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onPause"

    .line 116
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->q()V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/c;->m:Lcn/nubia/camera/elefnovideo/g;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g;->e()V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->r_()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 103
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onResume"

    .line 106
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/c;->p()V

    return-void
.end method

.method public q_()V
    .locals 0

    return-void
.end method

.method public r_()V
    .locals 2

    const-string v0, "EleFnoVideoFragment"

    const-string v1, "onEnableUIs"

    .line 336
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 337
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/c;->e(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method
