.class Lcn/nubia/camera/bb/o$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/o;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 332
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 335
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/bb/l;->a()V

    goto/16 :goto_0

    .line 377
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->h(Lcn/nubia/camera/bb/o;)V

    goto/16 :goto_0

    .line 352
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 355
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/bb/l;->c()V

    .line 358
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1, v1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;Z)Z

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 372
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 373
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/bb/l;->b()V

    goto :goto_0

    .line 361
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v0}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 364
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v0}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v0}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/l;->a(I)V

    goto :goto_0

    .line 343
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 346
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 347
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/bb/l;->d()V

    .line 349
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/bb/o$4;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1, v1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;Z)Z

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
