.class public Lcn/nubia/video/mediaeditorview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcn/nubia/video/mediaeditorview/n;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcn/nubia/video/mediaeditorview/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/b;->e:Landroid/graphics/Bitmap;

    .line 3
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/b;->a:Lcn/nubia/video/mediaeditorview/n;

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/b;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/b;->a:Lcn/nubia/video/mediaeditorview/n;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/c;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/b;->e:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/b;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/b;->b:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/b;->c:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public c(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/b;->b:I

    .line 2
    iput p2, p0, Lcn/nubia/video/mediaeditorview/b;->c:I

    .line 3
    iput p3, p0, Lcn/nubia/video/mediaeditorview/b;->d:I

    return-void
.end method
