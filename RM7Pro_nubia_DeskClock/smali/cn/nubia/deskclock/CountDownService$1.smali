.class Lcn/nubia/deskclock/CountDownService$1;
.super Landroid/os/Handler;
.source "CountDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/CountDownService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountDownService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountDownService;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownService$1;->this$0:Lcn/nubia/deskclock/CountDownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService$1;->this$0:Lcn/nubia/deskclock/CountDownService;

    invoke-static {v0, p1}, Lcn/nubia/deskclock/CountDownService;->access$000(Lcn/nubia/deskclock/CountDownService;Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService$1;->this$0:Lcn/nubia/deskclock/CountDownService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownService;->access$100(Lcn/nubia/deskclock/CountDownService;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x4b4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
