.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Y(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->a:Z

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->n(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/g;->t(Landroid/content/Context;)Lc/b/a/j;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc/b/a/j;->t(Ljava/lang/String;)Lc/b/a/d;

    move-result-object v0

    new-instance v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h$a;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;)V

    invoke-virtual {v0, v2}, Lc/b/a/c;->C(Lc/b/a/r/d;)Lc/b/a/c;

    sget v2, Lcn/nubia/video/mediaeditorview/d;->c:I

    .line 3
    invoke-virtual {v0, v2}, Lc/b/a/c;->F(I)Lc/b/a/c;

    invoke-virtual {v0, v2}, Lc/b/a/c;->A(I)Lc/b/a/c;

    invoke-virtual {v0, v1}, Lc/b/a/c;->H(Z)Lc/b/a/c;

    sget-object v1, Lc/b/a/n/i/b;->d:Lc/b/a/n/i/b;

    .line 4
    invoke-virtual {v0, v1}, Lc/b/a/c;->z(Lc/b/a/n/i/b;)Lc/b/a/c;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lc/b/a/r/h/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/e;->l(Lc/b/a/r/h/j;)Lc/b/a/r/h/j;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->n(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/g;->t(Landroid/content/Context;)Lc/b/a/j;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc/b/a/j;->t(Ljava/lang/String;)Lc/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/d;->J()Lc/b/a/b;

    move-result-object v0

    sget v2, Lcn/nubia/video/mediaeditorview/d;->c:I

    invoke-virtual {v0, v2}, Lc/b/a/a;->C(I)Lc/b/a/a;

    .line 6
    invoke-virtual {v0, v2}, Lc/b/a/a;->z(I)Lc/b/a/a;

    invoke-virtual {v0, v1}, Lc/b/a/a;->E(Z)Lc/b/a/a;

    sget-object v1, Lc/b/a/n/i/b;->d:Lc/b/a/n/i/b;

    .line 7
    invoke-virtual {v0, v1}, Lc/b/a/a;->y(Lc/b/a/n/i/b;)Lc/b/a/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/a;->k(Landroid/widget/ImageView;)Lc/b/a/r/h/j;

    :goto_0
    return-void
.end method
