.class Lcn/nubia/deskclock/activity/AlarmSettings$1;
.super Ljava/lang/Object;
.source "AlarmSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/AlarmSettings;->setNextAlarm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmSettings;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmSettings$1;->this$0:Lcn/nubia/deskclock/activity/AlarmSettings;

    iput-object p2, p0, Lcn/nubia/deskclock/activity/AlarmSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 157
    return-void
.end method
