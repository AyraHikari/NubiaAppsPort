.class public Lcn/nubia/calendar/CalendarController$EventInfo;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field private static final ALL_DAY_MASK:J = 0x100L

.field private static final ATTENDEE_STATUS_ACCEPTED_MASK:I = 0x2

.field private static final ATTENDEE_STATUS_DECLINED_MASK:I = 0x4

.field private static final ATTENDEE_STATUS_NONE_MASK:I = 0x1

.field private static final ATTENDEE_STATUS_TENTATIVE_MASK:I = 0x8

.field private static final ATTENTEE_STATUS_MASK:J = 0xffL


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public endTime:Landroid/text/format/Time;

.field public eventType:J

.field public extraLong:J

.field public id:J

.field public query:Ljava/lang/String;

.field public selectedTime:Landroid/text/format/Time;

.field public startTime:Landroid/text/format/Time;

.field public viewType:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildViewExtraLong(IZ)J
    .locals 8
    .param p0, "response"    # I
    .param p1, "allDay"    # Z

    .prologue
    const-wide/16 v6, 0x1

    .line 255
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x100

    .line 257
    .local v0, "extra":J
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 271
    :pswitch_0
    const-string v2, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attendee response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    or-long/2addr v0, v6

    .line 275
    :goto_1
    return-wide v0

    .line 255
    .end local v0    # "extra":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 259
    .restart local v0    # "extra":J
    :pswitch_1
    or-long/2addr v0, v6

    .line 260
    goto :goto_1

    .line 262
    :pswitch_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 263
    goto :goto_1

    .line 265
    :pswitch_3
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 266
    goto :goto_1

    .line 268
    :pswitch_4
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 269
    goto :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getResponse()I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 250
    :goto_0
    :pswitch_0
    return v1

    .line 237
    :cond_0
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v0, v4

    .line 238
    .local v0, "response":I
    packed-switch v0, :pswitch_data_0

    .line 248
    :pswitch_1
    const-string v1, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attendee response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 250
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 242
    goto :goto_0

    .line 244
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 246
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public isAllDay()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-wide v2, p0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "CalendarController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal call to isAllDay , wrong event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
