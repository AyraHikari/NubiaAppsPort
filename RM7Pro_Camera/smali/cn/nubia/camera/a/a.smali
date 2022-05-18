.class public abstract Lcn/nubia/camera/a/a;
.super Lcn/nubia/camera/a/b;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a/c$a;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/t/b$a;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/a/a$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:J

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcn/nubia/camera/aq/a;

.field private K:Lcn/nubia/camera/ac/b;

.field private L:Lcn/nubia/camera/aq/d;

.field private M:Landroid/view/animation/AlphaAnimation;

.field private N:Z

.field private O:Z

.field private P:Landroid/content/ServiceConnection;

.field public a:Z

.field protected b:Lcn/nubia/camera/an/a;

.field protected c:Lcn/nubia/camera/ae/a;

.field protected final d:Landroid/os/Handler;

.field protected e:Lcn/nubia/camera/t/b;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Z

.field h:Z

.field private i:Lcn/nubia/camera/ad/a;

.field private j:Lcn/nubia/camera/k/h;

.field private k:Lcom/android/common/c/e;

.field private l:Landroid/view/SurfaceView;

.field private m:Lcn/nubia/camera/al/b;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:I

.field private s:Lcn/nubia/camera/av/b;

.field private t:Lcom/android/captureCamera/IWatermarkTypeSync;

.field private u:Lcn/nubia/camera/a/c;

.field private v:Lcn/nubia/camera/g;

.field private w:Landroid/database/ContentObserver;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/a/b;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->a:Z

    .line 136
    new-instance v1, Lcn/nubia/camera/a/a$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$a;-><init>(Lcn/nubia/camera/a/a;)V

    iput-object v1, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcn/nubia/camera/a/a;->e:Lcn/nubia/camera/t/b;

    .line 140
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    .line 144
    iput-object v1, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    .line 147
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->p:Z

    const-wide/16 v2, 0x0

    .line 148
    iput-wide v2, p0, Lcn/nubia/camera/a/a;->q:J

    const/4 v4, -0x1

    .line 149
    iput v4, p0, Lcn/nubia/camera/a/a;->r:I

    .line 151
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->g:Z

    .line 154
    iput-object v1, p0, Lcn/nubia/camera/a/a;->t:Lcom/android/captureCamera/IWatermarkTypeSync;

    .line 158
    iput-object v1, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    .line 159
    iput-object v1, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    .line 160
    iput-wide v2, p0, Lcn/nubia/camera/a/a;->y:J

    .line 161
    iput-wide v2, p0, Lcn/nubia/camera/a/a;->z:J

    .line 162
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->A:Z

    .line 163
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->B:Z

    .line 164
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->C:Z

    .line 165
    iput-wide v2, p0, Lcn/nubia/camera/a/a;->D:J

    .line 166
    iput-wide v2, p0, Lcn/nubia/camera/a/a;->E:J

    .line 168
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    .line 169
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->G:Z

    .line 304
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->H:Z

    .line 984
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->h:Z

    .line 1096
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->I:Z

    .line 1383
    iput-object v1, p0, Lcn/nubia/camera/a/a;->J:Lcn/nubia/camera/aq/a;

    .line 1384
    iput-object v1, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    .line 1502
    new-instance v1, Lcn/nubia/camera/a/a$9;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$9;-><init>(Lcn/nubia/camera/a/a;)V

    iput-object v1, p0, Lcn/nubia/camera/a/a;->L:Lcn/nubia/camera/aq/d;

    const/4 v1, 0x1

    .line 1662
    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->N:Z

    .line 1663
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    .line 1681
    new-instance v0, Lcn/nubia/camera/a/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a/a$2;-><init>(Lcn/nubia/camera/a/a;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->P:Landroid/content/ServiceConnection;

    return-void
.end method

.method private W()F
    .locals 3

    .line 242
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/camera/aq/b;->a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/a/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_moresetting_picturesize_key"

    .line 250
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    sget-object v1, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->H()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    invoke-static {}, Lcn/nubia/camera/ba/a;->H()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_1
    const v0, 0x3faaaaab

    return v0
.end method

.method private X()V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->G:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lcn/nubia/camera/q/j;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/q/j;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    const/4 v1, 0x1

    .line 264
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/j;->a(Z)V

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/a/a;->L:Lcn/nubia/camera/aq/d;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    .line 266
    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->G:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/a/a;->J:Lcn/nubia/camera/aq/a;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 271
    new-instance v0, Lcn/nubia/camera/al/b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/al/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->m:Lcn/nubia/camera/al/b;

    .line 272
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/al/b;->a()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/al/c;)V

    .line 274
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->af()V

    .line 275
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aw/a;)V

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->x()V

    return-void
.end method

.method private Z()Z
    .locals 2

    .line 518
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic a(Lcn/nubia/camera/a/a;J)J
    .locals 0

    .line 111
    iput-wide p1, p0, Lcn/nubia/camera/a/a;->D:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/a/a;Lcn/nubia/camera/an/a;)Landroid/graphics/Rect;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/an/a;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcn/nubia/camera/an/a;)Landroid/graphics/Rect;
    .locals 5

    .line 765
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 767
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 768
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->b()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 770
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->b()I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method static synthetic a(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/k/h;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/a/a;Lcom/android/captureCamera/IWatermarkTypeSync;)Lcom/android/captureCamera/IWatermarkTypeSync;
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/camera/a/a;->t:Lcom/android/captureCamera/IWatermarkTypeSync;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .line 1534
    iget-object v0, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    .line 1537
    new-instance v1, Lcn/nubia/camera/a/a$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$10;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1557
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 1558
    iget-object v0, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1559
    iget-object v0, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1561
    iget-object p1, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;II)V
    .locals 3

    if-eq p2, p3, :cond_0

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {v0}, Lcn/nubia/camera/g;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->H:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 405
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-direct {p0, p1, p3}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    goto :goto_1

    .line 411
    :cond_2
    invoke-direct {p0, p1, p3}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    invoke-direct {p0, p3}, Lcn/nubia/camera/a/a;->c(I)V

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    invoke-direct {p0, p3}, Lcn/nubia/camera/a/a;->d(I)V

    goto :goto_1

    .line 415
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/af/a;II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 416
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->aa()V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 397
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->c(Z)V

    .line 398
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    .line 400
    iget-object p1, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {p1}, Lcn/nubia/camera/g;->e()V

    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->H:Z

    .line 403
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->i()V

    .line 419
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->o:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 420
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 421
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ap/b;->b()V

    .line 423
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    if-eq p2, p3, :cond_8

    .line 426
    iget-object p1, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ae/a;->a()V

    .line 427
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->o()V

    :cond_8
    return-void
.end method

.method private a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V
    .locals 2

    .line 1430
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1431
    :goto_1
    invoke-virtual {p1, p3, p2, v0, v1}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 1432
    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/aq/a;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/aw/a;)V
    .locals 0

    .line 981
    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->c()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a/a;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->B:Z

    return p1
.end method

.method private a(Lcn/nubia/camera/af/a;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 466
    sget-object p2, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method private a(Lcn/nubia/camera/af/a;Ljava/lang/String;I)Z
    .locals 5

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 444
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/af/b;

    invoke-virtual {v2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 445
    sget-object v4, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p1, v4, :cond_3

    .line 446
    invoke-static {p2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 447
    invoke-static {v2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 448
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aR()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 449
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    .line 451
    :cond_3
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_4
    if-eqz v0, :cond_6

    .line 455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/af/b;

    .line 456
    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    return v1

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v1
.end method

.method private aA()V
    .locals 2

    .line 1812
    iget-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1813
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1814
    iput-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    .line 1816
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 1817
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private aa()V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "resetCameraWhenBokehIdNotSupported"

    .line 549
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aw/a;->b(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method private ab()V
    .locals 4

    .line 618
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_use_camera_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private ac()V
    .locals 2

    .line 660
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    .line 664
    iget-object v0, p0, Lcn/nubia/camera/a/a;->m:Lcn/nubia/camera/al/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/b;->a(Z)V

    .line 665
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/f;->a(Landroid/content/Context;)V

    .line 666
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ai()V

    return-void
.end method

.method private ad()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/a/a;->m:Lcn/nubia/camera/al/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/b;->a(Z)V

    .line 674
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/f;->a(Landroid/content/Context;)V

    .line 675
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->au()V

    return-void
.end method

.method private ae()V
    .locals 3

    .line 679
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcom/android/preference/RecordLocationPreference;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 682
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 683
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 684
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->c()V

    .line 688
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/e/a;->a(Z)V

    return-void
.end method

.method private af()V
    .locals 9

    const v0, 0x7f090091

    .line 707
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcn/nubia/camera/a/a;->l:Landroid/view/SurfaceView;

    .line 709
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 711
    new-instance v8, Lcn/nubia/camera/an/a;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/a/a;->W()F

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/an/a;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/graphics/Rect;Lcn/nubia/camera/ad/a;F)V

    iput-object v8, p0, Lcn/nubia/camera/a/a;->b:Lcn/nubia/camera/an/a;

    .line 712
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v8}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/an/a;)V

    .line 714
    new-instance v7, Lcom/android/common/c/e;

    new-instance v2, Lcn/nubia/camera/a/a$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/a/a$4;-><init>(Lcn/nubia/camera/a/a;)V

    iget-object v3, p0, Lcn/nubia/camera/a/a;->l:Landroid/view/SurfaceView;

    new-instance v4, Lcom/android/common/d/b;

    invoke-direct {v4, p0}, Lcom/android/common/d/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/nubia/camera/a/a;->b:Lcn/nubia/camera/an/a;

    .line 734
    invoke-direct {p0, v1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/an/a;)Landroid/graphics/Rect;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/common/c/e;-><init>(Lcom/android/common/c/e$a;Landroid/view/SurfaceView;Lcom/android/common/d/b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v7, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    .line 735
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v7}, Lcn/nubia/camera/ad/a;->a(Lcom/android/common/c/e;)V

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/a/a;->b:Lcn/nubia/camera/an/a;

    new-instance v1, Lcn/nubia/camera/a/a$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$5;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;)V

    return-void
.end method

.method private ag()V
    .locals 2

    .line 776
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->b()V

    .line 778
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/a/a$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$6;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method

.method private ah()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->a()V

    return-void
.end method

.method private ai()V
    .locals 2

    .line 916
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 917
    new-instance v1, Lcn/nubia/camera/a/a$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$7;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private aj()V
    .locals 4

    .line 939
    new-instance v0, Lcn/nubia/camera/ae/a;

    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcn/nubia/camera/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    iget-object v3, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;-><init>(Landroid/view/View;Lcn/nubia/camera/ad/a;Lcom/android/common/c/e;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    return-void
.end method

.method private ak()Z
    .locals 3

    .line 1195
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "factory"

    const/4 v2, 0x0

    .line 1196
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private al()V
    .locals 4

    .line 1386
    new-instance v0, Lcn/nubia/camera/ad/a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ad/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 1387
    new-instance v1, Lcn/nubia/camera/d/a;

    invoke-direct {v1}, Lcn/nubia/camera/d/a;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/d/a;)V

    .line 1389
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->a()Lcn/nubia/camera/ac/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    .line 1390
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/ac/b;)V

    .line 1391
    new-instance v0, Lcn/nubia/camera/aq/a;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    .line 1392
    invoke-interface {v1}, Lcn/nubia/camera/ac/b;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1393
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->j()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 1394
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/aq/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->J:Lcn/nubia/camera/aq/a;

    .line 1395
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/aq/a;)V

    .line 1397
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->h()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/a;)V

    .line 1398
    iget-object v0, p0, Lcn/nubia/camera/a/a;->J:Lcn/nubia/camera/aq/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aq/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/camera/a/a;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/ac/b;)Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 1399
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 1400
    new-instance v0, Lcn/nubia/camera/aw/a;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/aw/a;-><init>(Landroid/app/Activity;Lcn/nubia/camera/ac/b;)V

    .line 1401
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/aw/a;)V

    .line 1402
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/a;)V

    return-void
.end method

.method private am()V
    .locals 4

    .line 1406
    new-instance v0, Lcn/nubia/l/a/b;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/l/a/b;-><init>(Landroid/content/Context;I)V

    .line 1407
    new-instance v1, Lcn/nubia/camera/a/a$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/a$8;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b$c;)V

    .line 1413
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/l/a/b;)V

    .line 1415
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/j/a;

    .line 1416
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcn/nubia/j/a;-><init>(Landroid/content/Context;II)V

    .line 1415
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/j/a;)V

    .line 1418
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/e/b;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/e/a;)V

    .line 1419
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/f;

    invoke-direct {v1}, Lcn/nubia/camera/f;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/f;)V

    .line 1420
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/al/a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/al/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/al/a;)V

    .line 1422
    new-instance v0, Lcn/nubia/camera/av/b;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/av/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->s:Lcn/nubia/camera/av/b;

    .line 1423
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/av/b;->a()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/k/a/a;)V

    .line 1425
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/ap/b;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ap/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/ap/b;)V

    .line 1426
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/m/a;

    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/m/a;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/m/a;)V

    return-void
.end method

.method private an()V
    .locals 3

    .line 1468
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    const/4 v0, 0x1

    .line 1472
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->o:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private ao()V
    .locals 2

    .line 1478
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->l()V

    const/4 v0, 0x0

    .line 1479
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->o:Z

    .line 1480
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->c(Z)V

    return-void
.end method

.method private ap()V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "delayCloseCamera"

    .line 1485
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->k()V

    .line 1487
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->c(Z)V

    .line 1489
    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->o:Z

    return-void
.end method

.method private aq()Lcom/android/preference/c;
    .locals 1

    .line 1512
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    return-object v0
.end method

.method private ar()V
    .locals 1

    const v0, 0x7f0900a9

    .line 1516
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method private as()V
    .locals 2

    .line 1520
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 1528
    :goto_0
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/a/a;->a(J)V

    :cond_1
    return-void
.end method

.method private at()V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1567
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    :cond_0
    const/4 v0, 0x0

    .line 1569
    iput-object v0, p0, Lcn/nubia/camera/a/a;->M:Landroid/view/animation/AlphaAnimation;

    return-void
.end method

.method private au()V
    .locals 2

    .line 1573
    iget-object v0, p0, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private av()V
    .locals 3

    .line 1604
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ax()V

    .line 1605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1606
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityBase"

    const-string v2, "stop service failed!"

    .line 1608
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private aw()V
    .locals 3

    .line 1614
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification_title"

    const v2, 0x7f0f0039

    .line 1615
    invoke-virtual {p0, v2}, Lcn/nubia/camera/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1617
    iget-object v1, p0, Lcn/nubia/camera/a/a;->P:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/camera/a/a;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityBase"

    const-string v2, "start service failed!"

    .line 1619
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private ax()V
    .locals 1

    .line 1624
    iget-object v0, p0, Lcn/nubia/camera/a/a;->t:Lcom/android/captureCamera/IWatermarkTypeSync;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcn/nubia/camera/a/a;->P:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1626
    iput-object v0, p0, Lcn/nubia/camera/a/a;->t:Lcom/android/captureCamera/IWatermarkTypeSync;

    :cond_0
    return-void
.end method

.method private ay()V
    .locals 2

    .line 1746
    new-instance v0, Lcn/nubia/camera/a/a$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/a/a$3;-><init>(Lcn/nubia/camera/a/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    return-void
.end method

.method private az()V
    .locals 4

    .line 1798
    iget-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1799
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1801
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    .line 1803
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 1804
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ay()V

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1807
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navi_ges_flag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1808
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fringe_full_black_set"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->w:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/a/a;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->b(Z)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 6

    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->C:Z

    if-nez p1, :cond_1

    .line 285
    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->B:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->A:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->C:Z

    .line 287
    iget-object p1, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->y()V

    .line 288
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    iget-object p1, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    .line 292
    invoke-virtual {p1}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/a/a;->b:Lcn/nubia/camera/an/a;

    move-object v1, p0

    .line 288
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/aw/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)Lcn/nubia/camera/k/ah;

    goto :goto_0

    :cond_0
    const-string p1, "ActivityBase"

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return: mIsCameraOpend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRealyForOpenPreview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "ActivityBase"

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return: mIsCallOpenPreview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Lcn/nubia/camera/af/a;II)Z
    .locals 0

    if-eq p2, p3, :cond_0

    .line 432
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/a/a;)Lcom/android/common/c/e;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "resetCameraWhenMemberNotSupported"

    .line 474
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/a;)V

    .line 476
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    .line 477
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->o:Z

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 481
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 482
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/a;->b(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    const-string v0, "ActivityBase"

    const-string v1, "resetCameraMemberToDefault"

    .line 525
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-static {}, Lcn/nubia/camera/ba/a;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ad/a;->a(I)V

    .line 529
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->h()Lcn/nubia/camera/af/a;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcn/nubia/camera/a/a;->J:Lcn/nubia/camera/aq/a;

    invoke-virtual {v2}, Lcn/nubia/camera/aq/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/a/a;->K:Lcn/nubia/camera/ac/b;

    invoke-virtual {p0, v2, v1, v3}, Lcn/nubia/camera/a/a;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/ac/b;)Lcn/nubia/camera/af/b;

    move-result-object v2

    .line 531
    iget-object v3, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/a;)V

    .line 532
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 533
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 534
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->K()V

    .line 536
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ad/a;Z)V

    return-void
.end method

.method private c(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1050
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1053
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/a/a;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->C:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/a/a;)J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcn/nubia/camera/a/a;->D:J

    return-wide v0
.end method

.method private d(I)V
    .locals 5

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 487
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 492
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 493
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "nubia.camera.family"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 496
    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7ffffffe

    if-ne v1, p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    .line 498
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->o:Z

    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->O()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->M()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->Z()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-nez v2, :cond_8

    if-eqz p1, :cond_5

    goto :goto_2

    .line 503
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->O()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->M()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 505
    :cond_6
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->Z()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 507
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p1, v1, :cond_9

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aR()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_7
    const-string p1, "ActivityBase"

    const-string v1, "resetCameraWhenCameraIdNotSupported"

    .line 508
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iput-boolean v3, p0, Lcn/nubia/camera/a/a;->o:Z

    .line 510
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 511
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 512
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/a;->b(Lcn/nubia/camera/ad/a;)V

    goto :goto_3

    .line 502
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ap/b;->b()V

    :cond_9
    :goto_3
    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1200
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ak()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1201
    invoke-virtual {p0, p2}, Lcn/nubia/camera/a/a;->setResult(I)V

    .line 1202
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method static synthetic e(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ac()V

    return-void
.end method

.method private e(I)Z
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    const/16 v5, 0x19

    const/16 v6, 0x42

    const/16 v7, 0x18

    if-eq p1, v7, :cond_0

    if-ne p1, v5, :cond_2

    .line 1074
    :cond_0
    iget v8, p0, Lcn/nubia/camera/a/a;->r:I

    if-ne v8, v6, :cond_1

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/nubia/camera/a/a;->q:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, v3

    if-gez v8, :cond_1

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/nubia/camera/a/a;->q:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, v1

    if-lez v8, :cond_1

    return v0

    .line 1079
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/camera/a/a;->q:J

    :cond_2
    if-ne p1, v6, :cond_5

    .line 1083
    iget v6, p0, Lcn/nubia/camera/a/a;->r:I

    if-eq v6, v7, :cond_3

    if-ne v6, v5, :cond_4

    .line 1085
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcn/nubia/camera/a/a;->q:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-gez v3, :cond_4

    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/camera/a/a;->q:J

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    return v0

    .line 1089
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->q:J

    .line 1092
    :cond_5
    iput p1, p0, Lcn/nubia/camera/a/a;->r:I

    const/4 p1, 0x1

    return p1
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1209
    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic f(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->as()V

    return-void
.end method

.method private f(I)Z
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v2, 0x3

    const-string v3, "ActivityBase"

    .line 1182
    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1186
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 1189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private f(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1217
    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private g(I)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x13

    .line 1227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x15

    .line 1228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 1226
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x7

    if-gt v0, p1, :cond_1

    const/16 v0, 0x10

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x1d

    if-gt v0, p1, :cond_2

    const/16 v0, 0x36

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x83

    if-gt v0, p1, :cond_4

    const/16 v0, 0x8e

    if-gt p1, v0, :cond_4

    :cond_3
    return v3

    :cond_4
    const/16 v0, 0x121

    if-eq p1, v0, :cond_6

    const/16 v0, 0x120

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v3
.end method

.method static synthetic g(Lcn/nubia/camera/a/a;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcn/nubia/camera/a/a;->F:Z

    return p0
.end method

.method private h(I)V
    .locals 2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 1312
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->q:J

    :cond_1
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->X()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/a/a;)Lcom/android/preference/c;
    .locals 0

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->aq()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/a/a;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public A()Lcn/nubia/camera/d/c;
    .locals 1

    .line 1380
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 1436
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method public C()Lcom/android/common/c/e;
    .locals 1

    .line 1440
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    return-object v0
.end method

.method public D()Lcn/nubia/k/a/a;
    .locals 1

    .line 1444
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcn/nubia/camera/ae/a;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    return-object v0
.end method

.method protected F()Z
    .locals 2

    .line 1577
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

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

.method public G()Landroid/os/Handler;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public H()V
    .locals 4

    .line 1586
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "pref_key_capture_camera"

    const-string v2, "off"

    .line 1591
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureCameraService status = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityBase"

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->av()V

    goto :goto_0

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->aw()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected I()Z
    .locals 1

    .line 1666
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1828
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    return v0
.end method

.method public K()V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->a()V

    return-void
.end method

.method public L()V
    .locals 4

    .line 1845
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1851
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/kernel/camera/ois_switch"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "255"

    .line 1852
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1860
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 1856
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 1860
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 1854
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 1860
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 1862
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 1860
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    .line 1862
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1865
    :cond_2
    :goto_4
    throw v0
.end method

.method protected M()Z
    .locals 3

    .line 1869
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1870
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->N()Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz v0, :cond_0

    .line 1871
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected N()Z
    .locals 3

    .line 1879
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected O()Z
    .locals 3

    .line 1886
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1887
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->P()Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz v0, :cond_0

    .line 1888
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected P()Z
    .locals 3

    .line 1897
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USE_REAR_CAMERA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.assistant.extra.USE_REAR_CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1899
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isVoiceQuery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected abstract a()Lcn/nubia/camera/ac/b;
.end method

.method protected a(Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/ac/b;)Lcn/nubia/camera/af/b;
    .locals 2

    .line 1452
    new-instance v0, Lcn/nubia/camera/af/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1453
    invoke-interface {p3, p2}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1455
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 1456
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/af/b;

    .line 1457
    invoke-virtual {p3, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_1
    const/4 p2, 0x0

    .line 1462
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected a(I)V
    .locals 7

    .line 173
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->a(I)V

    const-string p1, "ActivityBase"

    const-string v0, "onActivityCreate"

    .line 174
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lcn/nubia/camera/ba/f;->a(Landroid/app/Activity;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->D:J

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->E:J

    .line 180
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ak/a;->a(Landroid/content/Context;)V

    .line 181
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->b(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_more_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreate: mIsSettingCalled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/a/a;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->al()V

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->L()V

    .line 193
    :cond_0
    new-instance p1, Lcn/nubia/camera/k/h;

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->S()Lcn/nubia/camera/d;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/camera/k/h;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/d;)V

    iput-object p1, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    .line 194
    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->f()V

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    new-instance v0, Lcn/nubia/camera/a/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a/a$1;-><init>(Lcn/nubia/camera/a/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/g;)V

    .line 210
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/k/h;)V

    .line 211
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->an()V

    const p1, 0x7f0c0031

    .line 214
    invoke-virtual {p0, p1}, Lcn/nubia/camera/a/a;->setContentView(I)V

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->Y()V

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->A:Z

    .line 218
    invoke-direct {p0, v2}, Lcn/nubia/camera/a/a;->b(Z)V

    .line 221
    new-instance p1, Lcn/nubia/camera/g;

    invoke-direct {p1}, Lcn/nubia/camera/g;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    .line 222
    invoke-virtual {p1, p0}, Lcn/nubia/camera/g;->a(Landroid/app/Activity;)V

    .line 223
    new-instance p1, Lcn/nubia/camera/t/b;

    invoke-direct {p1, p0, p0}, Lcn/nubia/camera/t/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/t/b$a;)V

    iput-object p1, p0, Lcn/nubia/camera/a/a;->e:Lcn/nubia/camera/t/b;

    .line 224
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->am()V

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ar()V

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/af/a;->a(Landroid/content/res/Resources;)V

    .line 228
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->aj()V

    .line 230
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    new-instance v6, Lcn/nubia/camera/aw/b;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 231
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    iget-object v5, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aw/b;-><init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;Lcom/android/common/c/e;Lcn/nubia/camera/ae/a;)V

    .line 230
    invoke-virtual {p1, v6}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/aw/b;)V

    .line 232
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/ae/a;)V

    .line 234
    new-instance p1, Lcn/nubia/camera/a/c;

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    const v1, 0x7f090397

    invoke-virtual {p0, v1}, Lcn/nubia/camera/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lcn/nubia/camera/a/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/a/c$a;Landroid/view/View;)V

    iput-object p1, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    .line 235
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ay()V

    .line 236
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->az()V

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->b()V

    return-void
.end method

.method public a(Lcn/nubia/camera/a/d;)V
    .locals 1

    .line 1786
    iget-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1787
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;)V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "resetCameraMemberToDefault2"

    .line 541
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->K()V

    .line 545
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v0, p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0, p1}, Lcn/nubia/camera/a/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 8

    const/4 v0, 0x0

    .line 1632
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->N:Z

    .line 1633
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    if-eqz v0, :cond_0

    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide p2, v3

    :goto_0
    if-eqz p1, :cond_2

    move-wide v5, p4

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    const-string v7, "fragment"

    move-wide v3, p2

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method

.method public a(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(FFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->b(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract b()V
.end method

.method public b(FF)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1702
    iget-object p1, p0, Lcn/nubia/camera/a/a;->t:Lcom/android/captureCamera/IWatermarkTypeSync;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1704
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/captureCamera/IWatermarkTypeSync;->setWatermarkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ActivityBase"

    const-string v0, "Failed to sync watermark type with capture Service."

    .line 1706
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->e(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/a/d;)V
    .locals 1

    .line 1792
    iget-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcn/nubia/camera/a/a;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(ZJJ)V
    .locals 8

    const/4 v0, 0x1

    .line 1643
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->N:Z

    .line 1644
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    if-eqz v0, :cond_0

    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide p2, v3

    :goto_0
    if-eqz p1, :cond_2

    move-wide v5, p4

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    const-string v7, "fragment"

    move-wide v3, p2

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/common/c/f$b;)Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0, p1}, Lcom/android/common/c/e;->b(Lcom/android/common/c/f$b;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract c()V
.end method

.method public c(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract d()V
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 987
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 991
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {v0, p1}, Lcn/nubia/camera/a/c;->a(Landroid/view/MotionEvent;)V

    .line 996
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    return v1

    .line 1005
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 1006
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->h:Z

    .line 1009
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 1011
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->onUserInteraction()V

    :cond_4
    return v1

    .line 1015
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->h:Z

    if-nez v0, :cond_6

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    .line 1017
    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->g()I

    move-result v0

    if-nez v0, :cond_6

    .line 1018
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ae/a;->a(Landroid/view/MotionEvent;)V

    .line 1020
    :cond_6
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract e()V
.end method

.method public f()V
    .locals 2

    .line 1713
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ao()V

    .line 1714
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b;->a(Z)V

    .line 1715
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->c()V

    .line 1716
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1721
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ag()V

    .line 1722
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->an()V

    .line 1723
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->b()V

    .line 1724
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->g()V

    return-void
.end method

.method public g_()V
    .locals 8

    const/4 v0, 0x1

    .line 1671
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    .line 1672
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "interval"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method

.method protected h()Lcn/nubia/camera/af/a;
    .locals 1

    .line 1448
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 8

    const/4 v0, 0x0

    .line 1677
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->O:Z

    .line 1678
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "interval"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1349
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->finish()V

    .line 1352
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 1353
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1356
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/a/b;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1823
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityBase"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1099
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityBase"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1112
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    .line 1113
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->z()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v4}, Lcn/nubia/camera/d/b;->a()I

    move-result v4

    if-lt v0, v4, :cond_f

    .line 1114
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->A()Lcn/nubia/camera/d/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1121
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->I:Z

    .line 1123
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 1127
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aw/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1128
    iput-boolean v3, p0, Lcn/nubia/camera/a/a;->I:Z

    return v3

    .line 1132
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1133
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v0, v4, :cond_6

    move v1, v3

    .line 1135
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    .line 1137
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: canTrack("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_8

    .line 1140
    iput-boolean v3, p0, Lcn/nubia/camera/a/a;->p:Z

    :cond_8
    const/16 v0, 0x42

    if-eq p1, v0, :cond_d

    const/16 v0, 0x55

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_d

    const/16 v0, 0x50

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_b

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1170
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/a/a;->d(ILandroid/view/KeyEvent;)Z

    .line 1174
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/a/a;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    if-eqz v1, :cond_9

    .line 1157
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1158
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/camera/aw/a;->a(Z)V

    :cond_9
    return v3

    .line 1145
    :cond_a
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/a/a;->e(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_b
    if-eqz v1, :cond_c

    .line 1165
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1166
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/camera/aw/a;->a(Z)V

    :cond_c
    return v3

    :cond_d
    :pswitch_2
    if-eqz v1, :cond_e

    .line 1150
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1151
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/camera/aw/a;->a(Z)V

    :cond_e
    return v3

    :cond_f
    :goto_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_10

    return v3

    .line 1118
    :cond_10
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/a/a;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_11
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->z()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 1322
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 1323
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aw/a;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1326
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz v0, :cond_2

    .line 1327
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->A()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x42

    if-eq p1, v1, :cond_3

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_3

    const/16 v1, 0x55

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_3

    .line 1344
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 1338
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1339
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->h()Z

    :cond_4
    return v2
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1246
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1250
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 1253
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityBase"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1255
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->z()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v3}, Lcn/nubia/camera/d/b;->a()I

    move-result v3

    if-lt v0, v3, :cond_f

    .line 1256
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->A()Lcn/nubia/camera/d/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 1259
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/a/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    return v3

    .line 1262
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aw/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 1265
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    const/16 v4, 0x1b

    if-nez v0, :cond_7

    .line 1266
    iget-boolean v5, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz v5, :cond_7

    .line 1267
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 1268
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->A()Lcn/nubia/camera/d/c;

    move-result-object v5

    sget-object v6, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v5, v6, :cond_7

    if-ne p1, v4, :cond_6

    iget-boolean v5, p0, Lcn/nubia/camera/a/a;->p:Z

    if-eqz v5, :cond_7

    .line 1270
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->e(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcn/nubia/camera/a/a;->I:Z

    if-nez v5, :cond_7

    move v5, v3

    goto :goto_1

    :cond_7
    move v5, v1

    :goto_1
    if-eqz v0, :cond_8

    .line 1273
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcn/nubia/camera/a/a;->n:Z

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_2

    :cond_8
    move v6, v1

    .line 1275
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_9

    .line 1276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onKeyUp: isLongPressHappened("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "), canTriggerCapture("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "), isKeyDownConsumed("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcn/nubia/camera/a/a;->I:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "), canTriggerShutterButtonFocus("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_9
    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->I:Z

    const/16 v0, 0x18

    if-eq p1, v0, :cond_c

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    if-eq p1, v4, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0x55

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_c

    const/16 v0, 0x50

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_b

    .line 1307
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1304
    :cond_a
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/a/a;->f(ILandroid/view/KeyEvent;)Z

    :cond_b
    return v3

    :cond_c
    if-eqz v5, :cond_d

    .line 1297
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/aw/a;->e()Z

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    .line 1299
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/nubia/camera/aw/a;->a(Z)V

    .line 1301
    :cond_e
    :goto_3
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/a;->h(I)V

    return v3

    .line 1257
    :cond_f
    :goto_4
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0, p1}, Lcn/nubia/camera/a/a;->setIntent(Landroid/content/Intent;)V

    .line 312
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->onNewIntent(Landroid/content/Intent;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v0

    .line 315
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/ad/a;->b(Landroid/content/Intent;)V

    .line 316
    iget-object p1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/a/a;->H:Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1026
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-super {p0, p1}, Lcn/nubia/camera/a/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1031
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 1032
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 1033
    iget-object v2, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ae/a;->g()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1034
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ae/a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1036
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->h()V

    .line 1040
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->e:Lcn/nubia/camera/t/b;

    if-eqz v0, :cond_3

    .line 1041
    invoke-virtual {v0, p1}, Lcn/nubia/camera/t/b;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_3
    return v1
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1366
    invoke-super {p0}, Lcn/nubia/camera/a/b;->onUserInteraction()V

    .line 1367
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0}, Lcn/nubia/camera/a/c;->c()V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    .line 1371
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->t()V

    :cond_1
    return-void
.end method

.method protected final p()V
    .locals 8

    const-string v0, "ActivityBase"

    const-string v1, "onActivityResume"

    .line 322
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "camera_more_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/a/a;->F:Z

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResume: mIsSettingCalled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/a/a;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-super {p0}, Lcn/nubia/camera/a/b;->p()V

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-static {}, Lcn/nubia/camera/ba/a;->r()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/nubia/camera/ad/a;->a(I)V

    .line 330
    iget-object v2, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->G()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;II)V

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {v0}, Lcn/nubia/camera/g;->b()V

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v0

    const-string v1, "com.android.camera"

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->K()V

    .line 336
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v2, "camera_launch_visitor"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->P()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/l/a/b;->a(J)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v2, "camera_launch_normal"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/l/a/b;->a(J)V

    .line 343
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/ad/a;->a(Z)V

    .line 351
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->n:Z

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 355
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ad()V

    .line 358
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->g()V

    .line 359
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ag()V

    .line 360
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->b()V

    .line 361
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->an()V

    .line 363
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ae()V

    .line 364
    iget-object v0, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    invoke-virtual {v0}, Lcn/nubia/camera/a/c;->a()V

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->b()V

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->e()V

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/a/a;->s:Lcn/nubia/camera/av/b;

    invoke-virtual {v0}, Lcn/nubia/camera/av/b;->b()V

    .line 370
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->c()V

    .line 371
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->H()V

    .line 372
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/m/c;->b(Landroid/content/Context;Lcn/nubia/m/c$b;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->y:J

    .line 374
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "setting"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->L:Lcn/nubia/camera/aq/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/d;)V

    .line 377
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->X()V

    .line 380
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->a()V

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/b;->a()V

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/a;->a()V

    .line 384
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    invoke-static {}, Lcn/nubia/camera/ba/f;->a()V

    return-void
.end method

.method protected final q()V
    .locals 5

    .line 555
    invoke-super {p0}, Lcn/nubia/camera/a/b;->q()V

    const-string v0, "ActivityBase"

    const-string v1, "onActivityPause"

    .line 556
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/a/a;->z:J

    .line 558
    iget-object v0, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {v0}, Lcn/nubia/camera/g;->c()V

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Z)V

    .line 560
    iget-object v0, p0, Lcn/nubia/camera/a/a;->m:Lcn/nubia/camera/al/b;

    invoke-virtual {v0}, Lcn/nubia/camera/al/b;->b()V

    .line 561
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->w()Lcn/nubia/camera/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f;->a()V

    .line 562
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/a;->b()V

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->b()V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/b;->b()V

    .line 567
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcn/nubia/e/a;->a(Z)V

    .line 568
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->d()V

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->i()V

    .line 571
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b;->a(Z)V

    .line 573
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-wide v0, p0, Lcn/nubia/camera/a/a;->z:J

    iget-wide v3, p0, Lcn/nubia/camera/a/a;->y:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x64

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->h()V

    .line 576
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ao()V

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {}, Lcn/nubia/camera/k/f;->a()Lcn/nubia/camera/k/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/f;->a(Lcn/nubia/camera/k/h;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->h()V

    .line 583
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->z()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 584
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    .line 585
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_3

    .line 586
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ap()V

    goto :goto_0

    .line 588
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ao()V

    .line 591
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ah()V

    .line 592
    iget-object v0, p0, Lcn/nubia/camera/a/a;->u:Lcn/nubia/camera/a/c;

    invoke-virtual {v0}, Lcn/nubia/camera/a/c;->b()V

    .line 593
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->c()V

    .line 595
    iget-object v0, p0, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    iput-boolean v2, p0, Lcn/nubia/camera/a/a;->a:Z

    .line 598
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->at()V

    .line 599
    iget-object v0, p0, Lcn/nubia/camera/a/a;->s:Lcn/nubia/camera/av/b;

    invoke-virtual {v0}, Lcn/nubia/camera/av/b;->c()V

    .line 601
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->d()V

    .line 602
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 606
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->c()V

    .line 607
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ax()V

    .line 608
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->c()V

    .line 609
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ab()V

    .line 611
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x2711

    .line 612
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/a;->finishActivity(I)V

    .line 613
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->U()V

    :cond_4
    return-void
.end method

.method protected r()V
    .locals 2

    .line 626
    invoke-super {p0}, Lcn/nubia/camera/a/b;->r()V

    const-string v0, "ActivityBase"

    const-string v1, "onActivityStop"

    .line 627
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcn/nubia/camera/a/a;->H:Z

    .line 629
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->i()V

    .line 630
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->ao()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {v0}, Lcn/nubia/camera/g;->f()V

    return-void
.end method

.method protected final s()V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "onActivityDestroy"

    .line 638
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-super {p0}, Lcn/nubia/camera/a/b;->s()V

    .line 640
    iget-object v0, p0, Lcn/nubia/camera/a/a;->j:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->j()V

    .line 641
    invoke-direct {p0}, Lcn/nubia/camera/a/a;->aA()V

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/a/a;->v:Lcn/nubia/camera/g;

    invoke-virtual {v0}, Lcn/nubia/camera/g;->a()V

    .line 643
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->a()V

    .line 644
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/j/a;->a()V

    .line 645
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->l()V

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a$a;)V

    .line 647
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aq/a;->a()V

    .line 648
    invoke-virtual {p0}, Lcn/nubia/camera/a/a;->e()V

    .line 649
    invoke-static {p0}, Lcn/nubia/camera/ba/f;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    if-nez v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "renderThread is null, just return from requestRender"

    .line 816
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 819
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()Lcn/nubia/camera/an/a;
    .locals 1

    .line 881
    iget-object v0, p0, Lcn/nubia/camera/a/a;->b:Lcn/nubia/camera/an/a;

    return-object v0
.end method

.method protected x()V
    .locals 2

    .line 931
    iget-boolean v0, p0, Lcn/nubia/camera/a/a;->F:Z

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ad/a;)V

    goto :goto_0

    :cond_0
    const-string v0, "ActivityBase"

    const-string v1, "No need to call init fragment"

    .line 934
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected y()V
    .locals 2

    .line 971
    iget-object v0, p0, Lcn/nubia/camera/a/a;->k:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "Recreate CameraSurfaceView"

    .line 972
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcn/nubia/camera/a/a;->l:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcn/nubia/camera/a/a;->l:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 976
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ae/a;->f()V

    return-void
.end method

.method public z()Lcn/nubia/camera/d/b;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcn/nubia/camera/a/a;->i:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    return-object v0
.end method
