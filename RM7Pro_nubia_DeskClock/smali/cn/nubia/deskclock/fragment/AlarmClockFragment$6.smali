.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 410
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->destroyActionMode()V

    goto :goto_0

    .line 418
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$900(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$1000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x7f120106
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
