.class Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;
.super Ljava/lang/Thread;
.source "QuickResponseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field mBody:Ljava/lang/String;

.field mEventId:J

.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;JLjava/lang/String;)V
    .locals 0
    .param p2, "eventId"    # J
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    iput-wide p2, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->mEventId:J

    .line 132
    iput-object p4, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->mEventId:J

    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    invoke-static {v2, v4, v5, v3}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createEmailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, "emailIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-virtual {v2, v0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;-><init>(Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
