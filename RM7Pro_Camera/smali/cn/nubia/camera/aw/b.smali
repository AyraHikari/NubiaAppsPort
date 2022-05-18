.class public Lcn/nubia/camera/aw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aw/b$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/k/h;

.field private b:Lcn/nubia/camera/aw/a;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcom/android/common/c/e;

.field private e:Lcn/nubia/camera/ae/a;

.field private f:J

.field private g:Lcn/nubia/camera/k/ab$a;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;

.field private j:Lcn/nubia/camera/am/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;Lcom/android/common/c/e;Lcn/nubia/camera/ae/a;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcn/nubia/camera/aw/b;->f:J

    .line 249
    new-instance v0, Lcn/nubia/camera/aw/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aw/b$2;-><init>(Lcn/nubia/camera/aw/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aw/b;->h:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcn/nubia/camera/aw/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aw/b$3;-><init>(Lcn/nubia/camera/aw/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aw/b;->i:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    .line 59
    iput-object p2, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    .line 60
    iput-object p3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 61
    iput-object p4, p0, Lcn/nubia/camera/aw/b;->d:Lcom/android/common/c/e;

    .line 62
    iput-object p5, p0, Lcn/nubia/camera/aw/b;->e:Lcn/nubia/camera/ae/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aw/b;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcn/nubia/camera/aw/b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ae/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/aw/b;->e:Lcn/nubia/camera/ae/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aw/b;->d(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/nubia/camera/ad/a;Ljava/lang/Runnable;I)V
    .locals 2

    .line 229
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->a()V

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/a;->a(Z)V

    .line 235
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aw/b;->f:J

    .line 238
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 239
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;)V

    const/4 p2, 0x0

    .line 240
    invoke-virtual {p1, p2}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aw/a;->b(Lcn/nubia/camera/ad/a;)V

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/k/ah;II)V

    .line 246
    iget-object p3, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/k/ah;II)V
    .locals 1

    .line 153
    new-instance v0, Lcn/nubia/camera/aw/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/camera/aw/b$a;-><init>(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/k/ah;II)V

    iput-object v0, p0, Lcn/nubia/camera/aw/b;->g:Lcn/nubia/camera/k/ab$a;

    .line 154
    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aw/b;)Lcom/android/common/c/e;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/aw/b;->d:Lcom/android/common/c/e;

    return-object p0
.end method

.method private b(Lcn/nubia/camera/af/a;)Z
    .locals 4

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    .line 167
    iget-object v1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f02bc

    invoke-direct {p0, v1}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_back_video_quality_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f02c6

    .line 288
    invoke-direct {p0, v1}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z
    .locals 1

    .line 159
    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_1

    .line 160
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/aw/b;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcn/nubia/camera/aw/b;->f:J

    return-wide v0
.end method

.method private d(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;
    .locals 6

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    .line 346
    invoke-interface {v0, p1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 351
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 352
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->G()I

    move-result p2

    .line 353
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/af/b;

    goto :goto_1

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/af/b;

    .line 357
    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p2, v3

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 363
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/af/b;

    .line 366
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 368
    new-instance p2, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v2, v1}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v0, p2, p1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p1

    return-object p1

    .line 372
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No suitable camera id found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .locals 2

    .line 293
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_second_display_show_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 330
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aF()Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0f0138

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f0f0159

    invoke-direct {p0, v3}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ak/a;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    if-lt v0, v1, :cond_1

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0f0025

    invoke-direct {p0, v1}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aQ()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f01ae

    goto :goto_1

    :cond_2
    const v1, 0x7f0f02d8

    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;)V
    .locals 6

    .line 304
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->c()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 308
    new-instance p1, Lcn/nubia/camera/am/a$a;

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 309
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0130

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    const v1, 0x7f0f004b

    new-instance v2, Lcn/nubia/camera/aw/b$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/aw/b$4;-><init>(Lcn/nubia/camera/aw/b;)V

    .line 310
    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    .line 320
    invoke-virtual {p1, v0}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    .line 323
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 324
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    invoke-virtual {p1}, Lcn/nubia/camera/am/a;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V
    .locals 11

    .line 81
    invoke-virtual {p0, p1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    const-string v1, "MemberSwitcherHelper"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 83
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 84
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->b()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 85
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->a()Lcn/nubia/camera/af/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to switch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/aw/b;->d:Lcom/android/common/c/e;

    invoke-virtual {v3}, Lcom/android/common/c/e;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->d:Lcom/android/common/c/e;

    invoke-virtual {v0}, Lcom/android/common/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->e:Lcn/nubia/camera/ae/a;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ae/a;->a(Z)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p1}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p1

    .line 94
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ba/f;->c()V

    .line 95
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcn/nubia/camera/an/a;->a(F)V

    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchMember to ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z

    move-result v0

    .line 103
    invoke-direct {p0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/a;)Z

    move-result v1

    .line 104
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3, p1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/a;)V

    .line 105
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3, p1}, Lcn/nubia/camera/ad/a;->c(Lcn/nubia/camera/af/a;)V

    .line 106
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v3, p2, p1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p2

    .line 107
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v3}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v3}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/ah;->A()V

    .line 109
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v3}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aw/b;->g:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v3, v4}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 111
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 113
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/aw/a;->b(Lcn/nubia/camera/ad/a;)V

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p2

    sget-object v0, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 115
    iget-object v5, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    iget-object v8, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    iget-object p2, p0, Lcn/nubia/camera/aw/b;->d:Lcom/android/common/c/e;

    .line 116
    invoke-virtual {p2}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 117
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v10

    .line 115
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/camera/aw/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)Lcn/nubia/camera/k/ah;

    move-result-object p2

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->e:Lcn/nubia/camera/ae/a;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v2}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aw/b;->f:J

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->a()V

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/m/a;->a(Z)V

    .line 125
    new-instance v0, Lcn/nubia/camera/aw/b$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/camera/aw/b$1;-><init>(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/k/ah;)V

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 137
    invoke-direct {p0, p2, v4, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/k/ah;II)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->d()V

    .line 142
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 146
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->i:Ljava/lang/Runnable;

    invoke-direct {p0, p2, v0, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/ad/a;Ljava/lang/Runnable;I)V

    .line 149
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-static {p1, p2}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;)V
    .locals 5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCamera2 to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberSwitcherHelper"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aw/b;->f:J

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iput-object p1, v0, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    .line 188
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 186
    invoke-virtual {v0, p1, v2, v3, v4}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-interface {v0, v2, v3, p1, v4}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/an/a;->a(F)V

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/aw/b;->j:Lcn/nubia/camera/am/a;

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->g:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    :cond_1
    return-void
.end method

.method public b(Lcn/nubia/camera/af/b;)V
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCamera to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberSwitcherHelper"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;)V

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    new-instance p1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 213
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_4

    .line 214
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->d()V

    .line 216
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->A()V

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->b:Lcn/nubia/camera/aw/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->s()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aw/b;->g:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 221
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-ne v0, p1, :cond_6

    .line 222
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->i:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/ad/a;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 224
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    iget-object v0, p0, Lcn/nubia/camera/aw/b;->h:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/ad/a;Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method

.method public b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z
    .locals 3

    .line 264
    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 265
    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const p2, 0x7f0f02bc

    invoke-direct {p0, p2}, Lcn/nubia/camera/aw/b;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_back_video_quality_key"

    invoke-virtual {p1, v0, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->ae()I

    move-result p2

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    .line 271
    iget-object p2, p0, Lcn/nubia/camera/aw/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0f02c4

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->u()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 274
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->c()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 277
    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->c()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 279
    iget-object p1, p0, Lcn/nubia/camera/aw/b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->u()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 280
    invoke-direct {p0}, Lcn/nubia/camera/aw/b;->c()Z

    move-result p1

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method
