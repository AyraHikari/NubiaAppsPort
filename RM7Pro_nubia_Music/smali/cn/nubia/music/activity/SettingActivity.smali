.class public Lcn/nubia/music/activity/SettingActivity;
.super Lcn/nubia/music/activity/BaseActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/SettingActivity$a;,
        Lcn/nubia/music/activity/SettingActivity$b;,
        Lcn/nubia/music/activity/SettingActivity$c;
    }
.end annotation


# static fields
.field private static MAP:[I = null

.field private static final SETTING_AUDIO_DURATION_FILTER:I = 0x5

.field private static final SETTING_AUDIO_SIZE_FILTER:I = 0x6

.field private static final SETTING_AUDIO_TYPE_FILTER:I = 0x7

.field private static SETTING_TOTAL_ITEM:I = 0x0

.field private static final SIZE_FILTER:Ljava/lang/String; = "size_filter"

.field private static final TIMER_FILTER:Ljava/lang/String; = "time_filter"

.field private static final TYPE_FILTER:Ljava/lang/String; = "type_filter"


# instance fields
.field private mListAdapter:Lcn/nubia/music/activity/SettingActivity$b;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    sput v0, Lcn/nubia/music/activity/SettingActivity;->SETTING_TOTAL_ITEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcn/nubia/music/activity/SettingActivity;->MAP:[I

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcn/nubia/music/activity/SettingActivity;->SETTING_TOTAL_ITEM:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/SettingActivity;ILcn/nubia/music/activity/SettingActivity$a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/SettingActivity;->setDisplayContent(ILcn/nubia/music/activity/SettingActivity$a;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/activity/SettingActivity;->mListView:Landroid/widget/ListView;

    .line 59
    new-instance v0, Lcn/nubia/music/activity/SettingActivity$b;

    invoke-direct {v0, p0, p0}, Lcn/nubia/music/activity/SettingActivity$b;-><init>(Lcn/nubia/music/activity/SettingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SettingActivity;->mListAdapter:Lcn/nubia/music/activity/SettingActivity$b;

    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/SettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/SettingActivity;->mListAdapter:Lcn/nubia/music/activity/SettingActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/activity/SettingActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/music/activity/SettingActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/SettingActivity$c;-><init>(Lcn/nubia/music/activity/SettingActivity;Lcn/nubia/music/activity/SettingActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/music/activity/SettingActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    return-void
.end method

.method private setDisplayContent(ILcn/nubia/music/activity/SettingActivity$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    sget-object v0, Lcn/nubia/music/activity/SettingActivity;->MAP:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 168
    :pswitch_0
    const-string v0, "time_filter"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 169
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 173
    :goto_1
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0b010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_1

    .line 176
    :pswitch_1
    const-string v0, "size_filter"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 177
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 182
    :goto_2
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0b010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_2

    .line 186
    :pswitch_2
    const-string v0, "type_filter"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 187
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 191
    :goto_3
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p2, Lcn/nubia/music/activity/SettingActivity$a;->b:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_3

    .line 166
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 35
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SettingActivity;->setContentView(I)V

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/music/activity/SettingActivity;->MAP:[I

    .line 41
    sput v1, Lcn/nubia/music/activity/SettingActivity;->SETTING_TOTAL_ITEM:I

    .line 42
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SettingActivity;->setTitle(I)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/music/activity/SettingActivity;->initView()V

    .line 44
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onStart()V

    .line 50
    return-void
.end method
