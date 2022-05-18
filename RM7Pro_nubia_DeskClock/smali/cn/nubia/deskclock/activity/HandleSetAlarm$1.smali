.class final Lcn/nubia/deskclock/activity/HandleSetAlarm$1;
.super Ljava/lang/Object;
.source "HandleSetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/HandleSetAlarm;->dismissAlarmInstance(Lcn/nubia/deskclock/model/Alarm;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$instance:Lcn/nubia/deskclock/model/Alarm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;->val$instance:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 536
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;->val$instance:Lcn/nubia/deskclock/model/Alarm;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcn/nubia/deskclock/model/Alarms;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 537
    return-void
.end method
