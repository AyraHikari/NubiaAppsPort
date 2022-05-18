.class public Lcn/nubia/calendar/model/CalendarCustomEventModel;
.super Ljava/lang/Object;
.source "CalendarCustomEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mColorItem:Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

.field private mEventId:J

.field private mPicturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mColorItem:Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    invoke-direct {v0}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mColorItem:Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mColorItem:Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mEventId:J

    return-wide v0
.end method

.method public getPicturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mPicturePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mPicturePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setColorItem(Lcn/nubia/calendar/submodule_agenda/view/ColorItem;)V
    .locals 0
    .param p1, "mColorItem"    # Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mColorItem:Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    .line 38
    return-void
.end method

.method public setEventId(J)V
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mEventId:J

    .line 54
    return-void
.end method

.method public setPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "picturePath"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarCustomEventModel;->mPicturePath:Ljava/lang/String;

    .line 46
    return-void
.end method
