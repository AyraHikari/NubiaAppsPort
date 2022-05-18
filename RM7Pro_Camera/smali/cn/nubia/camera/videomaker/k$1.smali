.class Lcn/nubia/camera/videomaker/k$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 403
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/k;->j(Lcn/nubia/camera/videomaker/k;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v2}, Lcn/nubia/camera/videomaker/k;->k(Lcn/nubia/camera/videomaker/k;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v3}, Lcn/nubia/camera/videomaker/k;->l(Lcn/nubia/camera/videomaker/k;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/k;->b(I)V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->h(Lcn/nubia/camera/videomaker/k;)Lcn/nubia/camera/videomaker/k$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/k$a;->h()V

    goto :goto_0

    .line 383
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->e(Lcn/nubia/camera/videomaker/k;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->e(Lcn/nubia/camera/videomaker/k;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 385
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1, v1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 386
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;I)I

    .line 388
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->g(Lcn/nubia/camera/videomaker/k;)V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    .line 374
    invoke-static {v2}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 373
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 376
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;I)I

    .line 378
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->c(Lcn/nubia/camera/videomaker/k;)V

    .line 379
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->d(Lcn/nubia/camera/videomaker/k;)V

    goto :goto_0

    .line 369
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$1;->a:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/k;->g()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
