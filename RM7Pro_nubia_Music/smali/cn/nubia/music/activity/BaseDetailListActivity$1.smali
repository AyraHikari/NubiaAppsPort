.class Lcn/nubia/music/activity/BaseDetailListActivity$1;
.super Ljava/lang/Object;
.source "BaseDetailListActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 83
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$1;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$1;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 87
    return-void
.end method
