.class Lcn/nubia/deskclock/AlarmKlaxon$6;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 456
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$6;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iput-object p2, p0, Lcn/nubia/deskclock/AlarmKlaxon$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/AlarmKlaxon$6;->val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$6;->val$mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/model/Alarms;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 460
    return-void
.end method
