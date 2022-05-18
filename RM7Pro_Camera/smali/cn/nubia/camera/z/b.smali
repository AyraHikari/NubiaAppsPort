.class public Lcn/nubia/camera/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/z/f;

.field private c:Lcn/nubia/camera/z/a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/z/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/nubia/camera/z/d;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Lcn/nubia/camera/z/a/d;

.field private o:Ljava/lang/Object;

.field private p:Lcn/nubia/camera/n/b;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lcn/nubia/camera/z/c;

.field private s:Lcn/nubia/camera/z/f$b;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcn/nubia/camera/z/b;->e:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/z/b;->q:Landroid/widget/RelativeLayout;

    .line 378
    new-instance v0, Lcn/nubia/camera/z/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/z/b$1;-><init>(Lcn/nubia/camera/z/b;)V

    iput-object v0, p0, Lcn/nubia/camera/z/b;->s:Lcn/nubia/camera/z/f$b;

    .line 421
    new-instance v0, Lcn/nubia/camera/z/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/z/b$2;-><init>(Lcn/nubia/camera/z/b;)V

    iput-object v0, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    .line 69
    iput-object p2, p0, Lcn/nubia/camera/z/b;->h:Landroid/view/ViewGroup;

    .line 70
    iput-object p3, p0, Lcn/nubia/camera/z/b;->i:Landroid/view/ViewGroup;

    .line 71
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/z/b;->f:Ljava/util/List;

    .line 72
    new-instance p2, Lcn/nubia/camera/z/f;

    invoke-direct {p2, p1}, Lcn/nubia/camera/z/f;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object p2, p0, Lcn/nubia/camera/z/b;->b:Lcn/nubia/camera/z/f;

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/z/b;->s:Lcn/nubia/camera/z/f$b;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/z/f;->a(Lcn/nubia/camera/z/f$b;)V

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->n()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/b;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->f:Ljava/util/List;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/z/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    .line 344
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0116

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 343
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(J)V
    .locals 4

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, v0}, Lcn/nubia/camera/z/b;->c(I)V

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/z/b;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/b;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/b;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/z/b;->a(J)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->g:Lcn/nubia/camera/z/d;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/z/b;->j:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/b;->r:Lcn/nubia/camera/z/c;

    if-eqz v0, :cond_2

    .line 358
    invoke-interface {v0}, Lcn/nubia/camera/z/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/z/b;->j:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/z/b;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->i()V

    .line 233
    iget-object v1, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    iget-object v2, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/nubia/camera/z/a/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 234
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/z/b;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/b;->c(I)V

    return-void
.end method

.method private b([B)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->i()V

    .line 226
    iget-object v1, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    iget-object v2, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/nubia/camera/z/a/d;->a([BLjava/lang/String;)V

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/f;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->b:Lcn/nubia/camera/z/f;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/z/b;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/b;->r:Lcn/nubia/camera/z/c;

    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v0}, Lcn/nubia/camera/z/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/z/b;->l:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 371
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/z/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/z/b;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/b;->a(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/z/b;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/a/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->i()V

    .line 240
    iget-object v1, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    iget-object v2, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/z/a/d;->a(Ljava/lang/String;)V

    .line 241
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcn/nubia/camera/z/a/d;

    iget-object v1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/z/a/d;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    const/16 v1, 0xa

    .line 247
    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/z/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Lcn/nubia/camera/z/a/d;->a()V

    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcn/nubia/camera/z/b;->n:Lcn/nubia/camera/z/a/d;

    .line 257
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

.method private k()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/z/b;->c:Lcn/nubia/camera/z/a;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcn/nubia/camera/z/a;

    iget-object v1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/z/b;->i:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/z/a;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/camera/z/b;->c:Lcn/nubia/camera/z/a;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/z/b;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 280
    invoke-direct {p0, v0}, Lcn/nubia/camera/z/b;->c(I)V

    .line 281
    invoke-direct {p0, v0}, Lcn/nubia/camera/z/b;->b(I)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcn/nubia/camera/z/b;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0901bd

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/camera/z/b;->j:Landroid/view/ViewGroup;

    const v1, 0x7f0901bc

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/camera/z/b;->k:Landroid/widget/TextView;

    const v1, 0x7f0901bf

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/camera/z/b;->l:Landroid/view/ViewGroup;

    const v1, 0x7f0901be

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/camera/z/b;->m:Landroid/widget/TextView;

    const v1, 0x7f0901c1

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/z/b;->q:Landroid/widget/RelativeLayout;

    .line 297
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->m()V

    .line 298
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->k()V

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 5

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/k/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    .line 333
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0070

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 310
    iget-object p1, p0, Lcn/nubia/camera/z/b;->q:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p4, p2

    .line 312
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p5, p3

    .line 313
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 314
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 316
    iget-object p1, p0, Lcn/nubia/camera/z/b;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcn/nubia/camera/z/b;->p:Lcn/nubia/camera/n/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/z/d;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/z/b;->a()Z

    move-result v0

    const-string v1, "GraduationIntervalShot"

    if-nez v0, :cond_0

    const-string p1, "Interval is not enable"

    .line 110
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startInterval"

    .line 113
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/z/b;->p:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/z/b;->b:Lcn/nubia/camera/z/f;

    iget-object v2, p0, Lcn/nubia/camera/z/b;->c:Lcn/nubia/camera/z/a;

    invoke-virtual {v2}, Lcn/nubia/camera/z/a;->a()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/z/f;->a(J)V

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/z/b;->b:Lcn/nubia/camera/z/f;

    invoke-virtual {v0}, Lcn/nubia/camera/z/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    iput v1, p0, Lcn/nubia/camera/z/b;->e:I

    .line 125
    invoke-direct {p0, v1}, Lcn/nubia/camera/z/b;->a(I)V

    .line 126
    iput-object p1, p0, Lcn/nubia/camera/z/b;->g:Lcn/nubia/camera/z/d;

    .line 127
    iget-object p1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 128
    invoke-direct {p0, v1}, Lcn/nubia/camera/z/b;->b(I)V

    .line 129
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public a(Lcn/nubia/camera/z/e;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/z/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/z/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/z/b;->c:Lcn/nubia/camera/z/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/z/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 9

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 186
    iget v0, p0, Lcn/nubia/camera/z/b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/z/b;->e:I

    .line 189
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x438

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x44870000    # 1080.0f

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x2d0

    if-lt v0, v2, :cond_1

    const/high16 v0, 0x44340000    # 720.0f

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v7, v0, v0, v2, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 202
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    iget v2, p0, Lcn/nubia/camera/z/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/b;->b(Landroid/graphics/Bitmap;)V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 211
    iget-object p1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 213
    iget p1, p0, Lcn/nubia/camera/z/b;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/z/b;->e:I

    .line 214
    iget-object v1, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 216
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->h()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a([B)Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lcn/nubia/camera/z/b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/z/b;->e:I

    .line 175
    iget-object v2, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/b;->b([B)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/z/b;->c:Lcn/nubia/camera/z/a;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcn/nubia/camera/z/a;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public b(Lcn/nubia/camera/z/e;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/z/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/z/b;->b:Lcn/nubia/camera/z/f;

    invoke-virtual {v0}, Lcn/nubia/camera/z/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcn/nubia/camera/z/b;->g:Lcn/nubia/camera/z/d;

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iput-object v0, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcn/nubia/camera/z/b;->j()V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/z/b;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/z/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/z/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    .line 322
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    .line 323
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 324
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/z/b;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
