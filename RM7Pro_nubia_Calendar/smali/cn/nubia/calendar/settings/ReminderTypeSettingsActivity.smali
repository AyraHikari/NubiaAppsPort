.class public Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;
.super Landroid/app/Activity;
.source "ReminderTypeSettingsActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v3, 0x7f0300b3

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 21
    iget-object v3, p0, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    .line 22
    iget-object v3, p0, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 25
    iget-object v3, p0, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    iget-object v3, p0, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->show()V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 29
    .local v0, "fragMan":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 30
    .local v1, "fragTran":Landroid/app/FragmentTransaction;
    new-instance v2, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;

    invoke-direct {v2}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;-><init>()V

    .line 31
    .local v2, "rpf":Lcn/nubia/calendar/settings/ReminderPreferenceFragment;
    const v3, 0x1020002

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 32
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 33
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderTypeSettingsActivity;->finish()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
