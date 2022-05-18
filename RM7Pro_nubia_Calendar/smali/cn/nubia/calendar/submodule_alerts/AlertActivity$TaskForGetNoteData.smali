.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskForGetNoteData"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;->mContext:Landroid/content/Context;

    .line 558
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 563
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 565
    return-void
.end method
