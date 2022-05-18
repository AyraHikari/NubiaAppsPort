.class public Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
.super Ljava/lang/Object;
.source "EventColorMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/EventColorMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventColor"
.end annotation


# instance fields
.field public mFill:I

.field public mStroke:I

.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/EventColorMgr;
    .param p2, "fill"    # I
    .param p3, "stroke"    # I

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->access$000()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mFill:I

    .line 56
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->access$100()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mStroke:I

    .line 59
    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mFill:I

    .line 60
    iput p3, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;->mStroke:I

    .line 61
    return-void
.end method
