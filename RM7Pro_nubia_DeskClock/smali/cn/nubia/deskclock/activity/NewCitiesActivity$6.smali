.class Lcn/nubia/deskclock/activity/NewCitiesActivity$6;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;->cancelSearchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 539
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$6;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    const-string v0, "NewCitiesActivity"

    const-string v1, "run: cancelSearchMode"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$6;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$6;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSelection(I)V

    .line 545
    return-void
.end method
