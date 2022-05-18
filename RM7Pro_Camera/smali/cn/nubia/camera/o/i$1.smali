.class Lcn/nubia/camera/o/i$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/i;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {p1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/o/i$a;->e()V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcn/nubia/camera/o/i$a;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {p1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/o/i$a;->i()V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcn/nubia/camera/o/i$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 50
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/camera/o/i$a;->c(I)V

    goto :goto_0

    :pswitch_5
    const-string p1, "ElectronicOjbect"

    const-string v0, "mListener.onEleStart(CALLBACK_SUCCESS)"

    .line 56
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {p1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/camera/o/i$a;->b(I)V

    goto :goto_0

    .line 60
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/camera/o/i$1;->a:Lcn/nubia/camera/o/i;

    invoke-static {p1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/camera/o/i$a;->d(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
