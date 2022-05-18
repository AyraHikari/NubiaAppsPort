.class Lcn/nubia/calendar/EventLoader$ShutdownRequest;
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
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/EventLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/EventLoader$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/calendar/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcn/nubia/calendar/EventLoader;)V
    .locals 0
    .param p1, "eventLoader"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 53
    return-void
.end method

.method public skipRequest(Lcn/nubia/calendar/EventLoader;)V
    .locals 0
    .param p1, "eventLoader"    # Lcn/nubia/calendar/EventLoader;

    .prologue
    .line 56
    return-void
.end method
