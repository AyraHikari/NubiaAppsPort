.class public Lc/d/a/b/k/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lc/d/a/b/j/e;

.field private final d:Lc/d/a/b/j/d;

.field private final e:Lc/d/a/b/j/h;

.field private final f:Lc/d/a/b/m/b;

.field private final g:Ljava/lang/Object;

.field private final h:Z

.field private final i:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/j/h;Lc/d/a/b/m/b;Lc/d/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/k/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/d/a/b/k/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/d/a/b/k/c;->c:Lc/d/a/b/j/e;

    invoke-virtual {p7}, Lc/d/a/b/c;->C()Lc/d/a/b/j/d;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/k/c;->d:Lc/d/a/b/j/d;

    iput-object p5, p0, Lc/d/a/b/k/c;->e:Lc/d/a/b/j/h;

    iput-object p6, p0, Lc/d/a/b/k/c;->f:Lc/d/a/b/m/b;

    invoke-virtual {p7}, Lc/d/a/b/c;->x()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/k/c;->g:Ljava/lang/Object;

    invoke-virtual {p7}, Lc/d/a/b/c;->H()Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/k/c;->h:Z

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lc/d/a/b/k/c;->i:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p7}, Lc/d/a/b/c;->u()Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lc/d/a/b/k/c;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lc/d/a/b/k/c;->b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lc/d/a/b/k/c;->c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public d()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->i:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public e()Lc/d/a/b/m/b;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->f:Lc/d/a/b/m/b;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lc/d/a/b/j/d;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->d:Lc/d/a/b/j/d;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lc/d/a/b/j/e;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->c:Lc/d/a/b/j/e;

    return-object v0
.end method

.method public k()Lc/d/a/b/j/h;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/k/c;->e:Lc/d/a/b/j/h;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lc/d/a/b/k/c;->h:Z

    return v0
.end method
