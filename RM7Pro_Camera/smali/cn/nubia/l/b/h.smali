.class public Lcn/nubia/l/b/h;
.super Lcn/nubia/l/b/a;
.source "SourceFile"


# instance fields
.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;[BIIIZ)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcn/nubia/l/b/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/l/b/h;->d:[B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/nubia/l/b/h;->e:I

    .line 19
    iput v0, p0, Lcn/nubia/l/b/h;->f:I

    .line 20
    iput-boolean v0, p0, Lcn/nubia/l/b/h;->g:Z

    .line 24
    iput-object p1, p0, Lcn/nubia/l/b/h;->b:Landroid/net/Uri;

    .line 25
    iput-object p2, p0, Lcn/nubia/l/b/h;->d:[B

    .line 26
    iput p3, p0, Lcn/nubia/l/b/h;->c:I

    .line 27
    iput p4, p0, Lcn/nubia/l/b/h;->e:I

    .line 28
    iput p5, p0, Lcn/nubia/l/b/h;->f:I

    .line 29
    iput-boolean p6, p0, Lcn/nubia/l/b/h;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/l/a/a;
    .locals 5

    .line 34
    iget-object v0, p0, Lcn/nubia/l/b/h;->a:Lcn/nubia/l/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/b/h;->a:Lcn/nubia/l/a/b;

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->a()I

    move-result v0

    .line 39
    iget-object v2, p0, Lcn/nubia/l/b/h;->d:[B

    if-eqz v2, :cond_1

    .line 40
    iget v1, p0, Lcn/nubia/l/b/h;->e:I

    iget v3, p0, Lcn/nubia/l/b/h;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/l/c/a;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v0

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v4, 0x1

    .line 42
    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    :cond_1
    iget-object v2, p0, Lcn/nubia/l/b/h;->b:Landroid/net/Uri;

    iget v3, p0, Lcn/nubia/l/b/h;->c:I

    iget-boolean v4, p0, Lcn/nubia/l/b/h;->g:Z

    invoke-static {v2, v1, v3, v0, v4}, Lcn/nubia/l/a/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;

    move-result-object v0

    return-object v0
.end method
