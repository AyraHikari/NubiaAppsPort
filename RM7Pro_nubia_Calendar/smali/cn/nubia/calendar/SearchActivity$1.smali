.class Lcn/nubia/calendar/SearchActivity$1;
.super Landroid/database/ContentObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/SearchActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/SearchActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/SearchActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/calendar/SearchActivity$1;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity$1;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/SearchActivity;->eventsChanged()V

    .line 110
    return-void
.end method
