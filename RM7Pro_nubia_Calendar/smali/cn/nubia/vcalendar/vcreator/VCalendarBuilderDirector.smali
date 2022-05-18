.class public Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;
.super Ljava/lang/Object;
.source "VCalendarBuilderDirector.java"


# instance fields
.field mAttendeeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field mRemidnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field mVCalendarPropeties:Landroid/content/ContentValues;

.field mVEventProperties:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "vCalendarPro"    # Landroid/content/ContentValues;
    .param p2, "vEventPro"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "reminderProList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local p4, "attendeeProList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mVCalendarPropeties:Landroid/content/ContentValues;

    .line 21
    iput-object p2, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mVEventProperties:Landroid/content/ContentValues;

    .line 22
    iput-object p3, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mRemidnerList:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mAttendeeList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public build(Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "builder"    # Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->beginVCalendar()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 29
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mVCalendarPropeties:Landroid/content/ContentValues;

    invoke-virtual {p1, v1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->createVCalendarProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 32
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->beginVEevent()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 33
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mVEventProperties:Landroid/content/ContentValues;

    invoke-virtual {p1, v1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->createVEeventProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 34
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mAttendeeList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mAttendeeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 38
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->createVEeventAtteedee(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    goto :goto_0

    .line 43
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mRemidnerList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->mRemidnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 46
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->beginVAlarm()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 47
    invoke-virtual {p1, v0}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->createVAlarmProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 48
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->endVAlarm()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    goto :goto_1

    .line 52
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->endVEevent()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 53
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->endVCalendar()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;

    .line 54
    invoke-virtual {p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->getResult()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
