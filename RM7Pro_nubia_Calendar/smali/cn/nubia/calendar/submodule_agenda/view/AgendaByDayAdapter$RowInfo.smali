.class Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mDay:I

.field final mEventEndTimeMilli:J

.field final mEventId:J

.field final mEventStartTimeMilli:J

.field mFirstDayAfterYesterday:Z

.field final mInstanceId:J

.field mIsNewDay:Z

.field mIsShowBottomLine:Z

.field mIsShowTopLine:Z

.field final mPosition:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "julianDay"    # I

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    .line 605
    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 606
    iput v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 607
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 608
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 609
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 610
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 611
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 612
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 613
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsNewDay:Z

    .line 614
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowTopLine:Z

    .line 615
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowBottomLine:Z

    .line 616
    return-void
.end method

.method constructor <init>(IIIJJJJZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "julianDay"    # I
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .param p10, "instanceId"    # J
    .param p12, "allDay"    # Z

    .prologue
    const/4 v0, 0x0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    .line 590
    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 591
    iput p3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 592
    iput-wide p4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 593
    iput-wide p6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 594
    iput-wide p8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 595
    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 596
    iput-wide p10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 597
    iput-boolean p12, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 598
    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsNewDay:Z

    .line 599
    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowTopLine:Z

    .line 600
    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowBottomLine:Z

    .line 601
    return-void
.end method
