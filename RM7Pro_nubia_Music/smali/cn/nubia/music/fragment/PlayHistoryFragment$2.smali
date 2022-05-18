.class Lcn/nubia/music/fragment/PlayHistoryFragment$2;
.super Ljava/lang/Object;
.source "PlayHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/PlayHistoryFragment;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/PlayHistoryFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$2;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$2;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getCount()I

    move-result v0

    new-array v1, v0, [J

    .line 202
    array-length v0, v1

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 207
    int-to-long v2, v0

    aput-wide v2, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$2;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/PlayHistoryFragment;->access$100(Lcn/nubia/music/fragment/PlayHistoryFragment;[J)V

    .line 211
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$2;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->access$200(Lcn/nubia/music/fragment/PlayHistoryFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
