.class public Lcn/nubia/l/b/c;
.super Lcn/nubia/l/b/a;
.source "SourceFile"


# instance fields
.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcn/nubia/l/b/a;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    .line 19
    iput-object p1, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    .line 20
    iput p2, p0, Lcn/nubia/l/b/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/l/a/a;
    .locals 6

    .line 25
    iget-object v0, p0, Lcn/nubia/l/b/c;->a:Lcn/nubia/l/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/b/c;->a:Lcn/nubia/l/a/b;

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->a()I

    move-result v0

    .line 30
    iget-object v2, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    int-to-float v3, v0

    .line 31
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 32
    iget-object v2, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iget-object v5, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    const/4 v5, 0x1

    .line 32
    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    iput-object v1, p0, Lcn/nubia/l/b/c;->d:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 39
    :cond_1
    iget v2, p0, Lcn/nubia/l/b/c;->c:I

    invoke-static {v1, v2, v0}, Lcn/nubia/l/a/a;->a(Landroid/graphics/Bitmap;II)Lcn/nubia/l/a/a;

    move-result-object v0

    return-object v0
.end method
