.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;
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
    .line 192
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-virtual {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$600(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$300(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
