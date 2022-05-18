.class Lcn/nubia/calendar/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcn/nubia/calendar/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/SearchActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-static {v0}, Lcn/nubia/calendar/SearchActivity;->access$000(Lcn/nubia/calendar/SearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-static {v1}, Lcn/nubia/calendar/SearchActivity;->access$100(Lcn/nubia/calendar/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    iget-object v3, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    .line 118
    invoke-static {v3}, Lcn/nubia/calendar/SearchActivity;->access$100(Lcn/nubia/calendar/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity$2;->this$0:Lcn/nubia/calendar/SearchActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/SearchActivity;->invalidateOptionsMenu()V

    .line 120
    return-void
.end method
