.class Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mEndDay:I

.field mEventEndTimeMilli:J

.field final mEventId:J

.field mEventStartTimeMilli:J

.field final mInstanceId:J

.field final mPosition:I


# direct methods
.method constructor <init>(IIJJJJZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "endDay"    # I
    .param p3, "id"    # J
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "instanceId"    # J
    .param p11, "allDay"    # Z

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 632
    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 633
    iput-wide p3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    .line 634
    iput-wide p5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    .line 635
    iput-wide p7, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 636
    iput-wide p9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    .line 637
    iput-boolean p11, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    .line 638
    return-void
.end method
