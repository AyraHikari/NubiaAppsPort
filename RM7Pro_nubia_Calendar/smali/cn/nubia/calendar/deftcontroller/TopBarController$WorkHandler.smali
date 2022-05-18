.class Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;
.super Landroid/os/Handler;
.source "TopBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/TopBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/TopBarController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->access$200(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->access$300(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0xbc3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
