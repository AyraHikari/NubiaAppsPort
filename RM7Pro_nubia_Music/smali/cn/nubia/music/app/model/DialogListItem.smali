.class public Lcn/nubia/music/app/model/DialogListItem;
.super Ljava/lang/Object;
.source "DialogListItem.java"


# instance fields
.field public mContents:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    const v1, 0x7f03002b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/model/DialogListItem;->mView:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcn/nubia/music/app/model/DialogListItem;->mView:Landroid/view/View;

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/app/model/DialogListItem;->mContents:Landroid/widget/TextView;

    .line 24
    return-void
.end method
