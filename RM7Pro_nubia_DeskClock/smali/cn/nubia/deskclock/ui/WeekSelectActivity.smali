.class public Lcn/nubia/deskclock/ui/WeekSelectActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "WeekSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

.field private mAlarmRepeatWeek:[Ljava/lang/String;

.field private mSelectedDayIndex:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private getListItems([Ljava/lang/CharSequence;[Z)Ljava/util/ArrayList;
    .locals 6
    .param p1, "entries"    # [Ljava/lang/CharSequence;
    .param p2, "index1"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "entry"

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    aget-boolean v3, p2, v0

    if-ne v3, v5, :cond_0

    .line 98
    const-string v3, "checked"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const-string v3, "checked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method private saveAndFinish()V
    .locals 4

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "alarm_repeat_selected_index"

    iget-object v3, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mAdapter:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    .line 232
    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->getSelectedDayIndex()[Z

    move-result-object v3

    .line 231
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    const/16 v2, 0x1f6

    invoke-virtual {p0, v2, v1}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->finish()V

    .line 236
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 68
    const v2, 0x7f04007d

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->setContentView(I)V

    .line 69
    const v2, 0x7f12016c

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 70
    const v2, 0x7f12016b

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 72
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mSelectedDayIndex:[Z

    if-nez v2, :cond_0

    .line 73
    const/4 v2, 0x7

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mSelectedDayIndex:[Z

    .line 78
    :cond_0
    new-instance v2, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mAlarmRepeatWeek:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mSelectedDayIndex:[Z

    invoke-direct {p0, v3, v4}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->getListItems([Ljava/lang/CharSequence;[Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;-><init>(Lcn/nubia/deskclock/ui/WeekSelectActivity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mAdapter:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    .line 80
    iget-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mAdapter:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0, v5, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    :cond_1
    return-void

    .line 73
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->saveAndFinish()V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->GrayStatusBar(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string v2, "alarm_repeat_selected_index"

    .line 59
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mSelectedDayIndex:[Z

    .line 62
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity;->mAlarmRepeatWeek:[Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->updateLayout()V

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity;->saveAndFinish()V

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
