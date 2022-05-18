.class final Lcn/nubia/collage/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/k;->e(Landroid/content/Context;Lcn/nubia/collage/o/b/k;ILcn/nubia/collage/k$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/o/b/k;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcn/nubia/collage/k$b;


# direct methods
.method constructor <init>(Lcn/nubia/collage/o/b/k;ILandroid/content/Context;Lcn/nubia/collage/k$b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/k$a;->a:Lcn/nubia/collage/o/b/k;

    iput p2, p0, Lcn/nubia/collage/k$a;->b:I

    iput-object p3, p0, Lcn/nubia/collage/k$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcn/nubia/collage/k$a;->d:Lcn/nubia/collage/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lcn/nubia/collage/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/collage/j;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/nubia/collage/k$a;->a:Lcn/nubia/collage/o/b/k;

    iget v2, p0, Lcn/nubia/collage/k$a;->b:I

    invoke-virtual {v1, v2, v0}, Lcn/nubia/collage/o/b/k;->m(ILcn/nubia/collage/j;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcn/nubia/collage/j;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lcn/nubia/collage/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcn/nubia/collage/k$a;->a:Lcn/nubia/collage/o/b/k;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/collage/o/b/k;->c(Landroid/graphics/Canvas;Z)Landroid/graphics/Path;

    invoke-static {v1}, Lcn/nubia/collage/k;->a(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/k$a;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lcn/nubia/collage/k;->d(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;JI)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/collage/k$a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/collage/k$a;->d:Lcn/nubia/collage/k$b;

    invoke-interface {v2, v0}, Lcn/nubia/collage/k$b;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/k$a;->d:Lcn/nubia/collage/k$b;

    const-string v2, "Fail to write file"

    invoke-interface {v0, v2}, Lcn/nubia/collage/k$b;->b(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
