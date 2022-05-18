.class Lcn/nubia/music/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/SearchActivity;->initView()V
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
    .line 81
    iput-object p1, p0, Lcn/nubia/music/activity/SearchActivity$1;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$1;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SearchActivity;->access$000(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 86
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity$1;->a:Lcn/nubia/music/activity/SearchActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SearchActivity;->finish()V

    .line 87
    return-void
.end method
