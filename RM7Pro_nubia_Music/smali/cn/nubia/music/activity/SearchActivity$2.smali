.class Lcn/nubia/music/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryTextChange -- newText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SearchActivity;->access$102(Lcn/nubia/music/activity/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SearchActivity;->access$200(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/music/fragment/QuickSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SearchActivity;->access$200(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/music/fragment/QuickSearchFragment;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/activity/SearchActivity;->changeFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 141
    :goto_0
    return v2

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SearchActivity;->access$200(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/music/fragment/QuickSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->startSearch()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryTextSubmit -- query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    const-string v1, "input_method"

    .line 124
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SearchActivity;->access$000(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity$2;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SearchActivity;->access$000(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
