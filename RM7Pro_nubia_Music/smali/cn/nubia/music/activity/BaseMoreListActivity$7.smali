.class Lcn/nubia/music/activity/BaseMoreListActivity$7;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:I

.field final synthetic c:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;[JI)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$7;->c:Lcn/nubia/music/activity/BaseMoreListActivity;

    iput-object p2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$7;->a:[J

    iput p3, p0, Lcn/nubia/music/activity/BaseMoreListActivity$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$7;->a:[J

    iget v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$7;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/app/MusicPlayer;->playAll([JIZ)V

    .line 818
    return-void
.end method
