.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 398
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Z)Z

    .line 403
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 404
    .local v0, "mQuerySpec":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 406
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 409
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    .line 410
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Z)Z

    .line 411
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 417
    .local v0, "mQuerySpec":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 422
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v1, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    .line 423
    return-void
.end method
