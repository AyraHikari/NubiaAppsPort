.class Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;
.super Landroid/os/Handler;
.source "AddAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AddAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyBackgroundHandler"
.end annotation


# instance fields
.field private mAddAlarmActivity:Lcn/nubia/deskclock/activity/AddAlarmActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "activity"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 804
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 805
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;->mAddAlarmActivity:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 809
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;->mAddAlarmActivity:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 811
    .local v3, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcn/nubia/deskclock/activity/AddAlarmActivity;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 812
    iget v2, p1, Landroid/os/Message;->what:I

    .line 813
    .local v2, "type":I
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .line 814
    .local v0, "activity":Lcn/nubia/deskclock/activity/AddAlarmActivity;
    packed-switch v2, :pswitch_data_0

    .line 829
    .end local v0    # "activity":Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .end local v2    # "type":I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 831
    return-void

    .line 816
    .restart local v0    # "activity":Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .restart local v2    # "type":I
    :pswitch_1
    invoke-static {v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$900(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V

    goto :goto_0

    .line 819
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/commonui/widget/TimePickerView;

    .line 820
    .local v1, "pickerView":Lcn/nubia/commonui/widget/TimePickerView;
    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$1000(Lcn/nubia/deskclock/activity/AddAlarmActivity;Lcn/nubia/commonui/widget/TimePickerView;)V

    goto :goto_0

    .line 825
    .end local v1    # "pickerView":Lcn/nubia/commonui/widget/TimePickerView;
    :pswitch_3
    invoke-static {v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$1100(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
