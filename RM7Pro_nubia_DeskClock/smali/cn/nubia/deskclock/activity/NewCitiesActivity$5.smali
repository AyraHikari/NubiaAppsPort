.class Lcn/nubia/deskclock/activity/NewCitiesActivity$5;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;
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
    .line 451
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 455
    const-string v0, "NewCitiesActivity"

    const-string v1, "mOnCloseListener "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0, v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$900(Lcn/nubia/deskclock/activity/NewCitiesActivity;Z)V

    .line 460
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1000(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 462
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1200(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    .line 463
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1300(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 464
    return v2
.end method
