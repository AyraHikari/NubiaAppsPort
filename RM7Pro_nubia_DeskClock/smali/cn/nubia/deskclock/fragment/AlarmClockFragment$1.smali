.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;
.super Landroid/os/AsyncTask;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$300(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/deskclock/model/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$202(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 164
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$200(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    new-instance v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v2}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$300(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$200(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$002(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .line 170
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$400(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$502(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 172
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    iget-object v0, v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    iget-object v0, v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$400(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
