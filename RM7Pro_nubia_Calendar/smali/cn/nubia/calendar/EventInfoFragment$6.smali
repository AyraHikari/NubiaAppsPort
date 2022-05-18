.class Lcn/nubia/calendar/EventInfoFragment$6;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 930
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 933
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2700(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    new-instance v3, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 937
    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3000(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3100(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {v3, v4, v5, v0}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 936
    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$2802(Lcn/nubia/calendar/EventInfoFragment;Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/DeleteEventHelper;

    .line 938
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 939
    invoke-virtual {v0, v2}, Lcn/nubia/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 940
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 941
    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$3200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 942
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3302(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 943
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3400(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v6

    const/4 v8, -0x1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$6;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 944
    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3600(Lcn/nubia/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v9

    .line 943
    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_0

    .line 937
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
