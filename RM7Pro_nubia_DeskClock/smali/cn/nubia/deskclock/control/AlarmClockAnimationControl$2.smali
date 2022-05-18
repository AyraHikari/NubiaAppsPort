.class Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;
.super Ljava/lang/Object;
.source "AlarmClockAnimationControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->initAnimantionParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

.field final synthetic val$deskClock:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 161
    iput-object p1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    iput-object p2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;->val$deskClock:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;->val$deskClock:Lcn/nubia/deskclock/DeskClock;

    const-class v2, Lcn/nubia/deskclock/activity/AlarmSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;->val$deskClock:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    .line 166
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;->val$deskClock:Lcn/nubia/deskclock/DeskClock;

    const-string v2, "alarmsetting_click"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    return-void
.end method
