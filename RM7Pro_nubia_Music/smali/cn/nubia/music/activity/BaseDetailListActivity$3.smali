.class Lcn/nubia/music/activity/BaseDetailListActivity$3;
.super Ljava/lang/Object;
.source "BaseDetailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$3;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$3;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 94
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$3;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$3;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 96
    return-void
.end method
