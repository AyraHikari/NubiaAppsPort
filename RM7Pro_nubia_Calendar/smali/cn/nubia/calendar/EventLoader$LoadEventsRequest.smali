.class Lcn/nubia/calendar/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcn/nubia/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startDay:I

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "startDay"    # I
    .param p3, "numDays"    # I
    .param p5, "successCallback"    # Ljava/lang/Runnable;
    .param p6, "cancelCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 141
    iput p2, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->startDay:I

    .line 142
    iput p3, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 143
    iput-object p4, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 144
    iput-object p5, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 145
    iput-object p6, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 146
    return-void
.end method


# virtual methods
.method public processRequest(Lcn/nubia/calendar/EventLoader;)V
    .locals 6
    .param p1, "eventLoader"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 149
    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$200(Lcn/nubia/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->startDay:I

    iget v3, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v4, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 150
    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$300(Lcn/nubia/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    .line 149
    invoke-static/range {v0 .. v5}, Lcn/nubia/calendar/model/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 153
    iget v0, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$300(Lcn/nubia/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$000(Lcn/nubia/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$000(Lcn/nubia/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcn/nubia/calendar/EventLoader;)V
    .locals 2
    .param p1, "eventLoader"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 161
    invoke-static {p1}, Lcn/nubia/calendar/EventLoader;->access$000(Lcn/nubia/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method
