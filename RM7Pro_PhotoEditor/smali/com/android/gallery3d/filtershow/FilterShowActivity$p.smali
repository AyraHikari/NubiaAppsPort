.class Lcom/android/gallery3d/filtershow/FilterShowActivity$p;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->a:I

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    aget-object p1, p1, v3

    sget-object v4, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G0:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->a:I

    invoke-virtual {v1, p1, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/x;->l0(Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    aget-object p1, p1, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->a:I

    invoke-virtual {v1, p1, v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->k0(Landroid/net/Uri;I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-array p1, v2, [Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->k()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/e/b;->w(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->H0(Lcom/android/gallery3d/filtershow/imageshow/x;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "PhotoEditor"

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result p1

    if-ge p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fsa false reload   mSelectedImageUri:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p1, "ERROR!!!  FSA loadBitmapTask onpostexecut  getRenderScriptContext null"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result p1

    if-ge p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/pipeline/c;->g(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FSA reload rs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M()V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v4, 0x7f080185

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    const-string p1, "ERROR!!!! loadbitmaptask onpostexecut largebitmap is null"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result p1

    if-ge p1, v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FSA reload lb "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M()V

    :goto_2
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->r(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->j()V

    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$p;)Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->F0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->u()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P1()V

    :goto_3
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.TINY_PLANET"

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->d()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_9
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs c([Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->a([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;->c([Ljava/lang/Boolean;)V

    return-void
.end method
