.class public Lcn/nubia/camera/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/w/c$c;,
        Lcn/nubia/camera/w/c$b;,
        Lcn/nubia/camera/w/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/af/a;

.field private c:Lcn/nubia/camera/k/ah;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/GridView;

.field private h:Lcn/nubia/camera/w/c$b;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Ljava/util/List;Lcn/nubia/camera/k/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/k/ah;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    .line 48
    iput-object v0, p0, Lcn/nubia/camera/w/c;->h:Lcn/nubia/camera/w/c$b;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/nubia/camera/w/c;->i:I

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    .line 55
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/w/c;->b:Lcn/nubia/camera/af/a;

    .line 56
    iput-object p2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/w/c;->j:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcn/nubia/camera/w/c;->c:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/w/c;ZZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/w/c;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/w/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/c$a;

    .line 274
    invoke-interface {v1, p1, p2}, Lcn/nubia/camera/w/c$a;->a(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/c;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/c;->c(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/w/c;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/camera/w/c;->i:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/w/c;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/camera/w/c;->i:I

    return p1
.end method

.method private b(Lcn/nubia/camera/w/b;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/w/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/c$a;

    .line 280
    invoke-interface {v1, p1}, Lcn/nubia/camera/w/c$a;->a(Lcn/nubia/camera/w/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/w/c;)I
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->e()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/w/c;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/c;->d(I)V

    return-void
.end method

.method private c(I)Z
    .locals 4

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 329
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    .line 330
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    .line 331
    invoke-static {v0}, Lcn/nubia/camera/w/d;->P(Lcn/nubia/camera/ad/a;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v2}, Lcn/nubia/camera/w/d;->O(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_2

    :cond_1
    return v3

    .line 333
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    .line 334
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    .line 335
    invoke-static {v0}, Lcn/nubia/camera/w/d;->v(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v2}, Lcn/nubia/camera/w/d;->u(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v3

    .line 338
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method static synthetic d(Lcn/nubia/camera/w/c;)Landroid/widget/GridView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    return-object p0
.end method

.method private d(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f090194

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 375
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget v1, p0, Lcn/nubia/camera/w/c;->i:I

    if-ne p1, v1, :cond_0

    const p1, 0x7f080114

    goto :goto_0

    :cond_0
    const p1, 0x7f080113

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 379
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private e()I
    .locals 2

    .line 98
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic e(Lcn/nubia/camera/w/c;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/w/c;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/w/c;->e:Landroid/view/View;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/w/c;->c:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/c;->c:Lcn/nubia/camera/k/ah;

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

.method static synthetic g(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/w/c$b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/w/c;->h:Lcn/nubia/camera/w/c$b;

    return-object p0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0228

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_electronic_aperture_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move v2, v1

    .line 288
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 289
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_1

    const-string v3, "pref_camera_exposure_time_nanosec_key"

    .line 290
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_camera_exposure_time_min_key"

    .line 291
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_camera_metering_mode_key"

    .line 292
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 293
    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_2

    const-string v3, "pref_camera_light_draw_step"

    .line 294
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 295
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_3

    const-string v3, "pref_manual_cct"

    .line 296
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_camera_color_tint_key"

    .line 297
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 298
    :cond_3
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_4

    const-string v3, "pref_camera_iso_key"

    .line 299
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 300
    :cond_4
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    .line 301
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_5

    goto/16 :goto_1

    .line 303
    :cond_5
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_6

    const-string v3, "pref_camera_interval_switch_key"

    .line 304
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_camera_interval_time_key"

    .line 305
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 306
    :cond_6
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_7

    const-string v3, "pref_camera_electronic_aperture_key"

    .line 307
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 308
    :cond_7
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_8

    const-string v3, "pref_camera_electronic_compensation_key"

    .line 309
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 310
    :cond_8
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_9

    const-string v3, "pref_star_number_key"

    .line 311
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 312
    :cond_9
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_a

    const-string v3, "pref_star_track_duration_key"

    .line 313
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 314
    :cond_a
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    if-ne v3, v4, :cond_c

    const-string v3, "pref_camera_exposure_compensation"

    .line 315
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_b
    :goto_1
    const-string v3, "pref_manual_focus_key"

    .line 302
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_c
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    iget-object v3, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/PreferenceGroup;->c()V

    .line 319
    iget-object v3, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/b;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 322
    :cond_d
    sget-object v0, Lcn/nubia/camera/w/b;->o:Lcn/nubia/camera/w/b;

    invoke-direct {p0, v0}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/b;)V

    .line 323
    invoke-direct {p0, v1, v1}, Lcn/nubia/camera/w/c;->a(ZZ)V

    .line 324
    invoke-virtual {p0}, Lcn/nubia/camera/w/c;->b()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/w/c;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->h()V

    return-void
.end method

.method private i()Z
    .locals 3

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 347
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 348
    invoke-direct {p0, v0}, Lcn/nubia/camera/w/c;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcn/nubia/camera/w/c;->b(I)V

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/w/c;->e:Landroid/view/View;

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/w/c;->a(ZZ)V

    const v0, 0x7f090192

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    .line 69
    new-instance v1, Lcn/nubia/camera/w/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/w/c$1;-><init>(Lcn/nubia/camera/w/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    new-instance v0, Lcn/nubia/camera/w/c$b;

    iget-object v1, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/w/c$b;-><init>(Lcn/nubia/camera/w/c;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/camera/w/c;->h:Lcn/nubia/camera/w/c$b;

    const v0, 0x7f090191

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/w/c;->h:Lcn/nubia/camera/w/c$b;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    new-instance v0, Lcn/nubia/camera/w/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/w/c$c;-><init>(Lcn/nubia/camera/w/c;Lcn/nubia/camera/w/c$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->e()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr p1, v0

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 85
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p1, -0x1

    .line 86
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-direct {p0}, Lcn/nubia/camera/w/c;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/camera/w/c;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/b;)V
    .locals 4

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 413
    iget-object v1, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 414
    iget-object v1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 415
    iget-object p1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090196

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 416
    iget-object v1, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 417
    iget-object v2, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget v2, p0, Lcn/nubia/camera/w/c;->i:I

    if-ne v0, v2, :cond_1

    .line 420
    iget-object v2, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object v1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/camera/w/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 427
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object v1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/camera/w/c;->d(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Lcn/nubia/camera/w/c$a;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/w/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/w/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    if-ltz p1, :cond_2

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 388
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    return v2

    .line 391
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_1

    .line 392
    invoke-direct {p0}, Lcn/nubia/camera/w/c;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 396
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/w/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_3

    .line 397
    iget-object p1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    if-lez p1, :cond_3

    return v2

    .line 404
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is out of range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HighSettingStatusbar"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcn/nubia/camera/w/c;->h:Lcn/nubia/camera/w/c$b;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 442
    iput v1, p0, Lcn/nubia/camera/w/c;->i:I

    .line 443
    invoke-virtual {v0}, Lcn/nubia/camera/w/c$b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/w/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 453
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/c;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->c(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 457
    iget v0, p0, Lcn/nubia/camera/w/c;->i:I

    return v0
.end method

.method public d()V
    .locals 5

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/w/c;->g:Landroid/widget/GridView;

    iget v1, p0, Lcn/nubia/camera/w/c;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090195

    .line 463
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090196

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090194

    .line 465
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 466
    iget-object v3, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v1, p0, Lcn/nubia/camera/w/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f080113

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const/4 v0, -0x1

    .line 470
    iput v0, p0, Lcn/nubia/camera/w/c;->i:I

    return-void
.end method
