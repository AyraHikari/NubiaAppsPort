.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventBundle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field end:J

.field id:J

.field start:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->id:J

    .line 1494
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->start:J

    .line 1495
    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;->end:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;

    .prologue
    .line 1491
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$EventBundle;-><init>()V

    return-void
.end method
