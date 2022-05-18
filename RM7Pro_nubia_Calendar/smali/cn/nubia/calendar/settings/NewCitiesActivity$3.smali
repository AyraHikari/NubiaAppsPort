.class Lcn/nubia/calendar/settings/NewCitiesActivity$3;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;->initActionBar()V
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
    .line 544
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$102(Lcn/nubia/calendar/settings/NewCitiesActivity;Z)Z

    .line 548
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->setupSearchView()V

    .line 549
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setClickable(Z)V

    .line 550
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestFocus()Z

    .line 551
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->openSoftInputWindow()V

    .line 552
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 553
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$3;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1300(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    return-void
.end method
