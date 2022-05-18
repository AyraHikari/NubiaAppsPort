.class public Lc/d/a/b/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lc/d/a/b/j/d;

.field private k:Landroid/graphics/BitmapFactory$Options;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Lc/d/a/b/p/a;

.field private p:Lc/d/a/b/p/a;

.field private q:Lc/d/a/b/l/a;

.field private r:Landroid/os/Handler;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/c$b;->a:I

    iput v0, p0, Lc/d/a/b/c$b;->b:I

    iput v0, p0, Lc/d/a/b/c$b;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lc/d/a/b/c$b;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc/d/a/b/c$b;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc/d/a/b/c$b;->f:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lc/d/a/b/c$b;->g:Z

    iput-boolean v0, p0, Lc/d/a/b/c$b;->h:Z

    iput-boolean v0, p0, Lc/d/a/b/c$b;->i:Z

    sget-object v2, Lc/d/a/b/j/d;->c:Lc/d/a/b/j/d;

    iput-object v2, p0, Lc/d/a/b/c$b;->j:Lc/d/a/b/j/d;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lc/d/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput v0, p0, Lc/d/a/b/c$b;->l:I

    iput-boolean v0, p0, Lc/d/a/b/c$b;->m:Z

    iput-object v1, p0, Lc/d/a/b/c$b;->n:Ljava/lang/Object;

    iput-object v1, p0, Lc/d/a/b/c$b;->o:Lc/d/a/b/p/a;

    iput-object v1, p0, Lc/d/a/b/c$b;->p:Lc/d/a/b/p/a;

    invoke-static {}, Lc/d/a/b/a;->a()Lc/d/a/b/l/a;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/c$b;->q:Lc/d/a/b/l/a;

    iput-object v1, p0, Lc/d/a/b/c$b;->r:Landroid/os/Handler;

    iput-boolean v0, p0, Lc/d/a/b/c$b;->s:Z

    return-void
.end method

.method static synthetic a(Lc/d/a/b/c$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/c$b;->a:I

    return p0
.end method

.method static synthetic b(Lc/d/a/b/c$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/c$b;->b:I

    return p0
.end method

.method static synthetic c(Lc/d/a/b/c$b;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic d(Lc/d/a/b/c$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/c$b;->l:I

    return p0
.end method

.method static synthetic e(Lc/d/a/b/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/c$b;->m:Z

    return p0
.end method

.method static synthetic f(Lc/d/a/b/c$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lc/d/a/b/c$b;)Lc/d/a/b/p/a;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->o:Lc/d/a/b/p/a;

    return-object p0
.end method

.method static synthetic h(Lc/d/a/b/c$b;)Lc/d/a/b/p/a;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->p:Lc/d/a/b/p/a;

    return-object p0
.end method

.method static synthetic i(Lc/d/a/b/c$b;)Lc/d/a/b/l/a;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->q:Lc/d/a/b/l/a;

    return-object p0
.end method

.method static synthetic j(Lc/d/a/b/c$b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lc/d/a/b/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/c$b;->s:Z

    return p0
.end method

.method static synthetic l(Lc/d/a/b/c$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/c$b;->c:I

    return p0
.end method

.method static synthetic m(Lc/d/a/b/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic n(Lc/d/a/b/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic o(Lc/d/a/b/c$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic p(Lc/d/a/b/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/c$b;->g:Z

    return p0
.end method

.method static synthetic q(Lc/d/a/b/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/c$b;->h:Z

    return p0
.end method

.method static synthetic r(Lc/d/a/b/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/c$b;->i:Z

    return p0
.end method

.method static synthetic s(Lc/d/a/b/c$b;)Lc/d/a/b/j/d;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/c$b;->j:Lc/d/a/b/j/d;

    return-object p0
.end method


# virtual methods
.method public t(Landroid/graphics/Bitmap$Config;)Lc/d/a/b/c$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/d/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()Lc/d/a/b/c;
    .locals 2

    new-instance v0, Lc/d/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/c;-><init>(Lc/d/a/b/c$b;Lc/d/a/b/c$a;)V

    return-object v0
.end method

.method public v(Z)Lc/d/a/b/c$b;
    .locals 0

    iput-boolean p1, p0, Lc/d/a/b/c$b;->h:Z

    return-object p0
.end method

.method public w(Z)Lc/d/a/b/c$b;
    .locals 0

    iput-boolean p1, p0, Lc/d/a/b/c$b;->i:Z

    return-object p0
.end method

.method public x(Lc/d/a/b/c;)Lc/d/a/b/c$b;
    .locals 1

    invoke-static {p1}, Lc/d/a/b/c;->a(Lc/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/c$b;->a:I

    invoke-static {p1}, Lc/d/a/b/c;->b(Lc/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/c$b;->b:I

    invoke-static {p1}, Lc/d/a/b/c;->c(Lc/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/c$b;->c:I

    invoke-static {p1}, Lc/d/a/b/c;->d(Lc/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lc/d/a/b/c;->e(Lc/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lc/d/a/b/c;->f(Lc/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lc/d/a/b/c;->g(Lc/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/c$b;->g:Z

    invoke-static {p1}, Lc/d/a/b/c;->h(Lc/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/c$b;->h:Z

    invoke-static {p1}, Lc/d/a/b/c;->i(Lc/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/c$b;->i:Z

    invoke-static {p1}, Lc/d/a/b/c;->j(Lc/d/a/b/c;)Lc/d/a/b/j/d;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->j:Lc/d/a/b/j/d;

    invoke-static {p1}, Lc/d/a/b/c;->k(Lc/d/a/b/c;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lc/d/a/b/c;->l(Lc/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/c$b;->l:I

    invoke-static {p1}, Lc/d/a/b/c;->m(Lc/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/c$b;->m:Z

    invoke-static {p1}, Lc/d/a/b/c;->n(Lc/d/a/b/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->n:Ljava/lang/Object;

    invoke-static {p1}, Lc/d/a/b/c;->o(Lc/d/a/b/c;)Lc/d/a/b/p/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->o:Lc/d/a/b/p/a;

    invoke-static {p1}, Lc/d/a/b/c;->p(Lc/d/a/b/c;)Lc/d/a/b/p/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->p:Lc/d/a/b/p/a;

    invoke-static {p1}, Lc/d/a/b/c;->q(Lc/d/a/b/c;)Lc/d/a/b/l/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->q:Lc/d/a/b/l/a;

    invoke-static {p1}, Lc/d/a/b/c;->r(Lc/d/a/b/c;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/c$b;->r:Landroid/os/Handler;

    invoke-static {p1}, Lc/d/a/b/c;->s(Lc/d/a/b/c;)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/c$b;->s:Z

    return-object p0
.end method

.method public y(Lc/d/a/b/j/d;)Lc/d/a/b/c$b;
    .locals 0

    iput-object p1, p0, Lc/d/a/b/c$b;->j:Lc/d/a/b/j/d;

    return-object p0
.end method

.method z(Z)Lc/d/a/b/c$b;
    .locals 0

    iput-boolean p1, p0, Lc/d/a/b/c$b;->s:Z

    return-object p0
.end method
