.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment;->deleteSelectedAlarm()V
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
    .line 335
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$600(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->destroyActionMode()V

    .line 340
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$700(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 341
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$602(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Z)Z

    .line 342
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$802(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Z)Z

    .line 356
    :cond_0
    return-void
.end method
