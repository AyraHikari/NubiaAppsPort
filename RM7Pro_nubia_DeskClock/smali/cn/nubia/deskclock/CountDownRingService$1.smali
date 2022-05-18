.class Lcn/nubia/deskclock/CountDownRingService$1;
.super Landroid/os/Handler;
.source "CountDownRingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/CountDownRingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountDownRingService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService$1;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$1;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService$1;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v1}, Lcn/nubia/deskclock/CountDownRingService;->access$000(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/CountDownRingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$1;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService$1;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v1}, Lcn/nubia/deskclock/CountDownRingService;->access$100(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/CountDownRingService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
    .end packed-switch
.end method
