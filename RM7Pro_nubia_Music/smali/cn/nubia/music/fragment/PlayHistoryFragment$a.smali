.class Lcn/nubia/music/fragment/PlayHistoryFragment$a;
.super Landroid/database/ContentObserver;
.source "PlayHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/PlayHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/PlayHistoryFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/PlayHistoryFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$a;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    .line 109
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 111
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$a;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->access$000(Lcn/nubia/music/fragment/PlayHistoryFragment;)V

    .line 121
    return-void
.end method
