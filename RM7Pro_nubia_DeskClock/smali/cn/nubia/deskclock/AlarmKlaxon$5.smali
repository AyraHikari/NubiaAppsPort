.class Lcn/nubia/deskclock/AlarmKlaxon$5;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$killed:Z

.field final synthetic val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$starttime:J


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 447
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iput-object p2, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iput-boolean p4, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$killed:Z

    iput-wide p5, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$starttime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 450
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-boolean v2, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$killed:Z

    iget-wide v4, p0, Lcn/nubia/deskclock/AlarmKlaxon$5;->val$starttime:J

    invoke-static {v0, v1, v2, v4, v5}, Lcn/nubia/deskclock/model/Alarms;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 451
    return-void
.end method
