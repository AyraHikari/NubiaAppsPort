.class public Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
.super Ljava/lang/Object;
.source "UserActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/UserActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionData"
.end annotation


# instance fields
.field private endMillis:J

.field private eventId:J

.field private extraLong:J

.field private startMillis:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "extraLong"    # J

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p3, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->startMillis:J

    .line 66
    iput-wide p5, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->endMillis:J

    .line 67
    iput-wide p7, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->extraLong:J

    .line 68
    iput-wide p1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->eventId:J

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 62
    iget-wide v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->startMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 62
    iget-wide v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->endMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 62
    iget-wide v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->extraLong:J

    return-wide v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .prologue
    .line 62
    iget-wide v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->eventId:J

    return-wide v0
.end method
