.class public Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
.super Ljava/lang/Object;
.source "LocalWorkingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewCalendarJob"
.end annotation


# instance fields
.field mIntentAllDay:Z

.field mIntentAttendeeResponse:I

.field mIntentEventEndMillis:J

.field mIntentEventStartMillis:J

.field mJobType:I

.field mViewEventId:J

.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 4
    .param p1, "this$0"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 180
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mJobType:I

    .line 182
    iput-wide v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mViewEventId:J

    .line 183
    iput-wide v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventStartMillis:J

    .line 184
    iput-wide v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventEndMillis:J

    .line 185
    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentAttendeeResponse:I

    .line 186
    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentAllDay:Z

    return-void
.end method
