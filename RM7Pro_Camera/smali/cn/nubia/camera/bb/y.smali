.class public Lcn/nubia/camera/bb/y;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/e;
.implements Lcn/nubia/camera/bb/f$a;


# instance fields
.field private A:Lcn/nubia/camera/bb/f;

.field private B:Lcn/nubia/camera/bb/g;

.field private C:Lcom/android/common/c/a$a;

.field private k:Lcn/nubia/camera/bb/v;

.field private l:Lcn/nubia/camera/extendedUI/d;

.field private m:Lcn/nubia/camera/extendedUI/g;

.field private n:Lcom/android/common/ui/k;

.field private o:Lcn/nubia/camera/extendedUI/g;

.field private p:Lcom/android/common/ui/RotateImageView;

.field private q:Lcn/nubia/camera/extendedUI/g;

.field private r:Lcom/android/common/ui/RotateImageView;

.field private s:Lcom/android/common/ui/k;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcn/nubia/camera/bb/aa;

.field private w:Lcn/nubia/camera/bb/ac;

.field private x:Lcn/nubia/camera/bb/h;

.field private y:Lcn/nubia/camera/bb/ab;

.field private z:Lcn/nubia/camera/m/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 419
    iput-object p1, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    if-eqz p2, :cond_0

    .line 93
    new-instance p1, Lcn/nubia/camera/bb/p;

    invoke-direct {p1}, Lcn/nubia/camera/bb/p;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Lcn/nubia/camera/bb/j;

    invoke-direct {p1}, Lcn/nubia/camera/bb/j;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/ab;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/y;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/bb/y;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V
    .locals 2

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->v:Lcn/nubia/camera/bb/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 630
    monitor-exit p0

    return-void

    .line 633
    :cond_0
    :try_start_1
    new-instance v0, Lcn/nubia/camera/bb/aa;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-direct {v0, p1, p2, v1}, Lcn/nubia/camera/bb/aa;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/ac;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->v:Lcn/nubia/camera/bb/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Ljava/lang/String;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 606
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p3

    sget-object v0, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne p3, v0, :cond_1

    .line 607
    new-instance p3, Lcn/nubia/camera/bb/n;

    .line 609
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 610
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-direct {p3, p1, v0, v1, p2}, Lcn/nubia/camera/bb/n;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object p3, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 613
    new-instance p3, Lcn/nubia/camera/bb/q;

    .line 615
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 616
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-direct {p3, p1, v0, v1, p2}, Lcn/nubia/camera/bb/q;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object p3, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    goto :goto_0

    .line 619
    :cond_2
    new-instance p3, Lcn/nubia/camera/bb/h;

    .line 621
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 622
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-direct {p3, p1, v0, v1, p2}, Lcn/nubia/camera/bb/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object p3, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/y;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/y;->g(Z)V

    return-void
.end method

.method private ae()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->c(Ljava/util/ArrayList;)V

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->e(Ljava/util/ArrayList;)V

    .line 232
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->h(Ljava/util/ArrayList;)V

    .line 233
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->g(Ljava/util/ArrayList;)V

    .line 234
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->f(Ljava/util/ArrayList;)V

    .line 235
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->d(Ljava/util/ArrayList;)V

    .line 236
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->i(Ljava/util/ArrayList;)V

    .line 237
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private af()V
    .locals 4

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 252
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    if-eqz v0, :cond_2

    .line 253
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_3

    .line 259
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 261
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 262
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 264
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    if-eqz v0, :cond_5

    .line 265
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 267
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_6

    .line 268
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 270
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_7

    .line 271
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_8

    .line 277
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 279
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_9

    .line 280
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 282
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    if-eqz v0, :cond_a

    .line 283
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 287
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_b

    .line 289
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 291
    :cond_b
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_c

    .line 292
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 296
    :cond_c
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 297
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_d

    .line 298
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_d

    .line 300
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 303
    :cond_d
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private ag()V
    .locals 4

    .line 572
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 573
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 575
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/y$9;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/y$9;-><init>(Lcn/nubia/camera/bb/y;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 594
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 596
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->q()V

    return-void
.end method

.method private ah()V
    .locals 2

    .line 825
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/bb/y$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/y$2;-><init>(Lcn/nubia/camera/bb/y;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    :cond_0
    return-void
.end method

.method private ai()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/bb/y;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

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

    .line 308
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->p:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0802bd

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->p:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f0902ba

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->p:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

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

    .line 319
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    const v1, 0x7f080131

    .line 320
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/d;->setImageResource(I)V

    .line 321
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    new-instance v0, Lcn/nubia/camera/bb/y$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/y$1;-><init>(Lcn/nubia/camera/bb/y;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/d;->setHighTemperautreListener(Lcn/nubia/camera/extendedUI/d$a;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

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

    .line 338
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Lcn/nubia/camera/bb/y$3;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/camera/bb/y$3;-><init>(Lcn/nubia/camera/bb/y;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    .line 354
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f09004b

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

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

    .line 364
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080285

    .line 366
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 367
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static f(Z)Lcn/nubia/camera/bb/y;
    .locals 2

    .line 202
    new-instance v0, Lcn/nubia/camera/bb/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/bb/y;-><init>(IZ)V

    return-object v0
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

    .line 372
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0800f5

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 377
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f09012c

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/ac;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

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

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080144

    .line 384
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 385
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 4

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    if-eqz v0, :cond_1

    const v0, 0x7f0f030b

    .line 800
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f025d

    invoke-virtual {p0, v2}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_movie_mode_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 801
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->f(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 802
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->B:Lcn/nubia/camera/bb/g;

    if-nez p1, :cond_1

    .line 803
    new-instance p1, Lcn/nubia/camera/bb/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/camera/bb/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/y;->B:Lcn/nubia/camera/bb/g;

    .line 804
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bb/y;->B:Lcn/nubia/camera/bb/g;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    goto :goto_0

    .line 807
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->B:Lcn/nubia/camera/bb/g;

    if-eqz p1, :cond_1

    .line 808
    invoke-virtual {p1}, Lcn/nubia/camera/bb/g;->a()V

    const/4 p1, 0x0

    .line 809
    iput-object p1, p0, Lcn/nubia/camera/bb/y;->B:Lcn/nubia/camera/bb/g;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/v;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    return-object p0
.end method

.method private h(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->b()Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private i(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 400
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    const v1, 0x7f08014f

    .line 401
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 402
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/extendedUI/g;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/bb/y;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->ag()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/extendedUI/g;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/bb/y;)Lcom/android/common/c/a$a;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/f;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/bb/y;)Lcom/android/preference/c;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public N()V
    .locals 0

    .line 657
    invoke-super {p0}, Lcn/nubia/camera/q/i;->N()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 9

    .line 408
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/bb/y;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/bb/y;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V

    .line 411
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    iget-object v5, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    iget-object v7, p0, Lcn/nubia/camera/bb/y;->v:Lcn/nubia/camera/bb/aa;

    .line 412
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v8

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v6, p3

    .line 411
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/ac;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;Lcn/nubia/camera/bb/d;Z)V

    .line 413
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/ac;->q()V

    .line 414
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/bb/v;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 415
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/ac;->t()V

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 694
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(ZJJ)V

    .line 695
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p1}, Lcn/nubia/camera/m/d;->d()V

    .line 698
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->c:Lcn/nubia/camera/n/b;

    if-eqz p1, :cond_1

    .line 699
    iget-object p1, p0, Lcn/nubia/camera/bb/y;->c:Lcn/nubia/camera/n/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/n/b;->b(Z)V

    :cond_1
    return-void
.end method

.method protected a(F)Z
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/v;->a(F)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected ab()V
    .locals 1

    .line 705
    invoke-super {p0}, Lcn/nubia/camera/q/i;->ab()V

    .line 706
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 662
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->b(Z)V

    .line 663
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->x:Lcn/nubia/camera/bb/h;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/h;->b(Z)V

    .line 664
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/v;->e(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 668
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->af()V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcn/nubia/camera/m/d;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->aa()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/m/d;-><init>(Landroid/widget/RelativeLayout;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 106
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->ae()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    .line 107
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    const v1, 0x7f090150

    .line 108
    iget-object v2, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 110
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/bb/y;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V

    .line 112
    new-instance v1, Lcn/nubia/camera/bb/ab;

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/y;->v:Lcn/nubia/camera/bb/aa;

    iget-object v4, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/camera/bb/ab;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/d;Lcn/nubia/camera/bb/ac;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    .line 116
    invoke-virtual {v1, p0}, Lcn/nubia/camera/bb/ab;->a(Lcn/nubia/camera/bb/e;)V

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->v:Lcn/nubia/camera/bb/aa;

    iget-object v3, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    iget-object v4, p0, Lcn/nubia/camera/bb/y;->r:Lcom/android/common/ui/RotateImageView;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/ab;Lcn/nubia/camera/bb/aa;Lcn/nubia/camera/bb/ac;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/bb/v;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    const v2, 0x7f09014e

    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/w/d;->b(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 121
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/ab;->e()Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    const v1, 0x7f09014d

    .line 122
    iget-object v2, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 124
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/q/g;)V

    .line 125
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/q/g;)V

    .line 126
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/q/g;)V

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/q/g;)V

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m$b;)V

    .line 132
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->ah()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 196
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 211
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 601
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->w:Lcn/nubia/camera/bb/ac;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/q/g;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/q/g;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/q/g;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, v0}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/q/g;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/ab;->a(Lcn/nubia/camera/bb/e;)V

    .line 146
    iput-object v1, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    .line 148
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->a()V

    .line 151
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Lcn/nubia/camera/q/m$b;)V

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->ai()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    .line 638
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->g(Ljava/lang/String;)V

    const-string v0, "pref_video_encoder_key"

    .line 639
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "pref_back_video_quality_key"

    .line 640
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pref_front_video_quality_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v3, :cond_2

    .line 642
    invoke-virtual {v3}, Lcn/nubia/camera/bb/v;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    .line 644
    :cond_3
    iput-boolean v2, p0, Lcn/nubia/camera/bb/y;->i:Z

    .line 645
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_4

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 650
    :cond_4
    invoke-direct {p0, v1}, Lcn/nubia/camera/bb/y;->g(Z)V

    .line 652
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 8

    .line 720
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    const-string v1, "more_setting_special"

    const-string v2, "pref_mirror_mode_key"

    const-string v3, "pref_back_video_quality_key"

    const-string v4, "pref_front_video_quality_key"

    const-string v5, "pref_video_encoder_key"

    const-string v6, "pref_slomo_fps_key"

    .line 723
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 731
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_b

    .line 733
    aget-object v5, v1, v4

    const-string v6, "pref_mirror_mode_key"

    .line 734
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "VideoMemberFragment"

    if-eqz v6, :cond_2

    .line 735
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_2

    :cond_1
    const-string v5, "Not support KEY_MIRROR_MODE"

    .line 738
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v6, "pref_back_video_quality_key"

    .line 739
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 740
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_4

    :cond_3
    const-string v5, "Not support KEY_BACK_VIDEO_QUALITY"

    .line 741
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v6, "pref_front_video_quality_key"

    .line 742
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 743
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_6

    :cond_5
    const-string v5, "Not support KEY_FRONT_VIDEO_QUALITY"

    .line 744
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v6, "pref_video_encoder_key"

    .line 745
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 746
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->ay()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_8

    sget-object v6, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_8

    :cond_7
    const-string v5, "Not support KEY_VIDEO_ENCODER"

    .line 747
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v6, "pref_slomo_fps_key"

    .line 748
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 749
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->aC()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v3, v6, :cond_a

    :cond_9
    const-string v5, "Not support KEY_SLOMO_FPS"

    .line 750
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 752
    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 755
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 756
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 5

    .line 422
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 423
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 424
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    const-string v1, "pref_video_flashmode_key"

    .line 425
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_0

    .line 427
    iget-object v2, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/extendedUI/d;->a(Lcom/android/preference/IconListPreference;)V

    .line 428
    iget-object v2, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    new-instance v3, Lcn/nubia/camera/bb/y$4;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/bb/y$4;-><init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcn/nubia/camera/extendedUI/d;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    :cond_0
    const-string v1, "VideoMemberFragment"

    const-string v2, "remove flash"

    .line 436
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/bb/y;->l:Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 459
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v1, v0}, Lcn/nubia/camera/m/d;->a(Lcom/android/preference/PreferenceGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->z:Lcn/nubia/camera/m/d;

    invoke-virtual {v1}, Lcn/nubia/camera/m/d;->c()Lcn/nubia/camera/extendedUI/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_1
    const-string v0, "pref_pretty_switch_key"

    .line 466
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 467
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 469
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/bb/y$5;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/bb/y$5;-><init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 478
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->q:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 481
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_video_anti_shake"

    .line 482
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_3

    .line 484
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 485
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/bb/y$6;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v0}, Lcn/nubia/camera/bb/y$6;-><init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 512
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->m:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_4
    :goto_2
    const-string v0, "pref_video_mfhdr_key"

    .line 516
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_5

    .line 517
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    if-eqz v1, :cond_5

    .line 518
    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 519
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/bb/y$7;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v0}, Lcn/nubia/camera/bb/y$7;-><init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_3

    .line 547
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->o:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 550
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    if-eqz v0, :cond_7

    const-string v0, "pref_movie_mode_key"

    .line 551
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/y;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_6

    .line 553
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 554
    iget-object v1, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/bb/y$8;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/bb/y$8;-><init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_4

    .line 561
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->s:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/y;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 566
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcn/nubia/camera/bb/y;->af()V

    :cond_8
    return-void
.end method

.method public m()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->m()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    return-void
.end method

.method public o()V
    .locals 2

    .line 771
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/y$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/y$10;-><init>(Lcn/nubia/camera/bb/y;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcn/nubia/camera/bb/y;->d:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    return-void

    .line 181
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcn/nubia/camera/bb/f;->a()V

    .line 185
    iput-object v1, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->C:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->g(Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 157
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 158
    iget-boolean v0, p0, Lcn/nubia/camera/bb/y;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/bb/y;->n:Lcom/android/common/ui/k;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    new-instance v1, Lcn/nubia/camera/bb/f;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    const v3, 0x7f09020f

    .line 166
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v2, v0}, Lcn/nubia/camera/bb/f;-><init>(Lcn/nubia/camera/ad/a;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/bb/f;->a(Lcn/nubia/camera/bb/f$a;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/bb/f;->a(Lcn/nubia/camera/bb/f$a;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->y:Lcn/nubia/camera/bb/ab;

    iget-object v1, p0, Lcn/nubia/camera/bb/y;->A:Lcn/nubia/camera/bb/f;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/ab;->a(Lcn/nubia/camera/bb/f;)V

    :cond_2
    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/y;->g(Z)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 784
    invoke-super {p0}, Lcn/nubia/camera/q/i;->r()V

    .line 785
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->r()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 792
    invoke-super {p0}, Lcn/nubia/camera/q/i;->s()V

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->s()V

    :cond_0
    return-void
.end method

.method public s_()V
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->K()V

    .line 676
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/y;->k:Lcn/nubia/camera/bb/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/v;->c(Z)V

    return-void
.end method

.method public t_()V
    .locals 0

    return-void
.end method

.method public w()Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcn/nubia/camera/bb/y;->d_()Z

    move-result v0

    return v0
.end method
