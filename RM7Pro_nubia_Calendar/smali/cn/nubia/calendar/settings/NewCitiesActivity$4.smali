.class Lcn/nubia/calendar/settings/NewCitiesActivity$4;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


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
    .line 761
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$202(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 770
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1900(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    .line 772
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 775
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method
