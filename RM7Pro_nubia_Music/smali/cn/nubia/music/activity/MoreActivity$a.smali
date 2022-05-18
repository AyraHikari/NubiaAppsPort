.class Lcn/nubia/music/activity/MoreActivity$a;
.super Landroid/widget/BaseAdapter;
.source "MoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MoreActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/MoreActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcn/nubia/music/activity/MoreActivity$a;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 318
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity$a;->b:Landroid/view/LayoutInflater;

    .line 319
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcn/nubia/music/activity/MoreActivity;->access$800()[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/nubia/music/activity/MoreActivity;->access$800()[I

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcn/nubia/music/activity/MoreActivity;->access$800()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 339
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 345
    .line 346
    if-nez p2, :cond_0

    .line 347
    new-instance v1, Lcn/nubia/music/activity/MoreActivity$b;

    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$a;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-direct {v1, v0, v2}, Lcn/nubia/music/activity/MoreActivity$b;-><init>(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/music/activity/MoreActivity$1;)V

    .line 348
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030035

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 349
    const v0, 0x7f1000bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f1000c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    .line 351
    const v0, 0x7f1000c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    .line 352
    const v0, 0x7f1000c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    .line 353
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 369
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity$a;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/activity/MoreActivity;->access$1000(Lcn/nubia/music/activity/MoreActivity;ILcn/nubia/music/activity/MoreActivity$b;)V

    .line 371
    return-object p2

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/music/activity/MoreActivity$b;

    if-eqz v1, :cond_1

    .line 359
    check-cast v0, Lcn/nubia/music/activity/MoreActivity$b;

    goto :goto_0

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView default error position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method
