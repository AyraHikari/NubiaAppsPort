.class Lcn/nubia/calendar/settings/NewCitiesActivity$5;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 778
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 782
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0, v2}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$2000(Lcn/nubia/calendar/settings/NewCitiesActivity;Z)V

    .line 786
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$2100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 789
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 791
    return v2
.end method
