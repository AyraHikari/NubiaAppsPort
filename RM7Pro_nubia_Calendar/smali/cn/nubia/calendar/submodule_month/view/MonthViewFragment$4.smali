.class Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;
.super Ljava/lang/Object;
.source "MonthViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 901
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 904
    monitor-enter p0

    .line 905
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1400(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/CursorLoader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 906
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :goto_0
    return-void

    .line 909
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V

    .line 910
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1702(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 911
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/CursorLoader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1700(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 912
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/CursorLoader;->startLoading()V

    .line 913
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/CursorLoader;->onContentChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
