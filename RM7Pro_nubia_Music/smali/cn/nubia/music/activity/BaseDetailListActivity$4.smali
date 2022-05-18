.class Lcn/nubia/music/activity/BaseDetailListActivity$4;
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
    .line 98
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$4;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$4;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->finish()V

    .line 102
    return-void
.end method
