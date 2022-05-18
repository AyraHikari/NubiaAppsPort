.class public interface abstract Lcn/nubia/calendar/CalendarController$EventHandler;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventHandler"
.end annotation


# virtual methods
.method public abstract eventsChanged()V
.end method

.method public abstract getSupportedEventTypes()J
.end method

.method public abstract handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
.end method
