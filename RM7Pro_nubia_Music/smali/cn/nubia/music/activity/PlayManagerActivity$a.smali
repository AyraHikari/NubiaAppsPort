.class Lcn/nubia/music/activity/PlayManagerActivity$a;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PlayManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlayManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayManagerActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/PlayManagerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    .line 165
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyFragmentPagerAdapter getItem() index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 181
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlayManagerActivity;->access$100(Lcn/nubia/music/activity/PlayManagerActivity;I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    new-instance v1, Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/NowPlayingListFragment;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlayManagerActivity;->access$202(Lcn/nubia/music/activity/PlayManagerActivity;Lcn/nubia/music/fragment/NowPlayingListFragment;)Lcn/nubia/music/fragment/NowPlayingListFragment;

    .line 175
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlayManagerActivity;->access$200(Lcn/nubia/music/activity/PlayManagerActivity;)Lcn/nubia/music/fragment/NowPlayingListFragment;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlayManagerActivity;->access$100(Lcn/nubia/music/activity/PlayManagerActivity;I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    new-instance v1, Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/PlayHistoryFragment;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlayManagerActivity;->access$302(Lcn/nubia/music/activity/PlayManagerActivity;Lcn/nubia/music/fragment/PlayHistoryFragment;)Lcn/nubia/music/fragment/PlayHistoryFragment;

    .line 179
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$a;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlayManagerActivity;->access$300(Lcn/nubia/music/activity/PlayManagerActivity;)Lcn/nubia/music/fragment/PlayHistoryFragment;

    move-result-object v0

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
