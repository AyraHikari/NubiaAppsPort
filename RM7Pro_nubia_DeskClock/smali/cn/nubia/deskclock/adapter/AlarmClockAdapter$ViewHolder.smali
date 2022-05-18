.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field alarmInfo:Landroid/widget/TextView;

.field alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field checkBox:Landroid/widget/CheckBox;

.field digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p2, "x1"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V

    return-void
.end method
