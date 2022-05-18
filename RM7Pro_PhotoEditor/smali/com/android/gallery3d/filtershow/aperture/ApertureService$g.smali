.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;->B(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Messenger what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApertureService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "depth_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/e/b;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancle: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "this pic load fail cancle"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p1, v4}, Landroid/app/Service;->stopForeground(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "apert_algorithm_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/aperture/a;->f(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/aperture/a;->f(Z)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    const-string v2, "depth_data_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->o(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;

    invoke-direct {v8}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;-><init>()V

    const-string v0, "apert_yuv_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->s(I)V

    const-string v0, "apert_yuv_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->r(I)V

    const-string v0, "apert_depth_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->e(I)V

    const-string v0, "apert_depth_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->d(I)V

    const-string v0, "apert_image_rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->q(I)V

    const-string v0, "apert_focus_length"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->c(F)V

    const-string v0, "apert_focus_x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->k(F)V

    const-string v0, "apert_focus_y"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->l(F)V

    const-string v0, "apert_iso"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->m(I)V

    const-string v0, "apert_main_dac_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->n(I)V

    const-string v0, "apert_F_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->j(F)V

    const-string v0, "apert_exposure_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->i(F)V

    const-string v0, "key_skin_smooth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->g(I)V

    const-string v0, "key_skin_tone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->h(I)V

    const-string v0, "key_face_slime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->f(I)V

    const-string v0, "apert_bokeh_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->b(I)V

    const-string v0, "apert_bokeh_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->a(I)V

    const-string v0, "key_mirror"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->o(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "key_ratio"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->p(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "messenger receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/depth.yuv"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/0.yuv"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)V

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->p(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V

    :cond_6
    :goto_1
    return-void
.end method
