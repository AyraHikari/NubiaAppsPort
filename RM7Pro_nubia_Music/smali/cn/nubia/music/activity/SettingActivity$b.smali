.class Lcn/nubia/music/activity/SettingActivity$b;
.super Landroid/widget/BaseAdapter;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SettingActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/SettingActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/music/activity/SettingActivity$b;->a:Lcn/nubia/music/activity/SettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    iput-object p2, p0, Lcn/nubia/music/activity/SettingActivity$b;->b:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcn/nubia/music/activity/SettingActivity$b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/SettingActivity$b;->c:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcn/nubia/music/activity/SettingActivity;->access$200()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 125
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 149
    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/music/activity/SettingActivity$b;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance v1, Lcn/nubia/music/activity/SettingActivity$a;

    iget-object v0, p0, Lcn/nubia/music/activity/SettingActivity$b;->a:Lcn/nubia/music/activity/SettingActivity;

    invoke-direct {v1, v0}, Lcn/nubia/music/activity/SettingActivity$a;-><init>(Lcn/nubia/music/activity/SettingActivity;)V

    .line 153
    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/SettingActivity$a;->a:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f1000d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v0, v1, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 159
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/activity/SettingActivity$b;->a:Lcn/nubia/music/activity/SettingActivity;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/activity/SettingActivity;->access$300(Lcn/nubia/music/activity/SettingActivity;ILcn/nubia/music/activity/SettingActivity$a;)V

    .line 160
    return-object p2

    .line 157
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/SettingActivity$a;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcn/nubia/music/activity/SettingActivity;->access$200()I

    move-result v0

    return v0
.end method
