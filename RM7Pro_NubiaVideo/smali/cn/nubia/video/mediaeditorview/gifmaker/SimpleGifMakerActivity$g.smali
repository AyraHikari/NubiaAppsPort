.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/gifmaker/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->e:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->G(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->G(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->H(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;I)I

    .line 8
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->I(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;I)I

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->g()F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->L(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;F)F

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->K(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->i(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;F)F

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->f()I

    move-result v0

    .line 12
    sget v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->K(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->j(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->setScreenOrintation(Z)V

    .line 15
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->K(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F

    move-result v1

    sget v2, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->v:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->K(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    .line 17
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->l(F)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x5a

    const/16 v5, 0x78

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->m(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    .line 20
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/util/List;)V

    return-void

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    return-void

    .line 22
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->e:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    return-void
.end method
