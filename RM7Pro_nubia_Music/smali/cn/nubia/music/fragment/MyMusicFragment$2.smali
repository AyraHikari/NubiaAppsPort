.class Lcn/nubia/music/fragment/MyMusicFragment$2;
.super Ljava/lang/Object;
.source "MyMusicFragment.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/MyMusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyMusicFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyMusicFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/music/fragment/MyMusicFragment$2;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$2;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment$2;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$2;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/MyMusicFragment;->doMorePopup(I)V

    .line 173
    :cond_0
    return-void
.end method
