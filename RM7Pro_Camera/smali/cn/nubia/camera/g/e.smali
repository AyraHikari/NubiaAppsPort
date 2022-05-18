.class public Lcn/nubia/camera/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/g/c;

.field private c:Lcn/nubia/camera/g/f;

.field private d:Lcn/nubia/camera/z/b;

.field private e:J

.field private f:Z

.field private g:Lcn/nubia/camera/k/ah;

.field private h:Z

.field private i:Lcn/nubia/camera/aj/k;

.field private j:Lcn/nubia/camera/k/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lcn/nubia/camera/g/e;->e:J

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/g/e;->f:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    .line 106
    new-instance v0, Lcn/nubia/camera/g/e$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/g/e$1;-><init>(Lcn/nubia/camera/g/e;)V

    iput-object v0, p0, Lcn/nubia/camera/g/e;->j:Lcn/nubia/camera/k/d;

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    .line 74
    iput-object p3, p0, Lcn/nubia/camera/g/e;->d:Lcn/nubia/camera/z/b;

    .line 75
    iput-object p4, p0, Lcn/nubia/camera/g/e;->b:Lcn/nubia/camera/g/c;

    .line 76
    iput-object p2, p0, Lcn/nubia/camera/g/e;->g:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g/e;Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/aj/k;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/g/e;->c:Lcn/nubia/camera/g/f;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/g/f;->a(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g/e;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/g/e;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g/e;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcn/nubia/camera/g/e;->f:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/g/e;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcn/nubia/camera/g/e;->e:J

    return-wide v0
.end method

.method private c()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    .line 306
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcn/nubia/camera/g/e;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcn/nubia/camera/g/e;->h:Z

    return p0
.end method

.method private d()F
    .locals 3

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    .line 311
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    .line 312
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_bokeh_level_adjustable"

    .line 311
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_bigaperture_focus_length"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic d(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/z/b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/camera/g/e;->d:Lcn/nubia/camera/z/b;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/aj/k;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/camera/g/e;->g:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/g/e;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/g/e;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/g/e;)F
    .locals 0

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/g/e;->d()F

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/o;
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/camera/g/e;->h:Z

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/g/e;->j:Lcn/nubia/camera/k/d;

    return-object v0
.end method

.method public a(ZLcn/nubia/camera/v/d;)Lcn/nubia/camera/k/o;
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Lcn/nubia/camera/aj/k;

    iget-object v0, p0, Lcn/nubia/camera/g/e;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {p1, v0, p2}, Lcn/nubia/camera/aj/k;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/v/d;)V

    iput-object p1, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object p1

    return-object p1
.end method

.method public a(JZ)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcn/nubia/camera/g/e;->e:J

    .line 103
    iput-boolean p3, p0, Lcn/nubia/camera/g/e;->f:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/g/f;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcn/nubia/camera/g/e;->c:Lcn/nubia/camera/g/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/g/e;->b:Lcn/nubia/camera/g/c;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p1}, Lcn/nubia/camera/g/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Lcn/nubia/camera/aj/k;
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/g/e;->i:Lcn/nubia/camera/aj/k;

    return-object v0
.end method
