.class public Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
.super Ljava/lang/Object;
.source "DayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/DayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GotoEventInfo"
.end annotation


# instance fields
.field public endTime:Landroid/text/format/Time;

.field public extraLong:J

.field public isSingleTapOrSwitchViews:I

.field public selectedTime:Landroid/text/format/Time;

.field public startTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->selectedTime:Landroid/text/format/Time;

    .line 216
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 217
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->endTime:Landroid/text/format/Time;

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->extraLong:J

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->isSingleTapOrSwitchViews:I

    return-void
.end method
