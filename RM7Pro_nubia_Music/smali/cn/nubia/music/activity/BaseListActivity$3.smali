.class Lcn/nubia/music/activity/BaseListActivity$3;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseListActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/music/activity/BaseListActivity$3;->a:Lcn/nubia/music/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity$3;->a:Lcn/nubia/music/activity/BaseListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity$3;->a:Lcn/nubia/music/activity/BaseListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 127
    return-void
.end method
