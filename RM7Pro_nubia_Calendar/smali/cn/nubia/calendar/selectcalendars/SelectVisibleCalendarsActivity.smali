.class public Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;
.super Lcn/nubia/calendar/AbstractCalendarActivity;
.source "SelectVisibleCalendarsActivity.java"


# static fields
.field private static final CODE_READCALENDAR_EditEventFragment:I = 0x1


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/calendar/AbstractCalendarActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 85
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 87
    return-void
.end method


# virtual methods
.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f110167

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f0300ba

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 53
    .local v1, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v1, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    invoke-static {p0, v4}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 62
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 65
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    const v3, 0x7f03003e

    invoke-direct {v2, v3}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>(I)V

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 68
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 69
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v2, v5

    invoke-static {p0, v2, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 141
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->finish()V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const v3, 0x7f110167

    .line 91
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 92
    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 95
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    const v2, 0x7f03003e

    invoke-direct {v1, v2}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 98
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 99
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 100
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 101
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 103
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;->showPermissionDialog()V

    goto :goto_0
.end method
