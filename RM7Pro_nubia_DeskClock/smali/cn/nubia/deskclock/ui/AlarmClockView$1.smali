.class Lcn/nubia/deskclock/ui/AlarmClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmClockView;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmClockView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmClockView;->initShowNextAlarmPoint()V

    .line 110
    return-void
.end method
