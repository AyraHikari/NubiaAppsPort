.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeItem"
.end annotation


# instance fields
.field public mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public mContactLookupUri:Landroid/net/Uri;

.field public mRemoved:Z

.field public mUpdateCounts:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .param p2, "badge"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 246
    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 247
    return-void
.end method
