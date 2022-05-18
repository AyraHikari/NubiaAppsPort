.class Lcn/nubia/music/activity/SelectMusicFolderActivity$c;
.super Ljava/lang/Object;
.source "SelectMusicFolderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SelectMusicFolderActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/activity/SelectMusicFolderActivity$1;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 368
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a(Lcn/nubia/music/activity/SelectMusicFolderActivity$b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    iget-boolean v0, v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a:Z

    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a(Lcn/nubia/music/activity/SelectMusicFolderActivity$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 373
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 374
    iget-wide v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 375
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iput-wide v6, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    .line 381
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$400(Lcn/nubia/music/activity/SelectMusicFolderActivity;J)V

    .line 384
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 377
    :cond_4
    iget-wide v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iput-wide v4, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    goto :goto_1
.end method
