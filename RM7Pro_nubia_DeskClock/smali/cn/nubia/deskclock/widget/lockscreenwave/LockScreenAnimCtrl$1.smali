.class Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;
.super Landroid/os/Handler;
.source "LockScreenAnimCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-static {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->access$000(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-static {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->access$100(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-static {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->access$200(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-static {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->access$300(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
