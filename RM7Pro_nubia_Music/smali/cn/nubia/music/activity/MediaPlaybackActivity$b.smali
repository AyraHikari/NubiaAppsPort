.class Lcn/nubia/music/activity/MediaPlaybackActivity$b;
.super Landroid/widget/BaseAdapter;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;

.field private b:[Ljava/lang/CharSequence;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1352
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1353
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->c:Landroid/view/LayoutInflater;

    .line 1354
    iput-object p3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->b:[Ljava/lang/CharSequence;

    .line 1355
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->d:Ljava/lang/CharSequence;

    .line 1359
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1365
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1374
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1383
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1391
    if-nez p2, :cond_0

    .line 1392
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1393
    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$b;Lcn/nubia/music/activity/MediaPlaybackActivity$1;)V

    .line 1395
    const v0, 0x7f100160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;->a:Landroid/widget/TextView;

    .line 1396
    const v0, 0x7f100161

    .line 1397
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;->b:Landroid/widget/TextView;

    .line 1399
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 1405
    :goto_0
    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    return-object p2

    .line 1402
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MediaPlaybackActivity$b$a;

    goto :goto_0
.end method
