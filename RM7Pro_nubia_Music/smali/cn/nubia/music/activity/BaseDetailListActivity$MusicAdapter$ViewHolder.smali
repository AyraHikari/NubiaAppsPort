.class public Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BaseDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field box:Landroid/widget/CheckBox;

.field public image:Landroid/widget/ImageView;

.field playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

.field public subtitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->this$1:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
