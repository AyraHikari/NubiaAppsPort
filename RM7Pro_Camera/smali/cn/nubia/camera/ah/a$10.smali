.class Lcn/nubia/camera/ah/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->d(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->d(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->f(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->g(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->h(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->i(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->f(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->g(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->h(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/ah/a$10;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->i(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
