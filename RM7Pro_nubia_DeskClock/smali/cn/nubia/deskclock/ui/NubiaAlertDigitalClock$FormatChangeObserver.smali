.class Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "NubiaAlertDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->access$200(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;->this$0:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 117
    return-void
.end method
