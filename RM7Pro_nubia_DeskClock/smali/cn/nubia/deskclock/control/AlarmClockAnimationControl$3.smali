.class Lcn/nubia/deskclock/control/AlarmClockAnimationControl$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmClockAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 180
    iput-object p1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$3;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$3;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$600(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    .line 184
    return-void
.end method
