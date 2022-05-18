.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->U(FLcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

.field final synthetic c:F

.field final synthetic d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Landroid/graphics/Bitmap;Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    iput p4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "%.1fS"

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->w(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
