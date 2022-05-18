.class Lcn/nubia/deskclock/fragment/CountdownFragment$1;
.super Landroid/os/Handler;
.source "CountdownFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa1

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$100(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$300(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x231
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
