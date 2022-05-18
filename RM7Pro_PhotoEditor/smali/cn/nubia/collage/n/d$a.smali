.class Lcn/nubia/collage/n/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/d;->h(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcn/nubia/collage/n/d;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/d;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    iput-object p2, p0, Lcn/nubia/collage/n/d$a;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v2, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v2}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v2

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v3}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v3

    aget v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v3}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v3}, Lcn/nubia/collage/n/d;->b(Lcn/nubia/collage/n/d;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v3}, Lcn/nubia/collage/n/d;->b(Lcn/nubia/collage/n/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v4}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/collage/n/d$a;->a:Landroid/content/res/Resources;

    iget-object v6, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v6}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filters236 mFxBitmapMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v5}, Lcn/nubia/collage/n/d;->b(Lcn/nubia/collage/n/d;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/collage/n/d$a;->b:Lcn/nubia/collage/n/d;

    invoke-static {v6}, Lcn/nubia/collage/n/d;->a(Lcn/nubia/collage/n/d;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhotoEditor"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
