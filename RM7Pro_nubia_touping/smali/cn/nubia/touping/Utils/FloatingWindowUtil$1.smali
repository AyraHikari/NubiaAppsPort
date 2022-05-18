.class Lcn/nubia/touping/Utils/FloatingWindowUtil$1;
.super Landroid/os/Handler;
.source "FloatingWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/FloatingWindowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$1;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    .local v0, "message":I
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$1;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->updateStatus(I)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
