.class Lcn/nubia/calendar/EventInfoFragment$3;
.super Landroid/os/Handler;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$3;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$3;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$3;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->access$700(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method
