.class Lcn/nubia/music/fragment/BaseLetterListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseLetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$1;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$1;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$000(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/ui/ScrollRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->invalidateViews()V

    .line 138
    return-void
.end method
