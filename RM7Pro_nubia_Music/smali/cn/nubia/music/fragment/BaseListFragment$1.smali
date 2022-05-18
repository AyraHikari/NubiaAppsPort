.class Lcn/nubia/music/fragment/BaseListFragment$1;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseListFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseListFragment$1;->a:Lcn/nubia/music/fragment/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshData()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment$1;->a:Lcn/nubia/music/fragment/BaseListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseListFragment;->loading()V

    .line 65
    return-void
.end method
