.class Lcn/nubia/calendar/deftcontroller/UserActionController$WorkHandler;
.super Landroid/os/Handler;
.source "UserActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/UserActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UserActionController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/UserActionController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 223
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 224
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    return-void

    .line 228
    :pswitch_data_0
    .packed-switch 0xbc3
        :pswitch_0
    .end packed-switch
.end method
